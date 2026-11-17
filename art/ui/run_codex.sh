#!/bin/sh
# Run the Codex button jobs under jobs/ (art/ui) that have no out.png yet, in parallel, then collect.
# Needs a logged-in Codex CLI. Usage: sh art/ui/run_codex.sh [job ...]
cd "$(dirname "$0")"
PY=${PYTHON:-$( [ -x ../../.venv/bin/python ] && echo ../../.venv/bin/python || command -v python3 || command -v python )}
jobs=${*:-$(ls -d jobs/*/ 2>/dev/null | xargs -n1 basename)}
for j in $jobs; do
  [ -f "jobs/$j/out.png" ] && { echo "=== $j: done already"; continue; }
  echo "=== $j start $(date +%T)"
  ( cd "jobs/$j" && set -- $(for i in $(cat inputs.txt); do printf -- "-i %s " "$i"; done) && \
    codex exec --skip-git-repo-check --sandbox workspace-write -C . "$@" - < prompt.txt > codex.log 2>&1; \
    echo "=== $j exit $? $(date +%T): $(grep -v '^$' codex.log | tail -1)"; ls -la out.png 2>&1 ) &
done
wait
"$PY" -I make_jobs.py collect
echo "=== all done $(date +%T)"
