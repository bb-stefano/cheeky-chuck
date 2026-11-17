#!/bin/sh
# Run every Codex image job under jobs/ (built by make_jobs.py) that has no out.png yet, then collect the results.
# Needs a logged-in Codex CLI (`codex login`). Usage: sh art/bg_tall/run_codex.sh [job ...]
cd "$(dirname "$0")"
PY=${PYTHON:-$( [ -x ../../.venv/bin/python ] && echo ../../.venv/bin/python || command -v python3 || command -v python )}  # after the cd above
jobs=${*:-$(ls -d jobs/*/ 2>/dev/null | xargs -n1 basename)}
for j in $jobs; do
  [ -f "jobs/$j/out.png" ] && { echo "=== $j: done already"; continue; }
  echo "=== $j $(date +%T)"
  ( cd "jobs/$j" && set -- $(for i in $(cat inputs.txt); do printf -- "-i %s " "$i"; done) && \
    codex exec --skip-git-repo-check --sandbox workspace-write -C . "$@" - < prompt.txt > codex.log 2>&1; \
    echo "exit $?"; grep -v "^$" codex.log | tail -1; ls -la out.png 2>&1 )
done
"$PY" -I make_jobs.py collect
echo "=== all done $(date +%T)"
