"""Rewrite unluac's forward `goto lbl` / `::lbl::` (Lua 5.2 syntax) into Lua 5.1.

Flag approach, general for forward gotos that don't cross a loop boundary:
    goto L                          ->  __L = true
    statements the jump skips       ->  if not __L then ... end       (tails after the goto, heads before the label)
    branches the jump enters        ->  if __L or (cond) then ...     (earlier sibling branches: not __L and (cond))
    goto and label in different branches of the same `if` S   ->  that branch body moves after S:
        S: ... elseif __L or (c) then __L_s = true end ; if __L or __L_s then body end
Relies on unluac's one-statement-per-line output (re-indented here first, since unluac occasionally
mis-indents an `end`) and on all locals being declared at function top. Bails (reports) on what it
can't prove safe. Run: python -I degoto.py 'game/*.lua'"""
import re, sys, glob

C = r"(\s*--[^\n]*)?\s*$"
LABEL = re.compile(r"^\s*::(\w+)::\s*$")
IFHEAD = re.compile(r"^\s*if\b.*\bthen" + C)
BRANCH = re.compile(r"^\s*(else|elseif\b.*\bthen)" + C)
LOOP = re.compile(r"^\s*(for\b.*\bdo|while\b.*\bdo|repeat)" + C)
FUNC = re.compile(r"^\s*(local )?function\b.*\)" + C)
OPENER = re.compile(r"^\s*(if\b.*\bthen|for\b.*\bdo|while\b.*\bdo|repeat|do|(local )?function\b.*\))" + C)
CLOSER = re.compile(r"^\s*(end\b|until\b)")
COND = re.compile(r"^(\s*)(if|elseif) (.*) then" + C)

class Bail(Exception): pass

def ind(l): return len(l) - len(l.lstrip())
def nb(lines, rng): return [i for i in rng if lines[i].strip()]

def reindent(text):
    """Re-indent purely from block keywords (unluac occasionally mis-indents an `end`)."""
    out, depth = [], 0
    for l in text.split("\n"):
        s = l.strip()
        if not s: out.append(""); continue
        if re.match(r"^do return end$", s) or re.match(r"^do\b.*\bend$", s): out.append("  " * depth + s); continue
        if CLOSER.match(s) or BRANCH.match(s): depth -= 1
        if depth < 0: raise Bail("reindent")
        out.append("  " * depth + s)
        if OPENER.match(s) or BRANCH.match(s): depth += 1
    return "\n".join(out)

def if_header(lines, i):
    """From an if/elseif/else line, the `if` line of that statement."""
    k = ind(lines[i])
    while True:
        if ind(lines[i]) == k and re.match(r"^\s*if\b", lines[i]): return i
        if i == 0 or (lines[i].strip() and ind(lines[i]) < k) or (ind(lines[i]) == k and lines[i].strip() and not BRANCH.match(lines[i])):
            raise Bail("if_header")
        i -= 1

def stmt_end(lines, i):
    """Last line of the statement starting at line i."""
    if not OPENER.match(lines[i]): return i
    k = ind(lines[i])
    for j in range(i + 1, len(lines)):
        if lines[j].strip() and ind(lines[j]) <= k:
            if ind(lines[j]) < k: raise Bail("stmt_end")
            if BRANCH.match(lines[j]): continue
            if CLOSER.match(lines[j]): return j
            raise Bail("stmt_end2")
    raise Bail("stmt_end3")

def branch_end(lines, h):
    """First line after branch header h at the header's indent (else/elseif/end)."""
    k = ind(lines[h])
    return next(i for i in nb(lines, range(h + 1, len(lines))) if ind(lines[i]) <= k)

def guard(lines, a, b, flag, k):
    """Wrap lines[a:b] (flat at indent k) in `if not flag then ... end`. Returns lines added."""
    if not nb(lines, range(a, b)): return 0
    if any(ind(lines[i]) < k for i in nb(lines, range(a, b))): raise Bail("guard")
    body = [("  " + l if l.strip() else l) for l in lines[a:b]]
    lines[a:b] = [" " * k + f"if not {flag} then"] + body + [" " * k + "end"]
    return 2

def enclosing(lines, i):
    """Header line of the block containing line i (first line above with smaller indent)."""
    k = ind(lines[i])
    for j in range(i - 1, -1, -1):
        if lines[j].strip() and ind(lines[j]) < k: return j
    return -1

def stmt_start(lines, i, k):
    """Start line of the statement at indent k that contains line i."""
    s = next(j for j in range(i, -1, -1) if lines[j].strip() and ind(lines[j]) <= k)
    if ind(lines[s]) != k: raise Bail("stmt_start")
    if BRANCH.match(lines[s]): s = if_header(lines, s)
    return s

def chain(lines, i, fstart):
    """Blocks enclosing line i, innermost first: list of (branch header line, statement start line)."""
    out, cur = [], i
    while True:
        h = enclosing(lines, cur)
        if h <= fstart: return out
        hi = if_header(lines, h) if BRANCH.match(lines[h]) else h
        if FUNC.match(lines[hi]): return out
        out.append((h, hi)); cur = hi

def find_label(lines, name):
    return next(i for i, l in enumerate(lines) if LABEL.match(l) and LABEL.match(l)[1] == name)

def func_start(lines, lab):
    low = ind(lines[lab])
    for i in range(lab - 1, -1, -1):
        if lines[i].strip() and ind(lines[i]) < low:
            low = ind(lines[i])
            if FUNC.match(lines[i]): return i
    return -1

def meeting(lines, g, lab, fstart):
    """Where the goto's and the label's block chains meet.
    Returns (kind, top, stop) with kind in {'branch','shared','function'}; top = indent of the common block;
    stop = the label-chain element (h, hi) at which label-side processing stops (None = process all)."""
    gc, lc = chain(lines, g, fstart), chain(lines, lab, fstart)
    lstmts = {hi: (h, hi) for h, hi in lc}
    for h, hi in gc:
        if LOOP.match(lines[hi]) and hi not in lstmts: raise Bail("loop-exit")
        if hi in lstmts:
            lh, _ = lstmts[hi]
            if lh == h: return "branch", ind(lines[h]) + 2, (lh, hi)
            if LOOP.match(lines[hi]): raise Bail("loop-shared")
            return "shared", ind(lines[hi]), (lh, hi)
    return "function", ind(lines[fstart]) + 2 if fstart >= 0 else 0, None

def rewrite_goto(lines, g, name, fstart):
    """Set the flag at the goto and guard every tail it skips. Returns (kind, top, stop-statement text)."""
    flag = "__" + name
    lab = find_label(lines, name)
    kind, top, stop = meeting(lines, g, lab, fstart)
    lc = chain(lines, lab, fstart)
    lines[g] = " " * ind(lines[g]) + f"{flag} = true"
    cur = g
    while True:
        lab = find_label(lines, name); lc = chain(lines, lab, fstart)  # guards below shift these
        h = enclosing(lines, cur)
        hi = (if_header(lines, h) if BRANCH.match(lines[h]) else h) if h >= 0 else h
        e = stmt_end(lines, cur)
        if kind == "branch" and (h, hi) == stop:
            # same branch as the label chain: guard only up to the label-chain child / label
            child = next((hhi for hh, hhi in lc if enclosing(lines, hhi) == h), None)
            end_at = stmt_start(lines, child, top) if child is not None else lab
            guard(lines, e + 1, end_at, flag, top)
            return
        if h < 0 or ind(lines[h]) < top:
            # reached the common block: guard up to the label-chain root (or the label)
            if kind == "shared": raise Bail("shared-miss")
            root = next((hhi for hh, hhi in lc if ind(lines[hhi]) == top), None)
            guard(lines, e + 1, root if root is not None else lab, flag, top)
            return
        if LOOP.match(lines[hi]) or FUNC.match(lines[hi]): raise Bail("loop-exit2")
        guard(lines, e + 1, branch_end(lines, h), flag, ind(lines[h]) + 2)
        if kind == "shared" and hi == stop[1]:
            lines[hi] = lines[hi].rstrip() + f" -- @shared:{name}"
            return
        cur = hi

def rewrite_label_side(lines, name, fstart, top):
    """Guard heads before the label in each enclosing branch, open those branches on the flag,
    and move the label branch body out of any shared `if`."""
    flag = "__" + name; sel = 0; decls = []
    lab = find_label(lines, name)
    cur = lab
    while True:
        h = enclosing(lines, cur)
        if h < 0 or ind(lines[h]) < top: break
        hi = if_header(lines, h) if BRANCH.match(lines[h]) else h
        if LOOP.match(lines[hi]): raise Bail("loop-enter")
        if not IFHEAD.match(lines[hi]): raise Bail("enter-nonif")
        k = ind(lines[hi])
        added = guard(lines, h + 1, cur, flag, k + 2)
        h += 0; cur += added  # cur is after the guard; h unchanged
        for i in range(hi, h + 1):
            if ind(lines[i]) != k: continue
            m = COND.match(lines[i])
            if not m: continue
            cmt = m[4] or ""
            lines[i] = (f"{m[1]}{m[2]} {flag} or ({m[3]}) then{cmt}" if i == h else f"{m[1]}{m[2]} not {flag} and ({m[3]}) then{cmt}")
        if f"@shared:{name}" in lines[hi]:
            lines[hi] = lines[hi].split(" -- @shared:")[0]
            sel += 1; sflag = f"{flag}_s{sel}"; decls.append(sflag)
            be = branch_end(lines, h)
            body = lines[h + 1:be]
            e = stmt_end(lines, hi)
            lines[e + 1:e + 1] = [" " * k + f"if {flag} or {sflag} then"] + body + [" " * k + "end"]
            lines[h + 1:be] = [" " * (k + 2) + f"{sflag} = true"]
        cur = hi
    return decls

def rewrite_label(lines, lab):
    name = LABEL.match(lines[lab])[1]; flag = "__" + name
    fstart = func_start(lines, lab)
    gotos = [i for i in range(max(fstart, 0), lab) if re.match(rf"^\s*goto {name}\s*$", lines[i])]
    if not gotos: raise Bail("no-goto")
    top = min(meeting(lines, g, lab, fstart)[1] for g in gotos)
    for g in sorted(gotos, reverse=True):
        rewrite_goto(lines, g, name, fstart)
    decls = rewrite_label_side(lines, name, fstart, top)
    lab = find_label(lines, name)
    del lines[lab]
    first = min(stmt_start(lines, g, top) for g in gotos)  # every use of the flag is at/after the first goto
    lines[first:first] = [" " * top + f"local {d} = false" for d in [flag] + decls]

def process(text):
    text = reindent(text)
    lines = text.split("\n"); bails = []
    while True:
        labs = [i for i, l in enumerate(lines) if LABEL.match(l) and not LABEL.match(l)[1].startswith("STUCK_")]
        if not labs: break
        lab = labs[0]
        snapshot = list(lines)
        try:
            rewrite_label(lines, lab)
        except (Bail, StopIteration) as b:
            lines[:] = snapshot
            name = LABEL.match(lines[lab])[1]
            bails.append(f"cannot rewrite {name} at line {lab + 1}: {b!r}")
            lines[lab] = lines[lab].replace(name, "STUCK_" + name)
    return "\n".join(lines), bails

if __name__ == "__main__":
    total = 0
    for pat in sys.argv[1:]:
        for f in sorted(glob.glob(pat)):
            s = open(f, encoding="utf-8", errors="surrogateescape").read()
            if "goto " not in s: continue
            out, bails = process(s)
            open(f, "w", encoding="utf-8", errors="surrogateescape").write(out)
            n = s.count("goto "); total += n
            print(f"{f}: {n} gotos, {len(bails)} bails", *bails, sep="\n  " if bails else " ")
    print("total gotos:", total)
