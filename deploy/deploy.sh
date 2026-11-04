#!/usr/bin/env bash
# Deploy Cheeky Chuck (site/ static + server/ Node API on 127.0.0.1:8095) to the Hetzner web server: bash deploy/deploy.sh
# Needs /etc/cheekychuck.env on the box (see deploy/README.md) and DNS for cheekychuck.jocogiant.com for the HTTPS certificate.
set -euo pipefail
HOST=root@135.181.204.213
KEY=~/.ssh/hetzner_ed25519
cd "$(dirname "$0")/.."
SSH=(ssh -i "$KEY" -o BatchMode=yes "$HOST")
REQUIRED="CC_DB CC_PHOTOS CC_SECRET CC_APP_ORIGINS CC_PUBLIC_URL CC_MAX_MAILS_PER_DAY SMTP_HOST SMTP_PORT SMTP_USER SMTP_PASS"

# First remote action, before anything is copied or installed: the env file must exist and hold every key.
"${SSH[@]}" "REQUIRED='$REQUIRED' bash -s" <<'REMOTE'
set -euo pipefail
missing=
[ -f /etc/cheekychuck.env ] || missing=$REQUIRED
if [ -z "$missing" ]; then
  for k in $REQUIRED; do grep -q "^$k=" /etc/cheekychuck.env || missing="$missing $k"; done
fi
if [ -n "$missing" ]; then
  echo "ABORT: /etc/cheekychuck.env (root, mode 600) must exist and define: $REQUIRED" >&2
  echo "Missing:$missing" >&2
  exit 1
fi
REMOTE

npm test >/dev/null
# Production-only node_modules, installed in a temp dir so the developer's node_modules (with devDependencies) is untouched.
TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
cp package.json package-lock.json "$TMP/"
(cd "$TMP" && npm ci --omit=dev --silent)
tar -czf - site server/*.mjs server/migrations package.json package-lock.json deploy/cheekychuck.caddy deploy/cheekychuck.service -C "$TMP" node_modules |
  "${SSH[@]}" 'rm -rf /tmp/cheekychuck-release && mkdir -p /tmp/cheekychuck-release && tar -xzf - -C /tmp/cheekychuck-release'
"${SSH[@]}" 'bash -s' <<'REMOTE'
set -euo pipefail
R=/tmp/cheekychuck-release
rm -rf /srv/cheekychuck.new && cp -r "$R/site" /srv/cheekychuck.new && chmod -R a+rX /srv/cheekychuck.new
rm -rf /srv/cheekychuck.old && { [ -d /srv/cheekychuck ] && mv /srv/cheekychuck /srv/cheekychuck.old || true; }
mv /srv/cheekychuck.new /srv/cheekychuck
# The API: node:sqlite needs Node 22.13+ (dnf also upgrades c-ares, which Rocky's nodejs build needs).
dnf install -y -q nodejs c-ares
rm -rf /opt/cheekychuck.new && mkdir -p /opt/cheekychuck.new
cp -r "$R/server" "$R/node_modules" "$R/package.json" "$R/package-lock.json" /opt/cheekychuck.new/
chmod -R a+rX /opt/cheekychuck.new
rm -rf /opt/cheekychuck.old && { [ -d /opt/cheekychuck ] && mv /opt/cheekychuck /opt/cheekychuck.old || true; }
mv /opt/cheekychuck.new /opt/cheekychuck
install -d -m 750 -o caddy -g caddy /var/lib/cheekychuck /var/lib/cheekychuck/photos
install -m 644 "$R/deploy/cheekychuck.service" /etc/systemd/system/
systemctl daemon-reload && systemctl enable -q cheekychuck && systemctl restart cheekychuck
ok=0
for i in 1 2 3 4 5; do curl -fsS http://127.0.0.1:8095/health && { ok=1; break; } || sleep 1; done
echo
[ "$ok" = 1 ] || { journalctl -u cheekychuck -n 30 --no-pager; exit 1; }
install -m 644 "$R/deploy/cheekychuck.caddy" /etc/caddy/sites/cheekychuck.caddy
caddy validate --adapter caddyfile --config /etc/caddy/Caddyfile >/dev/null
systemctl reload caddy
REMOTE
echo "Deployed: https://cheekychuck.jocogiant.com"
