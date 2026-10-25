# Gateway retirement source batch — 25 October 2026

Starting main: `26d4e3139192ffcc68b905fb009e6b17b74573a2`; incorporates Worker retirement merge `b2d1073afd210b5aef5b0e59fbe610fb977fa0e1`.

Deleted human communication, incoming-call and group-call service/routes/repositories/tests and Gateway recovery timers. Removed all legacy-product customer route registration (Rooms/Talks, public creators, videos, P2P, legacy wallet/credit/crypto and non-data bills) instead of allowing environment scope to restore it. Status is always platform-Masana only. Kept human social profile routes, Masana safety, account deletion/export/auth, Masana inbox/conversation/media, call history and GB Wallet/Data discovery.

Removed model-driven legacy billing/crypto assistants and bill-purchase shell executor from production chat composition, and retired creator visit/conversation event writes. Removed external Telegram/WhatsApp channel initialization, recovery, webhook registration and option fields. Other unused service constructors/source remain to be deleted in a follow-on reference batch; this is not a full backend-source completion claim. Calls must not fall back to new legacy Credits admissions; MB call qualification remains separately required.

Historical signed NOWPayments and Paystack callbacks are isolated from customer create/verify/spend APIs so existing obligations can reconcile. Signature handlers and exact raw Paystack bytes remain authoritative. Historical finance records, applied migrations and financial recovery jobs are untouched. No conversion of old assets to MB.

PASS_REAL: Gateway TypeScript; 17 focused files / 50 tests, including permanent route absence, retained account paths and callback payload/signature contracts. Full exact-head CI must pass before merge. No provider, handset, deployment acceptance or APK claimed. Flutterwave fixed-IP hosting remains on hold.
