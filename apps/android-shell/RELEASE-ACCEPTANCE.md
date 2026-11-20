# Masanawa Android: Kotlin shell release and owner handoff

**Owner decision, 20 November 2026:** The Kotlin WebView shell is now the
primary Masanawa Android application, superseding Flutter for new releases.
Both debug and release launcher names are **Masanawa**. The launch window is
neutral (no extra splash emblem or artificial delay); the hosted website owns
the branded loading state. Android 12 and later still enforce a brief system
startup screen, which cannot be removed entirely.

**Automatic web updates:** The shell checks the public
`/masanawa-web-release.json` marker at launch, on resume, and every three
minutes while foregrounded. Each web build writes a fresh revision to this
file. The shell reloads the current route without clearing cookies or account
storage once no call, upload, draft, recording, or media playback is active.
If the marker is not yet deployed, the shell uses the public homepage as a
temporary fallback. Network failure never signs the user out. Native Kotlin
changes, Firebase configuration and Android permissions still require a
new APK installation; web updates do not rewrite native code.

The Flutter source remains preserved for rollback/history, but it is no longer
the Android product's release target. `com.masanawa.app` is still distinct from
the Flutter package, so this cannot replace the old app *in place*. Previously
installed Kotlin APKs signed with a different debug key must be uninstalled
before a differently signed build can be installed. An owner-signed release
keystore should be reused across all subsequent release APKs.

The signed-release workflow builds both an installable APK and AAB using the
owner's protected signing credentials, when those credentials are configured.
Android target SDK is 36. Delivery of an APK alone does not establish that
every live payment, telecom or device-specific integration is verified.

## Firebase Android identity (owner-supplied configuration)

The supplied `google-services.json` is checked into
`apps/android-shell/app/google-services.json`; it registers **`com.masanawa.app`**
in Firebase project **`masanawa-mobile`**. The Kotlin shell's application ID
now exactly matches that registration in both debug and release, and Google's
Services Gradle plugin generates the Firebase resources directly from this file.
The previous `FIREBASE_*` build-secret fallback is removed.

**Important:** `com.masanawa.app` is a separate Android application identity
from the prior `ng.unigeria.unigeria` Flutter app. They can coexist on a device,
but the Kotlin package is **not** an in-place Play Store update to Flutter.
The debug and signed Kotlin variants now have the **same package ID**:
to install a differently signed variant, remove the earlier Kotlin build
first, not the separate Flutter app. Before public distribution, the owner
must confirm that `com.masanawa.app` is the intended Google Play listing.

The JSON contains Firebase **client configuration**, not the private server
credential required to send FCM messages. Backend sending credentials and
test notifications must be verified separately; a compiled APK alone does not
prove that cloud push delivery has been configured.

### Notification implementation audit — 2026-11-18

| Item | State |
| --- | --- |
| Firebase Android client identity and generated resources | Implemented from owner JSON; debug CI passes, signed release awaits owner key |
| Android 13+ runtime permission | Implemented with explicit user opt-in; automatic rebind never re-prompts |
| Account-scoped token opt-in, revocation, and renewal | Implemented in web Gateway binding; refresh on app resume; verify on phone |
| Incoming push and separate work/call channels | Implemented; call channel requires valid call ID, as on the server |
| Notification destination isolation | Implemented unique request code per deep-link destination |
| Small monochrome icon, color and lock-screen privacy | Implemented, including active Telecom call notification |
| Foreground and background notification delivery | Code path present; real FCM sends remain to be tested on device |
| Server FCM v1 sender | Implemented in `packages/mobile-push`; verify server-side service account belongs to `masanawa-mobile` before production |
| Debug/release signature and App Links association | Owner-dependent fingerprint verification; debug cannot claim release association |
| Notification action reply, per-chat quick controls, and enhanced call controls | Not implemented; separate feature design and abuse/authorization review needed |

Required end-to-end device scenarios: opted-in account receives two distinct
contact notifications (each opens its own conversation); a legitimate incoming
call uses the call channel; dismissing notifications does not alter unread
history; opt-out stops delivery; denied/revoked Android permission does not
trigger an unsolicited prompt on resume; FCM token rotation binds to the
correct logged-in account; locked-screen text reveals no contact or balance.

## Managed GitHub Actions secrets (never add to source or a chat)

- `SHELL_RELEASE_KEYSTORE_BASE64`: base64 of the authorized **upload**
  keystore. The owner retains the original securely.
- `SHELL_RELEASE_STORE_PASSWORD`, `SHELL_RELEASE_KEY_PASSWORD`,
  `SHELL_RELEASE_KEY_ALIAS`: existing authorized upload-key parameters.
- `SHELL_EXPECTED_UPLOAD_SHA256`: verified SHA-256 certificate fingerprint of
  that upload key. The workflow fails if the keystore differs.
- The Android client configuration is the tracked `google-services.json`;
  no old `FIREBASE_*` overrides are accepted. The backend FCM service account
  is a **separate** managed secret.

From GitHub Actions run **Masanawa Android signed release** with a
`version_code` above the previous Kotlin release. It produces a signed APK
for direct installation and an AAB for later store submission. Neither is
automatically submitted to Google Play. The package is not an in-place
upgrade to the former Flutter application.

## Digital Asset Links

Find the **App signing key certificate SHA-256** in Google Play Console >
Release > Setup > App signing. After owner verification, host precisely:

```json
[
  {
    "relation": ["delegate_permission/common.handle_all_urls"],
    "target": {
      "namespace": "android_app",
      "package_name": "com.masanawa.app",
      "sha256_cert_fingerprints": ["OWNER_PLAY_APP_SIGNING_SHA256"]
    }
  }
]
```

at `https://app.masanawa.com/.well-known/assetlinks.json` with JSON content
type, no redirect or login. Replace the template token with the actual
fingerprint; **never deploy the token as a real association**. Debug builds
are signed with a different key from release and therefore cannot verify
the release certificate association. Check verification with
`adb shell pm get-app-links com.masanawa.app` on the signed release.

## Production acceptance on a real handset

### Native-feel and system UI verification (2026-11-18)

The Kotlin host deliberately fills the Android window. CSS owns the status,
gesture/three-button navigation, display-cutout, and IME safe areas, with
Android-supplied CSS inset fallbacks for older WebViews. Do **not** restore
native `container.setPadding(...)` or consume the FrameLayout window insets:
that recreates the detached/floating bottom tabs and double keyboard offsets.

The debug-signed APK from the **Kotlin Android Shell** workflow installs
alongside Flutter under the new `com.masanawa.app` identity. Install the
owner-signed release APK for ongoing use when available. These are
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
| Startup/cold launch | Neutral Android system window transitions directly to the web app's branded loading screen; no redundant icon or persistent blank screen. |
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
leaves older WebViews with the browser-history fallback. The separate old
Flutter package may be removed by its owner after the Kotlin app is installed
and account access is verified; it cannot be silently overwritten in place.
Never publish a debug APK to the Play Store.

1. Verify the new primary Kotlin app on device. Test clean install,
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
