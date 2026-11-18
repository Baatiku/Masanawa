import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/theme/masanawa_theme.dart';

void main() {
  test('admin and customer UX use simplified ripple and a11y transitions', () {
    final theme = buildMasanawaTheme(brightness: Brightness.light);
    expect(theme.splashFactory, InkRipple.splashFactory);
    expect(theme.pageTransitionsTheme.builders[TargetPlatform.android],
        isA<MasanawaPageTransitionsBuilder>());
    expect(theme.scaffoldBackgroundColor, Colors.white);
  });
}
