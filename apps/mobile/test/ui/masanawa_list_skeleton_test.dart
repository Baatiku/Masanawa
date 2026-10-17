import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_list_skeleton.dart';

void main() {
  testWidgets('conversation skeleton is content-shaped and accessible', (tester) async {
    final semantics = tester.ensureSemantics();
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(
        body: MasanawaListSkeleton(itemCount: 3, semanticLabel: 'Loading Masana conversations'),
      ),
    ));
    expect(find.byType(CircleAvatar), findsNWidgets(3));
    expect(find.bySemanticsLabel('Loading Masana conversations'), findsOneWidget);
    semantics.dispose();
  });

  testWidgets('loading skeleton fits narrow layouts and large text', (tester) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const MediaQuery(
        data: MediaQueryData(size: Size(320, 640), textScaler: TextScaler.linear(2)),
        child: Scaffold(body: MasanawaListSkeleton()),
      ),
    ));
    expect(tester.takeException(), isNull);
  });
}
