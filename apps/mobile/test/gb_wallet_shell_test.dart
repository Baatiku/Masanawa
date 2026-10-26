import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_screen.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';
import 'package:masanawa/src/gb_wallet/gb_data_pending_store.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';

class _PendingDataStore extends GbDataPendingStore {
  final records = <String, GbPendingDataPurchase>{};
  @override
  Future<GbPendingDataPurchase?> read(String id) async => records[id];
  @override
  Future<void> write(String id, GbPendingDataPurchase record) async {
    records[id] = record;
  }
  @override
  Future<void> clear(String id) async { records.remove(id); }
}

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
    await tester.ensureVisible(find.text('Quick actions'));
    await tester.pump();
    final redeem = tester.getCenter(find.text('Redeem'));
    final add = tester.getCenter(find.text('Add data').last);
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
        gbActivityPageProvider.overrideWith((ref, request) async =>
          const GbActivityPage([],null)),
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

  testWidgets('Wallet leads with account and two real recent movements',
      (tester) async {
    tester.view.physicalSize = const Size(390, 950);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final entries = [
      for (var i = 1; i <= 3; i++)
        GbActivityItem(id: 'mb:$i', operationId: 'send_$i', unit: 'MB',
          amount: -i * 100, kind: 'send', status: 'completed',
          createdAt: DateTime.utc(2026, 10, 25)),
    ];
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      gbWalletSummaryProvider.overrideWith((ref, owner) async =>
        const GbWalletBalance(totalMb: 1500, availableMb: 1500,
          purchasedAvailableMb: 1500, welcomeAvailableMb: 0,
          reservedMb: 0, frozen: false)),
      gbActivityPageProvider.overrideWith((ref, request) async =>
        GbActivityPage(entries, null)),
    ], child: const MaterialApp(home: Scaffold(body: GbWalletScreen()))));
    await tester.pumpAndSettle();
    expect(find.text('Masanawa fan'), findsOneWidget);
    expect(find.text('Data balance'), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-preview-mb:1')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-preview-mb:2')), findsOneWidget);
    expect(find.byKey(const ValueKey('wallet-preview-mb:3')), findsNothing);
    expect(find.text('See all'), findsOneWidget);
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
        gbDataPendingStoreProvider.overrideWithValue(_PendingDataStore()),
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
    await tester.scrollUntilVisible(find.byType(DropdownButtonFormField<String>), 150, scrollable: find.byType(Scrollable).first);
    expect(find.text('Choose a network to see verified bundles'), findsOneWidget);
    expect(find.text('2 GB'), findsNothing);
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pump();
    await tester.ensureVisible(find.text('Monthly'));
    await tester.tap(find.text('Monthly'));
    await tester.pump();
    expect(find.text('2 GB'), findsOneWidget);
    expect(find.textContaining('2,000 MB'), findsOneWidget);
    final action = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Review bundle'));
    expect(action.onPressed, isNull);
    expect(find.textContaining('Suggested: MTN'), findsOneWidget);
    await tester.ensureVisible(find.text('2 GB'));
    await tester.tap(find.text('2 GB'));
    await tester.pumpAndSettle();
    expect(find.text('Confirm data purchase'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Data never offers unverified Flutterwave purchases',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbDataPendingStoreProvider.overrideWithValue(_PendingDataStore()),
        gbDataCatalogueProvider.overrideWith((ref, owner) async => []),
      ],
      child: const MaterialApp(home: Scaffold(
        body: DataRedemptionScreen(),
      )),
    ));
    await tester.pumpAndSettle();
    expect(find.text('No verified GB bundles available'), findsOneWidget);
    await tester.scrollUntilVisible(find.widgetWithText(FilledButton, 'Review bundle'), 150, scrollable: find.byType(Scrollable).first);
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Review bundle')).onPressed,
        isNull);
    await tester.scrollUntilVisible(find.byType(TextField), -150, scrollable: find.byType(Scrollable).first);
    await tester.enterText(find.byType(TextField), 'not a phone');
    await tester.pump();
    expect(find.text('Enter a valid Nigerian mobile number'), findsOneWidget);
    await tester.ensureVisible(find.byType(DropdownButtonFormField<String>));
    await tester.tap(find.byType(DropdownButtonFormField<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('MTN').last);
    await tester.pumpAndSettle();
    expect(find.text('No verified GB bundles available'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('selecting a verified bundle opens its exact review sheet',
      (tester) async {
    final dio = Dio(BaseOptions(baseUrl: kApiBaseUrl));
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path == '/v1/gb/data/quote') {
        handler.resolve(Response(requestOptions: options, statusCode: 200,
          data: {'previewOnly': true, 'quote': {
            'id': 'MTN:exact-2gb', 'version': 'v1', 'network': 'MTN',
            'allowanceGb': 2, 'costMb': 2000, 'validityDays': 30,
            'providerAmount': '1500.00',
            'expiresAt': DateTime.utc(2099).toIso8601String(),
            'recipientPhone': '+2348031234567',
            'quoteExpiresAt': DateTime.now().toUtc()
                .add(const Duration(minutes: 2)).toIso8601String(),
            'requiresWalletReservation': true, 'feeMb': 0,
          }}));
      } else {
        handler.reject(DioException(requestOptions: options,
          type: DioExceptionType.badResponse));
      }
    }));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
      gbDataPendingStoreProvider.overrideWithValue(_PendingDataStore()),
      gbDataCatalogueProvider.overrideWith((ref, owner) async => [
        GbVerifiedBundle(id: 'MTN:exact-2gb', version: 'v1', network: 'MTN',
          allowanceGb: 2, costMb: 2000, validityDays: 30,
          providerAmount: '1500.00', expiresAt: DateTime.utc(2099)),
      ]),
    ], child: const MaterialApp(home: Scaffold(body: DataRedemptionScreen()))));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pumpAndSettle();
    await tester.tap(find.byType(DropdownButtonFormField<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('MTN').last);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Monthly'));
    await tester.tap(find.text('Monthly'));
    await tester.pumpAndSettle();
    expect(find.text('2 GB'), findsOneWidget);
    await tester.ensureVisible(find.text('2 GB'));
    await tester.tap(find.text('2 GB'));
    await tester.pumpAndSettle();
    expect(find.text('Review data purchase'), findsOneWidget);
    expect(find.text('2,000 MB'), findsWidgets);
    expect(find.text('+2348031234567'), findsOneWidget);
    expect(find.text('Continue to purchase'), findsOneWidget);
    await tester.tap(find.text('Continue to purchase'));
    await tester.pumpAndSettle();
    expect(find.text('Confirm data purchase'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a ported-number manual operator choice survives phone edits',
      (tester) async {
    GbVerifiedBundle bundle(String id, String network, int gb) =>
      GbVerifiedBundle(
        id: id, version: 'approved-v1', network: network,
        allowanceGb: gb, costMb: gb * 1000, validityDays: 30,
        providerAmount: '1500.00', expiresAt: DateTime.utc(2099),
      );
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        gbDataPendingStoreProvider.overrideWithValue(_PendingDataStore()),
        gbDataCatalogueProvider.overrideWith((ref, owner) async => [
          bundle('mtn-2gb', 'MTN', 2),
          bundle('airtel-3gb', 'AIRTEL', 3),
        ]),
      ],
      child: const MaterialApp(home: Scaffold(body: DataRedemptionScreen())),
    ));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.byType(DropdownButtonFormField<String>), 150, scrollable: find.byType(Scrollable).first);
    expect(find.text('Choose a network to see verified bundles'), findsOneWidget);
    await tester.tap(find.byType(DropdownButtonFormField<String>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Airtel').last);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Monthly'));
    await tester.tap(find.text('Monthly'));
    await tester.pump();
    expect(find.text('3 GB'), findsOneWidget);
    expect(find.text('2 GB'), findsNothing);
    // The 0803 range originally belonged to MTN. A ported Airtel recipient
    // must retain the user's explicit Airtel choice across both edits.
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pump();
    expect(find.text('Airtel'), findsOneWidget);
    expect(find.text('3 GB'), findsOneWidget);
    expect(find.text('2 GB'), findsNothing);
    expect(find.textContaining('Suggested: MTN'), findsNothing);
    await tester.enterText(find.byType(TextField), '08031234568');
    await tester.pump();
    expect(find.text('Airtel'), findsOneWidget);
    expect(find.text('3 GB'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
