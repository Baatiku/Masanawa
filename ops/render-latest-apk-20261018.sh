#!/usr/bin/env bash
set -Eeuo pipefail
export CI=true FLUTTER_SUPPRESS_ANALYTICS=true DART_SUPPRESS_ANALYTICS=true
export ROOT_DIR="$(pwd)"
mkdir -p build-artifacts /opt/masanawa-apk /opt/masanawa-apk/android-sdk/cmdline-tools
TOOLS=/opt/masanawa-apk
export ANDROID_HOME="$TOOLS/android-sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export JAVA_HOME="$TOOLS/jdk"
export FLUTTER_ROOT="$TOOLS/flutter"
export GRADLE_USER_HOME="$TOOLS/gradle"
export PUB_CACHE="$TOOLS/pub-cache"
export PATH="$JAVA_HOME/bin:$FLUTTER_ROOT/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$PATH"
echo '=== Source SHA ==='
git rev-parse HEAD | tee build-artifacts/source-commit.txt
echo '=== Java 17 ==='
if [ ! -x "$JAVA_HOME/bin/java" ]; then
  curl -fLsS --retry 3 'https://api.adoptium.net/v3/binary/latest/17/ga/linux/x64/jdk/hotspot/normal/eclipse' -o "$TOOLS/jdk.tar.gz"
  mkdir -p "$JAVA_HOME"
  tar -xzf "$TOOLS/jdk.tar.gz" -C "$JAVA_HOME" --strip-components=1
fi
echo '=== Flutter stable binary SDK ==='
if [ ! -x "$FLUTTER_ROOT/bin/flutter" ]; then
  curl -fLsS --retry 3 'https://storage.googleapis.com/flutter_infra_release/releases/releases_linux.json' -o "$TOOLS/flutter-release.json"
  python3 - "$TOOLS/flutter-release.json" "$TOOLS/flutter-url.txt" <<'PY'
import json,sys
d=json.load(open(sys.argv[1]))
h=d['current_release']['stable']
r=next(r for r in d['releases'] if r['hash']==h)
open(sys.argv[2],'w').write('https://storage.googleapis.com/flutter_infra_release/releases/'+r['archive'])
print('Flutter SDK:',r['version'])
PY
  curl -fL --retry 3 "$(cat "$TOOLS/flutter-url.txt")" -o "$TOOLS/flutter.tar.xz"
  tar -xJf "$TOOLS/flutter.tar.xz" -C "$TOOLS"
fi
git config --global --add safe.directory "$FLUTTER_ROOT" || true
echo '=== Android SDK ==='
if [ ! -x "$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager" ]; then
  curl -fL --retry 4 'https://dl.google.com/android/repository/commandlinetools-linux-15859902_latest.zip' -o "$TOOLS/android-tools.zip"
  mkdir -p "$TOOLS/extract"
  unzip -q "$TOOLS/android-tools.zip" -d "$TOOLS/extract"
  mv "$TOOLS/extract/cmdline-tools" "$ANDROID_HOME/cmdline-tools/latest"
fi
mkdir -p "$HOME/.android"
touch "$HOME/.android/repositories.cfg"
yes | sdkmanager --licenses >/dev/null || true
sdkmanager 'platform-tools' 'platforms;android-37.0' 'build-tools;36.0.0' 'ndk;28.2.13676358' 'cmake;3.22.1'
[ -d "$ANDROID_HOME/platforms/android-37.0" ] && ln -sf android-37.0 "$ANDROID_HOME/platforms/android-37" || true
echo '=== Build ==='
cd "$ROOT_DIR/apps/mobile"
printf 'sdk.dir=%s\nflutter.sdk=%s\n' "$ANDROID_HOME" "$FLUTTER_ROOT" > android/local.properties
flutter --version
flutter pub get
flutter build apk --release --build-name=1.0.6 --build-number=106018 --dart-define=API_BASE_URL=https://masanawa-gateway-production-338f.up.railway.app --dart-define=AGENT_BASE_URL=https://masanawa-gateway-production-338f.up.railway.app
APK=build/app/outputs/flutter-apk/app-release.apk
test -s "$APK"
cp "$APK" "$ROOT_DIR/build-artifacts/masanawa-95af3d0.apk"
cd "$ROOT_DIR/build-artifacts"
sha256sum masanawa-95af3d0.apk > masanawa-95af3d0.sha256
cat > index.html <<'HTML'
<!doctype html><html><body><h1>Masanawa Android APK — main 95af3d0</h1><p><a href="masanawa-95af3d0.apk">Download APK</a></p><p><a href="masanawa-95af3d0.sha256">SHA256</a> | <a href="source-commit.txt">Source SHA</a></p></body></html>
HTML
