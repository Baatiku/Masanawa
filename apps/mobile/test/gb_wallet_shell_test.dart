import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_screen.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';

void main() {
  testWidgets('compact GB Wallet never represents legacy money as MB',
      (tester) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const MaterialApp(home: Scaffold(
      body: GbWalletScreen(),
    )));
    expect(find.text('— GB'), findsOneWidget);
    expect(find.text('Exact MB balance unavailable'), findsOneWidget);
    expect(find.text('Send'), findsOneWidget);
    expect(find.text('Request'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Data never offers unverified Flutterwave purchases',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(
      body: DataRedemptionScreen(),
    )));
    expect(find.text('No verified GB bundles available'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
        isNull);
    await tester.enterText(find.byType(TextField), 'not a phone');
    await tester.pump();
    expect(find.text('Enter a valid Nigerian mobile number'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
