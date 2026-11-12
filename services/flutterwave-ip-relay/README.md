# Flutterwave static IPv4 egress relay (eligible Oracle Always Free VM)

Run only this tiny outbound relay on a VM with verified stable **outbound** IPv4; keep the Masanawa Gateway, PostgreSQL, ledger, Billstack funding, callbacks, receipts, and Flutterwave provider secret on Railway.

The existing `FlutterwaveHttpTransport` in Masanawa already supports a dual-header relay. This service listens on **127.0.0.1:3098**, requires `x-masanawa-relay-token` and forwards narrowly allowlisted Flutterwave Bills HTTP paths to the **fixed** `https://api.flutterwave.com` upstream. It strips the relay token but passes the provider Authorization bearer from Railway. This VM therefore remains credential-sensitive and must be hardened. It is NOT a generic forward proxy or a payment ledger.

## Eligible free infrastructure

Oracle's Always Free compute options include a VM with a public IPv4, subject to home region/shape capacity, credit eligibility, quotas, and idle reclamation. Prefer a **reserved public IPv4** for survivability of VM replacement if your tenancy's pricing and allowance permit it. The exact assignment and ongoing $0 cost are **not guaranteed**. If the VM is reclaimed, payment dispatch stops; no automatic duplicate purchases. A free sandbox with changing outbound IP cannot meet Flutterwave whitelist requirements.

## Deploy checklist

1. Create an eligible OCI Always Free VM in your home region with a public subnet, Internet Gateway and one persistent/public IPv4. Confirm cost and any reserved-IP quotas in the OCI billing estimate.
2. On the VM run `curl -4 https://api.ipify.org`; use the **actual returned outbound IPv4**, not a DNS/anycast/load balancer IP, in Flutterwave Dashboard > Settings > Whitelisted IP Addresses. Finish the OTP verification.
3. Set DNS `relay.example.com` A record to the VM; install Node 24 and Caddy. Copy this folder to `/opt/masanawa/flutterwave-ip-relay`. Use a dedicated non-root `masanawa-relay` service account and the supplied systemd and Caddy templates.
4. Create root-owned, mode-0600 `/etc/masanawa/flutterwave-relay.env` with only `MASANAWA_FLUTTERWAVE_RELAY_TOKEN=<cryptographically random >=32 bytes>`. This must be different from the provider secret. Keep 3098 inaccessible publicly, expose only 443 and ACME port 80. Restrict SSH to a known administrator IP; enable system updates, uptime and egress-IP monitoring.
5. After the VM is running and whitelisted, set Railway Gateway `FLUTTERWAVE_RELAY_URL=https://relay.example.com`, `FLUTTERWAVE_RELAY_PROTOCOL=dual-header`, and the same `MASANAWA_FLUTTERWAVE_RELAY_TOKEN`. Keep `FLUTTERWAVE_SECRET_KEY` **only on Railway**. No changes to `FlutterwaveHttpTransport` required.
6. Verify the outbound IPv4 and a credentialed catalogue GET through the relay. Only activate purchases after the exact-GB catalogue, PostgreSQL MB reservation/capture/reversal, real delivery reconciliation and anti-duplicate tests are qualified. Unknown provider POST outcome: **do not retry** with a new reference; reconcile original reference.
7. On IP drift, provider rejection, unhealthy VM, or missing TLS: automatically hold new purchases pending. Billstack **inbound webhooks remain on Railway** and are independent of this outbound relay.

## Verify

Run `node --test relay.test.mjs`. Tests cover isolation, authorization, exact target, and no retry. Service intentionally has no application-layer access logs, token logs, receipt state or side effects other than provider requests.

**Not completed by committing this module:** creating an OCI tenancy/VM, getting a fixed IP allocated, Flutterwave whitelisting, operator token setup, live payment qualification, or user funding. Always Free is best-effort, not an uptime SLA.