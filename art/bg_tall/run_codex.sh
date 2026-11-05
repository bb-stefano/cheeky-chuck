cd "$(dirname "$0")"
for s in 01 02 03 christmas_01 newyear valentinesday; do
  echo "=== $s $(date +%T)"
  ( cd $s && codex exec --skip-git-repo-check --sandbox workspace-write -C . -i canvas.png -i top.png -i bottom.png - < prompt.txt > codex.log 2>&1; echo "exit $?"; grep -v "^$" codex.log | tail -1; ls -la out.png 2>&1 )
done
echo "=== all done $(date +%T)"
