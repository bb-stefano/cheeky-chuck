"""Find closures whose captured upvalues (unluac register-locals) are reassigned later in the enclosing
function. With stripped debug info unluac hoists every local to function top, so a register the
original code re-used after the closure's block now clobbers the closure's upvalue.
Run: python -I upvalcheck.py 'game/*.lua'"""
import re, sys, glob

FUNC = re.compile(r"^(\s*)(local )?function\s+(\w+)?\s*\(")
ASSIGN = re.compile(r"^\s*((?:[\w.\[\]]+\s*,\s*)*[\w.\[\]]+)\s*=[^=]")
FORIN = re.compile(r"^\s*for\s+(.+?)\s+(in|=)\s")

def ind(l): return len(l) - len(l.lstrip())

def closure_end(lines, i):
    k = ind(lines[i])
    for j in range(i + 1, len(lines)):
        if lines[j].strip() and ind(lines[j]) <= k:
            if lines[j].strip().startswith("end"): return j
            return None
    return None

def report(path):
    lines = open(path, encoding="utf-8", errors="replace").read().split("\n")
    hits = []
    for i, l in enumerate(lines):
        m = FUNC.match(l)
        if not m or m[3] is None: continue
        depth = int(re.search(r"_(\d+)$", m[3])[1]) if re.search(r"_(\d+)$", m[3]) else None
        if depth is None: continue  # top-level module function
        e = closure_end(lines, i)
        if e is None: continue
        body = "\n".join(lines[i + 1:e])
        ups = set(re.findall(rf"\bL\d+_{depth}\b", body))  # own name counts only if the body references it
        # enclosing function extent: until a line with smaller indent that starts with `end`
        k = ind(l); fend = len(lines)
        for j in range(e + 1, len(lines)):
            if lines[j].strip() and ind(lines[j]) < k and lines[j].strip().startswith("end"): fend = j; break
        clobbered = set()
        for j in range(e + 1, fend):
            a = ASSIGN.match(lines[j]); f = FORIN.match(lines[j])
            targets = []
            if a: targets = [t.strip() for t in a[1].split(",")]
            if f: targets = [t.strip() for t in f[1].split(",")]
            for t in targets:
                if t in ups and re.match(r"^L\d+_\d+$", t): clobbered.add(t)
        if clobbered:
            hits.append((i + 1, m[3], sorted(clobbered)))
    return hits

total = 0
for pat in sys.argv[1:]:
    for f in sorted(glob.glob(pat)):
        for line, name, cl in report(f):
            total += 1; print(f"{f}:{line} closure {name} upvalues clobbered later: {', '.join(cl)}")
print("total:", total)
