import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/masanawa_profile_skeleton.dart';

void main() {
  testWidgets('profile loading keeps accessible label and back affordance', (tester) async {
    final semantics = tester.ensureSemantics();
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(title: const Text('Masana profile')),
        body: const MasanawaProfileSkeleton(semanticLabel: 'Loading Masana profile'),
      ),
    ));
    expect(find.bySemanticsLabel('Loading Masana profile'), findsOneWidget);
    expect(find.text('Masana profile'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);
    semantics.dispose();
  });

  testWidgets('profile placeholder has no narrow-screen overflow', (tester) async {
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
        child: Scaffold(body: MasanawaProfileSkeleton()),
      ),
    ));
    expect(tester.takeException(), isNull);
  });
}
