import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_screen.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

class _SignedIn extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(
      id: 'fan-1', name: 'Masanawa fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-12T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'signed-in-test',
        refreshToken: 'refresh-test',
        accessExpiresIn: 900,
        user: user,
      ),
    );
  }
}

void main() {
  testWidgets('compact GB Wallet never represents legacy money as MB',
      (tester) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: Scaffold(body: GbWalletScreen())),
    ));
    expect(find.text('Balance unavailable'), findsOneWidget);
    expect(find.byKey(const ValueKey('gb-wallet-balance-card')), findsOneWidget);
    expect(find.text('Exact MB balance unavailable'), findsNothing);
    expect(find.text('Send'), findsOneWidget);
    expect(find.text('Request'), findsOneWidget);
    final redeem = tester.getCenter(find.text('Redeem'));
    final add = tester.getCenter(find.text('Add data'));
    final request = tester.getCenter(find.text('Request'));
    final send = tester.getCenter(find.text('Send'));
    expect(redeem.dy, add.dy);
    expect(request.dy, send.dy);
    expect(redeem.dx, lessThan(add.dx));
    expect(request.dx, lessThan(send.dx));
    expect(redeem.dy, lessThan(request.dy));
    expect(tester.takeException(), isNull);
  });

  testWidgets('reads a scoped authoritative MB summary with separate welcome credit',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbWalletSummaryProvider.overrideWith(
          (ref, owner) async => const GbWalletBalance(
            totalMb: 11000,
            availableMb: 10850,
            purchasedAvailableMb: 10375,
            welcomeAvailableMb: 475,
            reservedMb: 150,
            frozen: false,
          ),
        ),
      ],
      child: const MaterialApp(home: Scaffold(body: GbWalletScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('10.85 GB'), findsOneWidget);
    expect(find.text('10,850 MB'), findsOneWidget);
    await tester.tap(find.text('Balance details'));
    await tester.pumpAndSettle();
    expect(find.text('475 MB'), findsOneWidget);
    expect(find.text('150 MB'), findsOneWidget);
    expect(find.text('Exact MB balance unavailable'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  test('rejects fabricated or inconsistent MB readback', () {
    final valid = <String, dynamic>{
      'balance': {
        'unit': 'MB',
        'conversion': 'decimal_1000',
        'totalMb': 11000,
        'totalGb': '11',
        'availableMb': 10850,
        'availableGb': '10.85',
        'purchasedAvailableMb': 10375,
        'welcomeAvailableMb': 475,
        'reservedMb': 150,
        'frozen': false,
      },
    };
    expect(GbWalletBalance.fromJson(valid).availableMb, 10850);
    expect(decimalGb(10001), '10.001');
    expect(decimalGb(500), '0.5');
    expect(groupedMb(1234567), '1,234,567');
    expect(() => GbWalletBalance.fromJson({
      ...valid,
      'balance': {...(valid['balance'] as Map<String, dynamic>), 'unit': 'MSNW'},
    }), throwsFormatException);
    expect(() => GbWalletBalance.fromJson({
      ...valid,
      'balance': {...(valid['balance'] as Map<String, dynamic>), 'welcomeAvailableMb': 500},
    }), throwsFormatException);
  });

  testWidgets('Data enables reviewed approved bundles but never unreviewed purchase',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbDataCatalogueProvider.overrideWith((ref, owner) async =>
          [GbVerifiedBundle(
            id: 'MTN:exact-2gb', version: 'v1', network: 'MTN',
            allowanceGb: 2, costMb: 2000, validityDays: 30,
            providerAmount: '1500.00',
            expiresAt: DateTime.utc(2099),
          )]),
      ],
      child: const MaterialApp(home: Scaffold(body: DataRedemptionScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('2 GB'), findsOneWidget);
    expect(find.textContaining('2,000 MB'), findsOneWidget);
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pump();
    final action = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Review bundle'));
    expect(action.onPressed, isNull);
    expect(find.textContaining('Suggested: MTN'), findsOneWidget);
    await tester.tap(find.text('2 GB'));
    await tester.pump();
    expect(tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Review bundle')).onPressed,
      isNotNull);
    expect(find.text('Review before purchase'), findsOneWidget);
    expect(find.text('Confirm data purchase'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Data scopes bundle cards to one network and exact validity',
      (tester) async {
    tester.view.physicalSize = const Size(390, 1100);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    GbVerifiedBundle bundle(String id, String network, int days) =>
        GbVerifiedBundle(
          id: id, version: 'approved-v1', network: network,
          allowanceGb: 1, costMb: 1000, validityDays: days,
          providerAmount: '500.00', expiresAt: DateTime.utc(2099),
        );
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbDataCatalogueProvider.overrideWith((ref, owner) async => [
          bundle('mtn-daily', 'MTN', 1),
          bundle('mtn-weekly', 'MTN', 7),
          bundle('mtn-monthly', 'MTN', 30),
          bundle('mtn-other', 'MTN', 14),
          bundle('airtel-daily', 'AIRTEL', 1),
        ]),
      ],
      child: const MaterialApp(home: Scaffold(body: DataRedemptionScreen())),
    ));
    await tester.pumpAndSettle();
    expect(find.text('All'), findsNothing);
    expect(find.text('Choose a network to see bundles'), findsOneWidget);
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-daily')),
      findsNothing);
    await tester.tap(find.byKey(const ValueKey('data-network-MTN')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-daily')),
      findsOneWidget);
    expect(find.byKey(const ValueKey('verified-data-bundle-airtel-daily')),
      findsNothing);
    await tester.tap(find.byKey(const ValueKey('data-validity-weekly')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-daily')),
      findsNothing);
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-weekly')),
      findsOneWidget);
    expect(find.text('7 days'), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('data-validity-monthly')));
    await tester.tap(find.byKey(const ValueKey('data-validity-monthly')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-monthly')),
      findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('data-network-AIRTEL')));
    await tester.tap(find.byKey(const ValueKey('data-network-AIRTEL')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('verified-data-bundle-airtel-daily')),
      findsOneWidget);
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('data-validity-any'))).selected, isTrue);
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pump();
    expect(tester.widget<ChoiceChip>(find.byKey(
      const ValueKey('data-network-AIRTEL'))).selected, isTrue,
      reason: 'manual selection must win over a ported-number prefix');
    expect(find.byKey(const ValueKey('verified-data-bundle-mtn-daily')),
      findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Data never offers unverified Flutterwave purchases',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbDataCatalogueProvider.overrideWith((ref, owner) async => []),
      ],
      child: const MaterialApp(home: Scaffold(
        body: DataRedemptionScreen(),
      )),
    ));
    await tester.pumpAndSettle();
    expect(find.text('No verified GB bundles available'), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
        isNull);
    await tester.enterText(find.byType(TextField), 'not a phone');
    await tester.pump();
    expect(find.text('Enter a valid Nigerian mobile number'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
