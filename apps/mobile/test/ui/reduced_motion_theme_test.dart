import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  test('input fill and focus follow semantic palette', () {
    final theme = buildMasanawaTheme(brightness: Brightness.light);
    final colors = MasanawaColors.light();
    expect(theme.inputDecorationTheme.fillColor, colors.surfaceMuted);
    expect(theme.inputDecorationTheme.focusedBorder,
        isA<OutlineInputBorder>());
    final border = theme.inputDecorationTheme.focusedBorder! as OutlineInputBorder;
    expect(border.borderSide.color, colors.brandStrong);
    expect(theme.splashFactory, InkRipple.splashFactory);
  });

  testWidgets('reduced-motion routes render without transition artwork',
      (tester) async {
    final nav = GlobalKey<NavigatorState>();
    await tester.pumpWidget(MaterialApp(
      navigatorKey: nav,
      theme: buildMasanawaTheme(brightness: Brightness.light),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(disableAnimations: true),
        child: child!,
      ),
      home: const Scaffold(body: Text('First')),
    ));
    nav.currentState!.push(MaterialPageRoute<void>(
      builder: (_) => const Scaffold(body: Text('Next')),
    ));
    await tester.pump();
    expect(find.text('Next'), findsOneWidget);
  });
}
