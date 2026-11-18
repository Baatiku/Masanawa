import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_section_heading.dart';

void main() {
  testWidgets('section title remains centered with a trailing action', (tester) async {
    tester.view.physicalSize = const Size(390, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(body: Padding(
        padding: EdgeInsets.all(16),
        child: MasanawaSectionHeading('Recent transactions',
          trailing: TextButton(onPressed: null, child: Text('See all'))),
      )),
    ));
    final titleCenter = tester.getCenter(find.text('Recent transactions')).dx;
    final viewportCenter = tester.getCenter(find.byType(Scaffold)).dx;
    expect((titleCenter - viewportCenter).abs(), lessThan(1));
    expect(tester.getTopLeft(find.text('See all')).dx,
      greaterThan(titleCenter));
    expect(tester.takeException(), isNull);
  });

  testWidgets('large type stacks controls without covering the title', (tester) async {
    tester.view.physicalSize = const Size(320, 700);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const MediaQuery(data: MediaQueryData(textScaler: TextScaler.linear(2)),
        child: Scaffold(body: Padding(
          padding: EdgeInsets.all(16),
          child: MasanawaSectionHeading('Recent transactions',
            trailing: TextButton(onPressed: null, child: Text('See all'))),
        ))),
    ));
    expect(tester.getBottomLeft(find.text('Recent transactions')).dy,
      lessThan(tester.getTopLeft(find.text('See all')).dy));
    expect(tester.takeException(), isNull);
  });
}
