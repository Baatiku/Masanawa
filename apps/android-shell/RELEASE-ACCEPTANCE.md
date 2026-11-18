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
