# Masanawa Kotlin web-shell migration — implementation blueprint

Date: 18 November 2026. Owner choice: **Option D — a small, custom Kotlin Android shell** presenting the existing live Masanawa web UI. This supersedes developing new customer features twice in Flutter and web, but does **not** authorize deleting the existing Flutter app, modifying the separate `Masanawa-App` repository, or releasing an unqualified replacement package.

## Authoritative inputs and ownership

| Concern | Current owner / existing location | Shell migration decision |
| --- | --- | --- |
| Live UI and navigation | `Baatiku/Masanawa-Web`, `https://app.masanawa.com` | Web remains the primary customer-facing UI; no replicated native tabs |
| Login, private chat, memory, calls, NGN wallet, Buy Data | `Baatiku/Masanawa` Gateway / PostgreSQL on the existing DigitalOcean pilot | All financial and account authority stays server-side; no new D1/guest wallet |
| Existing Android package / icons | `apps/mobile/android`, `ng.unigeria.unigeria` | Preserve ID and reuse tracked brand resources; do not replace Flutter packaging yet |
| New Android code | `apps/android-shell/` in `Baatiku/Masanawa` | Independent Gradle project, not a Flutter module; no edits to legacy Android sources |
| Push delivery | Web VAPID push exists; native FCM backend binding not yet verified | Build native FCM registration and authenticated device binding in a later coordinated web/backend pass |
| AI calling | Existing web/Gateway live-call and canonical NGN settlement contracts | Native Telecom + foreground call service required for background/reliable incoming calls |

## First connected implementation batch (this branch)

- [x] Standalone Kotlin/Gradle Android project with existing Masanawa package ID, icon assets and minimum Android API 24.
- [x] Live HTTPS rendering of the approved `app.masanawa.com` origin, with persistent browser cookies and DOM storage.
- [x] Fail-closed web navigation: only the owned origin stays in WebView; ordinary external web/contact links open through Android; no `intent:`, `file:`, untrusted JavaScript injection or certificate bypass.
- [x] Microphone and camera web permission requests gated by native runtime permission and exact request origin; no blanket grants.
- [x] File-input chooser with callback cleanup and Android back navigation.
- [x] Retained page history across recreation, a truthful retry view for failed main-page loads and existing profile-sensitive backup disabled.
- [x] Unit regression cases for origin lookalikes and dangerous schemes; an independent Android-shell CI workflow.
- [ ] CI compile, unit tests, Android lint on exact feature-branch head; no installed-handset acceptance claimed by source changes.

The first batch intentionally does **not** declare a native JavaScript finance bridge, store provider credentials on-device, register unauthorized devices for alerts, request contacts or media-library permissions, or claim background audio works when WebView is paused.

## Wave 2 — authenticated device events and navigation

- Implement Firebase Cloud Messaging in the Android host only after registering the package and supplying a properly managed Firebase Android configuration; no keys committed to Git.
- Create an authenticated Gateway device endpoint that binds installation ID + FCM token to the logged-in principal and revokes old tokens on logout/account switch. Idempotent registration, expiry and cross-account fencing required.
- Deliver server-authorized user-visible notifications for chats, account events and calls; deep links open permitted website routes without carrying financial credentials in URLs.
- Verify notification permission, channel/quiet-hour behavior, Android Doze, network recovery and account switches. Use public web push for browser/PWA users without double-delivering to one device.
- Add a **minimal origin-restricted WebMessageListener** only for the approved device capabilities that web APIs cannot supply; every privileged action requires server-side reauthorization.

## Wave 3 — production call lifecycle

- Implement native Android Core-Telecom and the supported foreground call-service type; never rely on keeping the WebView alive in the background.
- Use server-authenticated admission/signaling and the existing call settlement authority: ₦1 per started connected second; ringing/setup free; original-key reconciliation on uncertainty.
- Implement microphone/audio focus, speaker/Bluetooth routing, native call notifications and safe app/activity transitions.
- Test incoming, outgoing, answered, rejected, terminated, intermittent-network and process-recovery flows on actual Android devices; qualify provider audio separately from mocks.

## Wave 4 — full parity and migration

- Audit all five roots: Home (publisher news only), Chats, Wallet, Calls, Profile, and subordinate Buy Data. Verify responsive layouts, real profile media, login, persistent canonical history, attachment handling and accessible text sizes.
- Confirm file downloads and private media stay authenticated and do not inadvertently expose sensitive receipts through public downloads.
- Publish release certificate fingerprint in `https://app.masanawa.com/.well-known/assetlinks.json` before relying on Android App Link verification.
- Match the Google Play signing lineage and app ID for in-place replacement; confirm actual package versioning against the then-current Play release. The preview's `versionCode` is **not** a production rollout claim.
- Test on representative lower-memory Android devices and intermittent Nigerian mobile networks, including 320 dp viewport, offline page recovery, microphone access, headset/Bluetooth and actual incoming-call background states.
- Submit a native replacement build only after exact-head CI, financial/auth regression checks, real-device qualification and rollback have passed. Keep Flutter sources until post-migration verification.

## Release boundaries

Normal web UI, news content, translations, chat layout and non-native features can deploy through Cloudflare without Google Play review. Changes to permissions, native services, Firebase configuration, Android dependencies, signing or target-SDK compliance still need a Play Store update. Do not use dynamic executable native code downloads or disable Android security to avoid reviews.

No DigitalOcean size change, separate database, payment operation, production deployment, or Google Play submission is part of this initial source batch. Preserve provider/audit/receipt security and original-currency historical records.
