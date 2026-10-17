import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_wordmark.dart';

void main() {
  testWidgets('wordmark on white uses the strong accessible brand green', (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(body: MasanawaWordmark()),
    ));
    final wordmark = tester.widget<Text>(find.text('Masanawa'));
    expect(wordmark.style?.color, MasanawaColors.light().brandStrong);
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
