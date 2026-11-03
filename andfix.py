"""Fix unluac's mis-decompiled `if A and B then X else Y end`.

unluac 1.2.3 renders a compound condition whose second operand needs instructions as
    if A then            if A then
      <loads>              <loads>
      if B then X end  ->    if B then X end   (closing `end` mis-indented to A's level)
    else Y end           else Y end
which skips Y when A is true and B is false. The bytecode jumps to Y in both cases. The
mis-indented `end` is unluac's tell, so this runs on the pristine output BEFORE any reindent.
Rewrite:  local __and_N = false; if A then <loads> if B then __and_N = true; X end end; if not __and_N then Y end
Run: python -I andfix.py 'game/*.lua'   (idempotent: fixed code has no mis-indented end)
"""
import re, sys, glob

OPEN = re.compile(r"^\s*(if\b.*\bthen|for\b.*\bdo|while\b.*\bdo|do|repeat|(local )?function\b.*)\s*$")
SIMPLE = re.compile(r"^\s*(?!if\b|for\b|while\b|do\b|repeat\b|function\b|local function\b|end\b|else\b|elseif\b|until\b|return\b|break\b)\S")

def ind(l): return len(l) - len(l.lstrip())

def find_sites(lines):
    """Yield (outer_if, inner_if, inner_end, else_line) for each mis-indented inner `end` followed by else/elseif."""
    stack = []  # (line index, indent)
    for i, l in enumerate(lines):
        s = l.strip()
        if not s: continue
        if s.startswith("end") and (len(s) == 3 or not s[3].isalnum()):
            if not stack: continue
            j, k = stack.pop()
            if ind(l) < k and lines[j].lstrip().startswith("if ") and i + 1 < len(lines) and re.match(r"^\s*(else|elseif\b)", lines[i + 1]) and ind(lines[i + 1]) == ind(l):
                # outer if: the nearest open `if` at the end's indent
                outer = next((o for o, ok in reversed(stack) if ok == ind(l)), None)
                if outer is not None and lines[outer].lstrip().startswith("if "):
                    yield outer, j, i, i + 1
        elif s.startswith("until"):
            if stack: stack.pop()
        elif s.startswith(("else", "elseif")):
            pass
        elif OPEN.match(l) and not s.endswith("end"):
            # one-line `function x() end` etc. are excluded by the endswith check
            stack.append((i, ind(l)))
        if s.startswith("elseif"):
            pass

def fix(text, name="", counter=[0]):
    lines = text.split("\n")
    changed = 0
    skipped = set()  # (outer line text, inner line text) of sites we could not rewrite
    while True:
        sites = [s for s in find_sites(lines) if (lines[s[0]], lines[s[1]], s[2] - s[0]) not in skipped]
        if not sites: break
        outer, inner, iend, els = sites[0]
        between = lines[outer + 1:inner]
        if not all(SIMPLE.match(x) or not x.strip() for x in between):
            print(f"{name}:{outer + 1}: skipped, non-trivial statements before inner if")
            skipped.add((lines[outer], lines[inner], iend - outer)); continue
        counter[0] += 1; flag = f"__and_{counter[0]}"
        k = " " * ind(lines[outer]); k2 = " " * (ind(lines[outer]) + 2)
        if lines[els].strip() == "else":
            tail = [k + "end", k + f"if not {flag} then"]
        else:  # elseif C then  ->  end; if not flag then; if C then ... (rest of chain) ... end
            cond = lines[els].strip()[len("elseif"):]
            # find the end closing the whole if/else chain to add the extra `end`
            depth, close = 0, None
            for q in range(els + 1, len(lines)):
                sq = lines[q].strip()
                if OPEN.match(lines[q]) and not sq.endswith("end") and not sq.startswith(("else", "elseif")): depth += 1
                elif sq.startswith("end") and (len(sq) == 3 or not sq[3].isalnum()) or sq.startswith("until"):
                    if depth == 0 and ind(lines[q]) == ind(lines[outer]): close = q; break
                    depth -= 1
            if close is None:
                print(f"{name}:{outer + 1}: skipped, chain end not found")
                skipped.add((lines[outer], lines[inner], iend - outer)); continue
            lines[close:close + 1] = [k + "end", k + "end"]
            tail = [k + "end", k + f"if not {flag} then", k + "if" + cond]
        lines[iend:els + 1] = [k2 + "end"] + tail
        lines[inner + 1:inner + 1] = [" " * (ind(lines[inner]) + 2) + f"{flag} = true"]
        lines[outer:outer] = [k + f"local {flag} = false"]
        changed += 1
    return "\n".join(lines), changed

if __name__ == "__main__":
    total = 0
    for pat in sys.argv[1:]:
        for f in sorted(glob.glob(pat)):
            s = open(f, encoding="utf-8", errors="surrogateescape").read()
            out, n = fix(s, f)
            if n:
                open(f, "w", encoding="utf-8", errors="surrogateescape").write(out)
                print(f, n, "and-chains fixed"); total += n
    print("total:", total)
