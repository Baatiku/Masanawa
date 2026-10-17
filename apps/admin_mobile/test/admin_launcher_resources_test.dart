import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('admin launcher uses approved density-aware adaptive phone-M icon', () {
    final manifest = File('android/app/src/main/AndroidManifest.xml')
        .readAsStringSync();
    expect(manifest, contains('android:icon="@mipmap/ic_launcher"'));
    expect(manifest, contains('android:roundIcon="@mipmap/ic_launcher"'));
    final adaptive = File(
      'android/app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml',
    ).readAsStringSync();
    expect(adaptive, contains('@drawable/ic_launcher_foreground'));
    expect(adaptive, contains('@color/ic_launcher_background'));
    for (final density in ['mdpi', 'hdpi', 'xhdpi', 'xxhdpi', 'xxxhdpi']) {
      expect(File('android/app/src/main/res/mipmap-$density/ic_launcher.png')
          .existsSync(), isTrue);
      expect(File('android/app/src/main/res/drawable-$density/'
          'ic_launcher_foreground.png').existsSync(), isTrue);
    }
  });
}
