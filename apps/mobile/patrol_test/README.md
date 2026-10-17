# Masanawa Android system-level regression suite (Patrol)

This suite runs **against an actual Android handset or emulator**. Do not
substitute `flutter test`: Flutter widget tests cannot operate native OS
permission sheets, the photo picker or Android's audio-focus lifecycle.

## Run

From `apps/mobile` after installing the project's pinned Flutter/Dart SDK
and Android SDK, execute:

```bash
flutter pub get
dart pub global activate patrol_cli 4.8.0
patrol doctor
patrol test --target patrol_test/native_permissions_test.dart
```

Run with an Android device connected via ADB. The app's existing
`ng.unigeria.unigeria` application ID and native MainActivity are retained.
No production credentials, OTP, real wallet or test account are required for
the permission + background/resume regression.

The Android instrumentation runner clears package data per test run.
Do not run this suite against an owner's daily-driver production install if
you need to retain locally stored chat attachments.

**Further device acceptance** (separate from this deterministic smoke test):
sign in with a dedicated QA account; send emoji, images and recorded voice,
verify audio previews, start/stop a Gemini Live call, and check interrupted
microphone ownership. These require authenticated QA fixtures and an actual
provider and cannot be declared passing by this harness alone.

Do not commit `.patrol.env`, device credentials, media recordings, screenshots
or signing keys.
