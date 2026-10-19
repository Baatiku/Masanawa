import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_wordmark.dart';

void main() {
  test('light chat surface is white without changing outgoing bubble identity', () {
    final colors = MasanawaColors.light();
    expect(colors.chatBg, Colors.white);
    expect(colors.surfaceBg, Colors.white);
    expect(colors.surfaceCard, Colors.white);
    expect(colors.bubbleOut, const Color(0xFFD9FDD3));
  });

  testWidgets('wordmark uses the owner-selected bright brand green', (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(body: MasanawaWordmark()),
    ));
    final wordmark = tester.widget<Text>(find.text('Masanawa'));
    expect(wordmark.style?.color, MasanawaColors.light().brand);
  });

  testWidgets('wordmark light variant stays white over a branded surface', (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(body: MasanawaWordmark(light: true)),
    ));
    final wordmark = tester.widget<Text>(find.text('Masanawa'));
    expect(wordmark.style?.color, Colors.white);
  });
}
