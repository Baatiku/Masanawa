# Payment activation recovery — 17 November 2026

The owner ran release b5dccdae377a's console installer. The screenshot shows
canonical migrations completed, then provider qualification failed; previous
application images/runtime were restored and forward migrations retained. This
is not a completed Flutterwave activation or a failed database restoration.

Connected operational map before implementation:

- `activate-payments-env.py`: add independently authorized core activation using
  the existing private Billstack key and internal transfer review key. Preserve
  Flutterwave settings when qualification fails. Never create provider secrets.
- `activate-payments.template.sh`: retain backup, canonical migration, resource
  limits and rollback; deploy current core application fixes when Flutterwave is
  unavailable. Print PAYMENT UPDATE COMPLETE only after full qualification;
  otherwise print CORE UPDATE COMPLETE and an explicit pending provider result.
- `qualify-payments.mjs`: emit bounded machine-readable stage/provider-code/HTTP
  status diagnostics, never headers, keys, account data or provider payloads.
- Python tests and pilot workflow contracts: verify independent activation,
  preservation of private settings, missing credentials, weak signing keys and
  shell/tool syntax. Gateway financial APIs/ledger and Flutter contracts remain
  unchanged; exact-head CI gates release images.

The web wallet restart recovery is a separate frontend change, with account-bound
BFF dispatch and encrypted original operations. No Worker, resize, paid service,
new balance, replacement database or provider purchase is introduced here.
