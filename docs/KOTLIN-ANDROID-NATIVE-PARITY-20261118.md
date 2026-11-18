# Kotlin shell native parity — implementation and acceptance register

Owner decision: keep the web UI authoritative; ship Android-only capabilities in
`apps/android-shell`. This document distinguishes source/CI evidence from a
genuinely qualified production replacement. **Never replace the signed Flutter
package solely because a debug APK installs.**

## Implemented in the follow-up branch

| Capability | Source / integration | Acceptance still required |
| --- | --- | --- |
| Custom scheme / HTTPS navigation | `ShellDeepLinks`, `ShellActivity` | Test external shared persona, notification, wallet and legacy links on a phone; publish release assetlinks |
| Android share intake | `ACTION_SEND` text and content-URI attachments | Test text, camera, Gallery, PDF, WhatsApp share, sign-in return |
| Android sharesheet | Origin-scoped `share-text` command | Test native sharing of web news on a phone |
| Private media / exports | `ShellDownloads`: SAF document destination, bounded HTTPS and chunked Blob transfer; web bridge in `Masanawa-Web` | Test media, CSV, memory export, 32MB cap, cancellation and storage failure |
| Native camera | Optional capture in file chooser, private FileProvider URI, permission prompt | Test camera hardware, denied permission, cancelled chooser and upload |
| Notification receiving | FCM service and private message/call channels; token requested on explicit account opt-in | Managed Firebase Android configuration and Gateway service account; actual foreground, Doze, locked and killed-process delivery |
| Authenticated device binding | Web `/api/account/android-push` forwards to existing authorized Gateway `/agent/push/*` | Live deployment of Gateway routes; opt-in, revoke, token refresh, second user and logout tests |
| Connected call lifecycle | Origin-scoped browser connected-state opens a microphone foreground service; Core-Telecom 1.1.0 registers the existing outgoing media session with Android; CallStyle Hang Up, Android Telecom mute and headset hang-up relay into the web/Gateway settlement flow | Physical handset/locked/background/BT and interruption acceptance; inbound invitations still require actual Gateway media signaling |
| Screen/recents privacy | Native `FLAG_SECURE` when app hidden and while wallet/profile selected | Confirm Android 14–16 recents thumbnails and wallet screenshots |
| Edge-to-edge/keyboard | System/IME insets applied to host WebView | Android 15–16 phone, 320dp/390dp, landscape, IME and foldable acceptance |

The host never exposes a wallet-transfer, payment-authority, bearer-token or
unrestricted JavaScript interface. Only the exact `https://app.masanawa.com`
top-level document can request the native bridge. Sensitive files are written
only to user-selected document locations and no public storage permission is
requested. Account authorization remains in the Gateway.

## Configuration and release gates

1. **Firebase Android app:** provision the debug/release package registrations
   and set `FIREBASE_API_KEY`, `FIREBASE_APP_ID`,
   `FIREBASE_MESSAGING_SENDER_ID`, `FIREBASE_PROJECT_ID` as managed GitHub
   Actions variables/secrets. Backend FCM delivery independently needs its
   existing service-account configuration. Do not commit secret JSON/private
   keys to Android or the website. If these are absent, the UI must report
   configuration failure instead of claiming notifications are enabled.
2. **Gateway:** deploy/verify existing `/agent/push/register` and unregister
   endpoints, FCM sender, preference policy and account-session revocation.
3. **Calls:** Core-Telecom coordinates the **connected outgoing** web media
   session with the OS; it does not itself transport media or admit calls.
   Validate WebView capture/playback with Telecom routing, mute, headset buttons,
   SIM interruptions, lock screen, Doze, process removal and NGN termination
   receipts. An incoming-call notification cannot offer Answer until the backend
   supplies an authenticated incoming-call invitation and a resumable media path.
4. **App links:** add production signing-certificate SHA-256 to
   `https://app.masanawa.com/.well-known/assetlinks.json` and test Android
   verification. Keep the preview package `ng.unigeria.unigeria.shelltest`
   side by side; only a correctly signed release with the existing Play signing
   lineage can update `ng.unigeria.unigeria` in place.
   The **Play App Signing** SHA-256 is often different from the upload key and
   is the one that must appear in the website's Digital Asset Links statement.
   The manual `kotlin-android-release.yml` workflow accepts the owner's
   upload-key keystore, expected upload certificate SHA-256 and a fresh numeric
   versionCode only as encrypted Actions secrets/dispatch input. It verifies and
   produces a signed, **review-only** AAB; it never uploads to Google Play.
5. **Provider and wallet:** Buy Data/provider/settlement acceptance is an
   independent web/Gateway qualification gate. A Kotlin shell cannot make an
   unavailable provider financially live. Current DigitalOcean host TCP/22
   refusal requires the supported owner console installer and pre-existing
   private Billstack/Flutterwave webhook credentials. Do not deposit imaginary
   money, switch on an unqualified provider, or publish unsupported claims.
   **Google Play Payments is a separate launch blocker:** telecom/utility bills
   and genuine person-to-person transfers may be outside Play Billing, but
   paid AI replies/calls/cloud digital service are normally in-app digital
   goods and cannot simply link to Flutterwave inside the WebView. Obtain a
   Play policy determination and implement approved Google Play Billing or an
   eligible enrolled alternative *before* a public Play release.
6. **Regression:** run `:app:assembleDebug :app:testDebugUnitTest :app:lintDebug`
   and the Foundation CI on the exact PR head. Then install APK on an actual
   Android device, test the canonical sign-in session and five tabs, offline
   recovery, attachments, wallet, call review/settlement and app restoration.

## Known boundaries

- Android Core-Telecom now tracks outgoing connected calls; lock-screen
  **incoming** answer/reject and guaranteed background media transport still
  depend on canonical server signaling and physical-device qualification.
- Biometric lock is explicitly **out of scope at the owner's request**.
- Service-worker/browser offline caches cannot replace authenticated Gateway
  or provider availability, especially for payment and call admission.
- Native permissions/dependencies, signing, target-SDK policy and Play release
  still require an Android update. Web UI/features can update independently.
