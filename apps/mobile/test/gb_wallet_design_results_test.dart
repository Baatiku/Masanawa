import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_flow_components.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  testWidgets('shared wallet result presents one concise, accessible outcome',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const Scaffold(
        body: GbWalletResultSummary(
          title: 'MB sent',
          detail: 'Your purchased MB transfer is confirmed.',
        ),
      ),
    ));
    expect(find.text('MB sent'), findsOneWidget);
    expect(find.text('Your purchased MB transfer is confirmed.'),
        findsOneWidget);
    expect(find.byIcon(Icons.check_circle_outline_rounded), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
