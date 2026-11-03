"""Fix unluac's hoisted-local problem for closures.

With stripped debug info unluac declares every register as a function-top local. When a closure
captures register R and the original code later re-used R for another variable, the decompiled
closure now sees the clobber. Fix: give the closure its own block-scoped copy, by turning the last
visible assignment `R = expr` before the closure into `local R = expr` (or inserting `local R = R`
right before the closure when there is none). Loop variables are already per-iteration locals and
are left alone. A closure that references its own name register gets `local function`.
Run: python -I upvalfix.py 'game/*.lua'   (idempotent)"""
import re, sys, glob

FUNC = re.compile(r"^(\s*)(local )?function\s+(L\d+_(\d+))\s*\(")
ANYFUNC = re.compile(r"^\s*(local )?function\b")
ASSIGN = re.compile(r"^(\s*)((?:[\w.\[\]]+\s*,\s*)*[\w.\[\]]+)\s*=(?!=)\s*(.*)$")
FORVARS = re.compile(r"^\s*for\s+(.+?)\s+(in|=)\s")

def ind(l): return len(l) - len(l.lstrip())

def block_end(lines, i):
    """Closing `end` of the block opened at line i (same indent)."""
    k = ind(lines[i])
    for j in range(i + 1, len(lines)):
        if lines[j].strip() and ind(lines[j]) <= k:
            return j if lines[j].strip().startswith("end") else None
    return None

def chain_up(lines, i, stop):
    """Lines visible from line i walking up: same block or enclosing blocks, until `stop` (exclusive)."""
    k = ind(lines[i])
    for j in range(i - 1, stop, -1):
        if not lines[j].strip(): continue
        if ind(lines[j]) <= k:
            k = ind(lines[j]); yield j

def func_extent(lines, i, level):
    """(header, end) of the function whose body registers are `L*_level`, enclosing line i. level 1 = file."""
    if level == 1: return -1, len(lines)
    k = ind(lines[i])
    for j in range(i - 1, -1, -1):
        if lines[j].strip() and ind(lines[j]) < k:
            k = ind(lines[j])
            m = FUNC.match(lines[j])
            if m and int(m[4]) == level - 1:
                return j, block_end(lines, j) or len(lines)
    return -1, len(lines)

def targets(line):
    a = ASSIGN.match(line)
    if a and not line.lstrip().startswith(("if ", "elseif ", "while ", "return", "local ")):
        return [t.strip() for t in a[2].split(",")], a
    return [], None

def fix_one(lines, i):
    """Process the closure defined at line i. Returns True if lines changed."""
    m = FUNC.match(lines[i]); name, depth = m[3], int(m[4]); k = ind(lines[i])
    e = block_end(lines, i)
    if e is None: return False
    body = "\n".join(lines[i + 1:e])
    changed = False
    levels = {}
    for v in set(re.findall(r"\bL\d+_(\d+)\b", body)):
        if int(v) <= depth: levels[int(v)] = set(re.findall(rf"\bL\d+_{v}\b", body))
    if name in levels.get(depth, ()) and not m[2]:
        # self-reference: only matters if the name is reassigned later
        pass
    for level, ups in sorted(levels.items(), reverse=True):
        fh, fe = func_extent(lines, i, level)
        clobbered = set()
        for j in range(e + 1, fe):
            t, _ = targets(lines[j]); f = FORVARS.match(lines[j])
            if f: t = [x.strip() for x in f[1].split(",")]
            clobbered |= {x for x in t if x in ups}
        for v in sorted(clobbered):
            if v == name:
                if not m[2]: lines[i] = lines[i].replace("function ", "local function ", 1); changed = True
                continue
            # already block-scoped: loop variable of an enclosing for, or a visible `local v` we added earlier
            if any((FORVARS.match(lines[j]) and v in [x.strip() for x in FORVARS.match(lines[j])[1].split(",")])
                   or (j != fh + 1 and re.match(rf"^\s*local\s+(?:[\w, ]*\b)?{v}\b", lines[j]))  # not unluac's hoisted decl
                   or re.match(rf"^\s*local function {v}\b", lines[j])
                   for j in chain_up(lines, i, fh)):
                continue
            done = False
            for j in chain_up(lines, i, fh):
                if ind(lines[j]) < ind(lines[fh]) + 2 if fh >= 0 else False: break
                t, a = targets(lines[j])
                if v in t:
                    if len(t) == 1 and not lines[j].lstrip().startswith("local "):
                        lines[j] = a[1] + "local " + lines[j].lstrip()
                    elif len(t) > 1:
                        lines.insert(j + 1, " " * ind(lines[j]) + f"local {v} = {v}")
                    done = changed = True
                    break
            # no visible prior assignment: the original local was declared at function scope and is
            # assigned after the closure on purpose (timer/image handles) → leave it hoisted
            if not done: continue
            if changed: return True  # line numbers moved: caller rescans
    return changed

def process(text):
    lines = text.split("\n")
    seen = set()
    while True:
        progressed = False
        for i in range(len(lines) - 1, -1, -1):
            if FUNC.match(lines[i]) and (i, lines[i]) not in seen:
                while True:
                    n = len(lines)
                    if not fix_one(lines, i): break
                    progressed = True
                    # an insertion at or above the closure shifts it down
                    if not FUNC.match(lines[i]): i += len(lines) - n
                seen.add((i, lines[i]))
        if not progressed: break
    return "\n".join(lines)

if __name__ == "__main__":
    for pat in sys.argv[1:]:
        for f in sorted(glob.glob(pat)):
            s = open(f, encoding="utf-8", errors="surrogateescape").read()
            out = process(s)
            if out != s:
                open(f, "w", encoding="utf-8", errors="surrogateescape").write(out)
                print(f, "+", out.count("\n") - s.count("\n"), "lines,", out.count("local ") - s.count("local "), "locals")
