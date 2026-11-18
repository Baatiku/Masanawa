# Android shell release candidate: owner handoff

This is a signed *candidate* workflow, not permission to replace the Flutter
application or a claim of production provider/payment readiness. Android
target SDK is 36 (Google Play's current update minimum).

## Managed GitHub Actions secrets (never add to source or a chat)

- `SHELL_RELEASE_KEYSTORE_BASE64`: base64 of the authorized **upload**
  keystore. The owner retains the original securely.
- `SHELL_RELEASE_STORE_PASSWORD`, `SHELL_RELEASE_KEY_PASSWORD`,
  `SHELL_RELEASE_KEY_ALIAS`: existing authorized upload-key parameters.
- `SHELL_EXPECTED_UPLOAD_SHA256`: verified SHA-256 certificate fingerprint of
  that upload key. The workflow fails if the keystore differs.
- `FIREBASE_API_KEY`, `FIREBASE_APP_ID`,
  `FIREBASE_MESSAGING_SENDER_ID`, `FIREBASE_PROJECT_ID`: Android Firebase app
  config to be provided on the owner's local machine/CI. The backend FCM
  service account is a **separate** managed secret.

From GitHub Actions run **Kotlin Android shell signed release candidate** with a
new `version_code` above the current Play version. Its AAB is an artifact for
private review only. If the Play package uses the original Flutter signing
lineage, confirm that the new bundle is updatable on an internal-test device.

## Digital Asset Links

Find the **App signing key certificate SHA-256** in Google Play Console >
Release > Setup > App signing. After owner verification, host precisely:

```json
[
  {
    "relation": ["delegate_permission/common.handle_all_urls"],
    "target": {
      "namespace": "android_app",
      "package_name": "ng.unigeria.unigeria",
      "sha256_cert_fingerprints": ["OWNER_PLAY_APP_SIGNING_SHA256"]
    }
  }
]
```

at `https://app.masanawa.com/.well-known/assetlinks.json` with JSON content
type, no redirect or login. Replace the template token with the actual
fingerprint; **never deploy the token as a real association**. The side-by-side
debug package uses `ng.unigeria.unigeria.shelltest`, so it does not match this
release association. Check verification with `adb shell pm get-app-links
ng.unigeria.unigeria` on a device running the actual signed release.

## Production acceptance on a real handset

### Native-feel and system UI verification (2026-11-18)

The Kotlin host deliberately fills the Android window. CSS owns the status,
gesture/three-button navigation, display-cutout, and IME safe areas, with
Android-supplied CSS inset fallbacks for older WebViews. Do **not** restore
native `container.setPadding(...)` or consume the FrameLayout window insets:
that recreates the detached/floating bottom tabs and double keyboard offsets.

The test APK from the **Kotlin Android Shell** workflow installs alongside
Flutter (`.shelltest`) and is the build to use for these checks. These are
**physical-device verification tasks**, not claims of completed lab testing:

| Device/state | Acceptance condition |
| --- | --- |
| Gesture navigation, Home screen | Bottom tab background reaches the system gesture area without a white gap; controls remain above the gesture handle. |
| Three-button navigation | Bottom tabs are fully tappable; Back/Home/Overview remain system-controlled without overlapping labels. |
| Notched/rounded phone | Header, account icon, and controls sit beneath the status bar and avoid cutouts. |
| Rotate landscape and return | No clipped controls, no inset left over after rotation; tablet/split panes remain usable. |
| Split screen/foldable | Resize dynamically without navigation or header detachment. |
| Chat keyboard opened | Composer stays visible above IME, bottom tab rail hides, and no double-height empty space appears. |
| Keyboard dismissed | The rail returns to its original edge position, with draft and scroll position retained. |
| Android Back/edge swipe | First close menu, comments, message selection, details, or chat; then switch to Home; from Home exit the shell. |
| Startup/cold launch | Branded Android splash transitions to the app, not a raw browser error page; no persistent blank screen. |
| Slow/offline network | Thin progress bar is visible during load; an offline/error screen offers an explicit retry without exposing account data. |
| Dark system theme | System bar icons remain legible against Masanawa's light UI; no flash of dark WebView chrome. |
| Buttons/chat links | Navigation taps have subtle Android haptics where the device allows; touch targets remain accessible. |
| Camera, attachments and downloads | Trusted-origin picker, camera capture, and system document save work; untrusted URLs do not gain the native bridge. |
| Login and wallet | Session survives process recreation; no duplicated charges, billing bypass, or credential exposure from shell changes. |

Automated host coverage includes the Web Back result contract; the Kotlin
shell workflow builds the debug APK, runs host unit tests and Android lint.
Browser build/lint in the web repository must also pass before either PR is
merged. Device differences above remain **awaiting owner device verification**.

### End-to-end publication rule

The native APK and the Cloudflare-hosted web code must both contain the
complementary safe-area and Back-handler changes. Publishing only one side
leaves older WebViews with the browser-history fallback. Keep the previous
signed Flutter application untouched until an authorized in-place upgrade is
proven on a device; never publish a debug `.shelltest` APK to the Play Store.

1. Keep Flutter installed, test debug shell side by side. Test clean install,
   returning account, explicit logout, offline recovery, uploads/downloads,
   news share, notification permission, and five-root navigation.
2. With valid Firebase/Gateway settings, verify token opt-in/revoke and a real
   test notification on foreground, background, locked screen and killed process.
3. Confirm only an **already-connected, admitted** AI call registers with
   Telecom. Test native notification Hang Up, headset Hang Up, system mute,
   earpiece, wired and Bluetooth endpoints, telephone interruption,
   home/lock/Doze, renderer death and original Gateway NGN call settlement.
4. Confirm invoice/deposit webhooks using the *actual provider's* signed events
   and account mapping, and buy-data fulfillment using source receipts. Do not
   run a customer-funded live purchase without the owner's explicit amount
   and test procedure.
5. Review the Google Play Payments policy with the actual AI-charging and
   transfer flows. Google Play Billing may be required for AI reply/call
   consumption even though utility bills and P2P payments have exceptions.
   Review Data safety, privacy disclosure, foreground-service phone-call
   declaration, screenshots, account deletion, financial feature declarations,
   and store listing. Only a reviewed, signed candidate may enter internal
   testing. Promotion needs separate approval.

No biometric lock implementation is planned in this release.
