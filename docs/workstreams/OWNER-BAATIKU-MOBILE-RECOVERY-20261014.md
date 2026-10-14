# Baatiku/Masanawa owner mobile recovery — 14 Oct 2026

## Source and observed problems
- New canonical repo `Baatiku/Masanawa` at baseline `34641d87d95714dfa6d82d1fee9dce1e7eb13153`. No force resets, no source migration from old repo presumed.
- Current Android version at branch start `1.0.2+3`; APK source includes extensive Chat/Calls/voice-note implementations but actual backend/device qualification is **NOT ESTABLISHED**.
- Railway project `f6d9af7c-5be4-457b-9614-936687391aea`, gateway `c90abb29-f649-4c65-a7b4-333f8056227b` still builds from `weavewellindustrieslimited/masanawa`, not `Baatiku/Masanawa`. A green `/readyz` on old code does not prove mobile endpoints or contracts.
- Old client streamed text with unsafe fallback to a second POST after any stream failure, risking duplicates; corrected so partial stream errors do not replay. Existing server idempotency still needs E2E confirmation.
- Chat triggered wallet refresh every 12 seconds while open, plus initial extra request. Removed this unnecessary load.
- Crypto adapter had fabricated fallback provider capabilities/routes (four tokens BTC/ETH/SOL/USDT) and invented zero balances. Changed to server-authoritative or unavailable; no fake token balances.
- Wallet mixed Credits `Cr` with MSN and displayed overly verbose paragraphs in separate Balance and Crypto tabs. New layout: MSN hero; Send, Convert, Fund, Receive; My assets with MSN/Crypto and separately labelled legacy Credits; optional verified bank info; Services; recent activity. Crypto detail lazily loads only when opened. **MSN is not equivalent to Credits**; actual MSN transfer/convert must be gated on qualified settlement contracts.
- Old `MsnBalanceCard` describes currency with a long paragraph; removed, green style updated. Widget tests revised but have not executed successfully.
- Custom emoji picker/emoji button removed, system keyboard emoji entry still supported.
- New white adaptive launcher M artwork generator committed at `scripts/branding/generate_masanawa_launcher.py`, workflow at `.github/workflows/mobile-brand-assets.yml`; generated PNG/mipmaps **NOT YET VERIFIED COMMITTED**, because Actions job failed before any steps ran. Do not claim it is installed or delivered.
- Source CI on new private repository (PR #1) shows multiple jobs failed within a few seconds and **zero steps** in returned job steps; log retrieval failed with remote BlobNotFound. Need inspect Actions permissions, runner/billing settings and obtain actual logs before any passing/build claims.

## Remaining mandatory work
1. Restore GitHub Actions execution, run full relevant Flutter/widget/APK checks. Fix new compile/regression errors without weakening financial tests.
2. Resolve Android real user text send, voice note record/upload/playback, and continuous Gemini Live call end-to-end against compatible authenticated live Gateway; collect HTTP error codes, media turn/stream/token evidence, valid bearer and physical microphone/native PCM output. Never simulate success.
3. Reconcile Railway service source to `Baatiku/Masanawa` and compatible deployed commit. Verify new repo Dockerfile and migrations; rollout safely, no flags/ledger activation without approval.
4. Get original icon PNGs generated/committed in assets and `mipmap` folders; verify no background fills; build signed APK; inspect launcher on device.
5. Finish MSN Wallet's real Send/Convert if canonical backend endpoint is qualified. Preserve independent Credits/NGN ledgers; no imaginary quotes or payments.
6. Profile actual app cold/warm start with Android startup metrics, keep warm launch near user target 3s (never claim measured times without traces).
7. Merge only scoped source that passes relevant executable CI; report provider/device qualifications separately.

## Owner instructions
Prioritize no description blocks, fast startup/no splash delays, no fake crypto list or zeros, clean white app surfaces, consistent green, icon with letter M in speech outline, proper logo on white adaptive launcher and no large launcher badge. Preserve personal data/auth/financial safeguards.
