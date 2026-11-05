# Deploying Cheeky Chuck

Site (`site/`, static) and API (`server/`, Node 22 on 127.0.0.1:8095) at https://cheekychuck.jocogiant.com, behind Caddy on the Hetzner box (same setup as lastcampfire / squidmaze).

## 1. Env file (once, on the box)

Create `/etc/cheekychuck.env`, root-owned, mode 600 (`chmod 600`). systemd reads it; the service never needs to. Example values only, use your own secrets:

```
CC_DB=/var/lib/cheekychuck/cheekychuck.db
CC_PHOTOS=/var/lib/cheekychuck/photos
CC_SECRET=<long random string, e.g. openssl rand -hex 32>
CC_APP_ORIGINS=app://cheekychuck
CC_PUBLIC_URL=https://cheekychuck.jocogiant.com
CC_MAX_MAILS_PER_DAY=200
SMTP_HOST=127.0.0.1
SMTP_PORT=25
```

Optional, only for an authenticated relay (then the connection also requires STARTTLS): `SMTP_USER=contact@jocogiant.com`, `SMTP_PASS=<smtp password>`.

`deploy.sh` refuses to copy or install anything until every key above (not the optional two) has a non-empty value.

## 2. DNS (once)

At the DNS provider for jocogiant.com add an `A` record: name `cheekychuck`, value `135.181.204.213`. Caddy gets the HTTPS certificate on the first request after it propagates.

## 3. Deploy

```
bash deploy/deploy.sh
```

It checks the env file on the box, runs `npm test`, installs production-only `node_modules` in a temp dir (your local `node_modules` is untouched), uploads, swaps `/srv/cheekychuck` and `/opt/cheekychuck`, restarts the `cheekychuck` unit, checks `http://127.0.0.1:8095/health`, and installs and reloads the Caddy site. It ends with `Deployed: https://cheekychuck.jocogiant.com`.

Smoke test: `curl https://cheekychuck.jocogiant.com/api/gallery`. Production e2e: `E2E_BASE_URL=https://cheekychuck.jocogiant.com npm run e2e`.

## Mail

The API hands mail to Postfix on the box (`127.0.0.1:25`, no auth, no TLS), which signs it with OpenDKIM and delivers it directly. Needed once, outside this repo:

- Postfix + OpenDKIM installed and running on the box. Postfix is send-only: `inet_interfaces = loopback-only`, `mydestination = localhost.localdomain, localhost` (never jocogiant.com), `allow_percent_hack = no`, `swap_bangpath = no` (so a recipient like `victim%evil.com@localhost.localdomain` is not relayed), `smtpd_tls_security_level = none` (Rocky's default advertises STARTTLS with a self-signed cert, which nodemailer rejects; loopback needs no TLS), `maximal_queue_lifetime = 3d`, milter `inet:127.0.0.1:8891`; OpenDKIM signs `*@jocogiant.com` with selector `cc`, key `/etc/opendkim/keys/cc.private`.
- Outbound port 25 unblocked by Hetzner (blocked by default on new accounts; ask support).
- PTR (reverse DNS) of `135.181.204.213` set to `cheekychuck.jocogiant.com` (Hetzner console).
- SPF for jocogiant.com includes `ip4:135.181.204.213`.
- DKIM: the selector `cc` TXT record (`cc._domainkey.jocogiant.com`) published from the key in `/etc/opendkim/keys`.

## Moderation

On the box, hide a photo and delete its file (`<id>` is the photos row id). Run sqlite3 as the service user so root never creates root-owned `-wal`/`-shm` files next to the db (the `sqlite3` CLI may need `dnf install -y sqlite`):

```
sudo -u caddy sqlite3 /var/lib/cheekychuck/cheekychuck.db "UPDATE photos SET hidden=1 WHERE id=<id>"
rm /var/lib/cheekychuck/photos/<id>.jpg
```

## Logs

`journalctl -u cheekychuck` (add `-f` to follow). Caddy: `journalctl -u caddy`.
