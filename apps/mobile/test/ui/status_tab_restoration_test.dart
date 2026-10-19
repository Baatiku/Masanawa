import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/screens/status/status_screen.dart';

void main() {
  testWidgets('Status restores selected tab after recreation for same account', (tester) async {
    Widget shell(String owner) => MaterialApp(
      restorationScopeId: 'masanawa-status-test',
      home: Scaffold(
        body: MasanawaStatusTabs(
          key: ValueKey('account-$owner'),
          accountKey: owner,
          updates: const Center(child: Text('Approved updates')),
          videos: const Center(child: Text('Approved videos')),
        ),
      ),
    );

    await tester.pumpWidget(shell('alpha'));
    expect(find.text('Approved updates'), findsOneWidget);
    await tester.tap(find.text('Videos'));
    await tester.pumpAndSettle();
    expect(find.text('Approved videos'), findsOneWidget);

    await tester.restartAndRestore();
    await tester.pumpAndSettle();
    expect(find.text('Approved videos'), findsOneWidget);

    await tester.pumpWidget(shell('beta'));
    await tester.pumpAndSettle();
    expect(find.text('Approved updates'), findsOneWidget);
  });
}
