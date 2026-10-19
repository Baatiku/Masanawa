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

  testWidgets('reduced-motion transition returns the child at animation zero',
      (tester) async {
    const child = Text('No transition artwork');
    Widget? result;
    final route = MaterialPageRoute<void>(builder: (_) => child);
    await tester.pumpWidget(MediaQuery(
      data: const MediaQueryData(disableAnimations: true),
      child: Builder(builder: (context) {
        result = const MasanawaPageTransitionsBuilder().buildTransitions<void>(
          route,
          context,
          const AlwaysStoppedAnimation<double>(0),
          const AlwaysStoppedAnimation<double>(0),
          child,
        );
        return const SizedBox.shrink();
      }),
    ));
    expect(identical(result, child), isTrue);
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
    // Flush the route's initial offstage layout, then render its first frame.
    // Do not settle the animation: reduced motion must show content immediately.
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 1));
    expect(find.text('Next'), findsOneWidget);
  });
}
