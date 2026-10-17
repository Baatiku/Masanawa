import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/theme/masanawa_theme.dart';

void main() {
  test('admin app shares canonical customer green and white tokens', () {
    final colors = MasanawaColors.light();
    expect(colors.brand, const Color(0xFF25D366));
    expect(colors.brandStrong, const Color(0xFF075E54));
    expect(colors.surfaceCard, Colors.white);
    expect(colors.surfaceBg, Colors.white);
    expect(colors.structuralBorder, const Color(0xFFE9EDEF));
  });

  testWidgets('admin buttons are large enough and contrast with green',
      (tester) async {
    final theme = buildMasanawaTheme(brightness: Brightness.light);
    expect(theme.colorScheme.onPrimary, const Color(0xFF111B21));
    await tester.pumpWidget(MaterialApp(
      theme: theme,
      home: Scaffold(body: Center(child: FilledButton(
        onPressed: () {}, child: const Text('Continue'),
      ))),
    ));
    final size = tester.getSize(find.byType(FilledButton));
    expect(size.height, greaterThanOrEqualTo(48));
  });
}
