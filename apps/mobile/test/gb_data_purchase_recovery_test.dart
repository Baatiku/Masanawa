import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';
import 'package:masanawa/src/gb_wallet/gb_data_pending_store.dart';
import 'package:masanawa/src/gb_wallet/gb_data_purchase_panel.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedIn extends SessionController {
  static SessionSignedIn signed(String id) {
    final user = AuthUser(id: id, name: id, locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-26T00:00:00Z');
    return SessionSignedIn(user, AuthTokens(accessToken: 'fixture',
      refreshToken: 'fixture', accessExpiresIn: 900, user: user));
  }
  @override
  SessionState build() => signed('fan');
  void switchTo(String id) => state = signed(id);
}

class _MemoryStore extends GbDataPendingStore {
  final records = <String, GbPendingDataPurchase>{};
  bool failWrite = false;
  @override
  Future<GbPendingDataPurchase?> read(String id) async => records[id];
  @override
  Future<void> write(String id, GbPendingDataPurchase saved) async {
    if (failWrite) throw StateError('encrypted storage unavailable');
    records[id] = saved;
  }
  @override
  Future<void> clear(String id) async { records.remove(id); }
}

class _Fixture {
  final store = _MemoryStore();
  int purchasePosts = 0, lookups = 0, reconciles = 0;
  bool loseAcknowledgement = true;
  bool lookupUnavailable = false;
  String? purchaseKey;
  final originalId = 'data_${'a' * 48}';
  late final api = _makeApi();

  ApiClient _makeApi() {
    final dio = Dio(BaseOptions(baseUrl: 'https://example.invalid'));
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path == '/v1/gb/data/quote') {
        handler.resolve(Response(requestOptions: options, statusCode: 200,
          data: {'previewOnly': true, 'quote': {
            'id': 'MTN:2gb', 'version': 'approved-v1', 'network': 'MTN',
            'allowanceGb': 2, 'costMb': 2000, 'validityDays': 30,
            'providerAmount': '1500.00',
            'expiresAt': DateTime.utc(2099).toIso8601String(),
            'recipientPhone': '+2348031234567',
            'quoteExpiresAt': DateTime.now().toUtc()
                .add(const Duration(minutes: 2)).toIso8601String(),
            'requiresWalletReservation': true, 'feeMb': 0,
          }}));
      } else if (options.path == '/v1/gb/data/redeem') {
        expect(store.records['fan'], isNotNull,
          reason: 'Encrypted original intent must precede financial POST');
        purchasePosts++;
        purchaseKey = (options.data as Map)['idempotencyKey'] as String;
        if (loseAcknowledgement) {
          handler.reject(DioException(requestOptions: options,
            type: DioExceptionType.connectionTimeout));
          return;
        }
        handler.resolve(Response(requestOptions: options, statusCode: 200,
          data: {'operationId': originalId, 'state': 'pending'}));
      } else if (options.path.startsWith('/v1/gb/data/purchases/intent/')) {
        lookups++;
        expect(options.method, 'GET');
        expect(options.path.endsWith(store.records['fan']!.idempotencyKey), isTrue);
        if (lookupUnavailable) {
          handler.reject(DioException(requestOptions: options,
            type: DioExceptionType.connectionTimeout));
          return;
        }
        final pending = store.records['fan']!;
        handler.resolve(Response(requestOptions: options, statusCode: 200,
          data: {'operationId': originalId, 'state': 'pending',
            'bundleId': pending.bundleId, 'version': pending.version,
            'recipientPhone': pending.recipientPhone,
            'costMb': pending.costMb}));
      } else if (options.path.endsWith('/reconcile')) {
        expect(options.method, 'POST');
        expect(options.path.contains(originalId), isTrue);
        reconciles++;
        handler.resolve(Response(requestOptions: options, statusCode: 200,
          data: {'operationId': originalId, 'state': 'delivered'}));
      } else {
        handler.reject(DioException(requestOptions: options,
          type: DioExceptionType.badResponse,
          response: Response(requestOptions: options, statusCode: 404)));
      }
    }));
    return ApiClient(dio: dio);
  }

  GbReadOnlyQuote quote() => GbReadOnlyQuote(
    bundle: GbVerifiedBundle(id: 'MTN:2gb', version: 'approved-v1',
      network: 'MTN', allowanceGb: 2, costMb: 2000, validityDays: 30,
      providerAmount: '1500.00', expiresAt: DateTime.utc(2099)),
    recipientPhone: '+2348031234567',
    expiresAt: DateTime.now().toUtc().add(const Duration(minutes: 2)),
  );

  Widget app({required GbReadOnlyQuote? quote}) => ProviderScope(
    overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      apiClientProvider.overrideWithValue(api),
      gbDataPendingStoreProvider.overrideWithValue(store),
      gbWalletSummaryProvider.overrideWith((ref, owner) async =>
        const GbWalletBalance(totalMb: 10000, availableMb: 10000,
          purchasedAvailableMb: 10000, welcomeAvailableMb: 0,
          reservedMb: 0, frozen: false)),
    ],
    child: MaterialApp(home: Scaffold(body: ListView(children: [
      GbDataPurchasePanel(owner: (accountId: 'fan', authorizationEpoch: 0),
        quote: quote, onStarted: () {}, onResolved: () {},
        onFinished: () {}),
    ]))),
  );
}

void main() {
  test('invalid or mismatched encrypted intents cannot be restored', () {
    final valid = {
      'idempotencyKey': 'redeem_${'a' * 48}', 'bundleId': 'MTN:2gb',
      'version': 'approved-v1', 'recipientPhone': '+2348031234567',
      'costMb': 2000,
    };
    expect(GbPendingDataPurchase.fromJson(valid).toJson(), valid);
    expect(() => GbPendingDataPurchase.fromJson({...valid,
      'recipientPhone': '08031234567'}), throwsFormatException);
    expect(() => GbPendingDataPurchase.fromJson({...valid,
      'idempotencyKey': 'redeem_fake'}), throwsFormatException);
    expect(() => GbPendingDataPurchase.fromJson({...valid,
      'costMb': 0}), throwsFormatException);
    for(final mb in [40,350,500,1050,2500]) {
      final small={...valid,'costMb':mb};
      expect(GbPendingDataPurchase.fromJson(small).toJson(),small);
    }
  });

  testWidgets('storage failure stops the original financial POST', (tester) async {
    final f = _Fixture()..store.failWrite = true;
    await tester.pumpWidget(f.app(quote: f.quote()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm data purchase'));
    await tester.pumpAndSettle();
    expect(f.purchasePosts, 0);
    expect(find.textContaining('Secure saving failed'), findsOneWidget);
    expect(f.store.records, isEmpty);
    expect(tester.takeException(), isNull);
  });

  testWidgets('account switch hides another owner’s reference without clearing it',
      (tester) async {
    final f = _Fixture();
    f.store.records['fan'] = GbPendingDataPurchase.fromJson({
      'idempotencyKey': 'redeem_${'b' * 48}',
      'bundleId': 'MTN:2gb', 'version': 'approved-v1',
      'recipientPhone': '+2348031234567', 'costMb': 2000,
    });
    await tester.pumpWidget(f.app(quote: null));
    await tester.pumpAndSettle();
    expect(find.text('Purchase pending'), findsOneWidget);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(GbDataPurchasePanel)));
    (container.read(sessionProvider.notifier) as _SignedIn).switchTo('other');
    await tester.pumpAndSettle();
    expect(find.text('Purchase pending'), findsNothing);
    expect(find.text('Copy original reference'), findsNothing);
    expect(f.store.records.containsKey('fan'), isTrue);
    expect(f.purchasePosts, 0);
    expect(tester.takeException(), isNull);
  });

  testWidgets('lost ACK survives restart; lookup and reconcile never rebuy',
      (tester) async {
    final f = _Fixture()..lookupUnavailable = true;
    await tester.pumpWidget(f.app(quote: f.quote()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Confirm data purchase'));
    await tester.pumpAndSettle();
    expect(f.purchasePosts, 1);
    expect(f.store.records['fan'], isNotNull);
    expect(find.text('Find original purchase'), findsOneWidget);
    await tester.tap(find.text('Find original purchase'));
    await tester.pumpAndSettle();
    expect(f.purchasePosts, 1);
    expect(f.lookups, 1);
    // Simulate a fresh screen/session with the same account and secure slot.
    f.lookupUnavailable = false;
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpWidget(f.app(quote: null));
    await tester.pumpAndSettle();
    expect(f.lookups, 2);
    expect(f.purchasePosts, 1);
    expect(find.text('Purchase pending'), findsOneWidget);
    expect(find.text('Copy original reference'), findsOneWidget);
    await tester.tap(find.text('Check status'));
    await tester.pumpAndSettle();
    expect(f.reconciles, 1);
    expect(f.purchasePosts, 1);
    expect(find.text('Data delivered'), findsOneWidget);
    expect(f.store.records, isEmpty);
    expect(tester.takeException(), isNull);
  });

  testWidgets('320dp Data chooser and distinct review preserve ported draft',
      (tester) async {
    tester.view.physicalSize = const Size(320, 850);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final f = _Fixture();
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      apiClientProvider.overrideWithValue(f.api),
      gbDataPendingStoreProvider.overrideWithValue(f.store),
      gbDataCatalogueProvider.overrideWith((ref, owner) async => [f.quote().bundle]),
      gbWalletSummaryProvider.overrideWith((ref, owner) async =>
        const GbWalletBalance(totalMb: 10000, availableMb: 10000,
          purchasedAvailableMb: 10000, welcomeAvailableMb: 0,
          reservedMb: 0, frozen: false)),
    ], child: const MaterialApp(home: Scaffold(body: DataRedemptionScreen()))));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Monthly'));
    await tester.tap(find.text('Monthly'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('2 GB'));
    await tester.tap(find.text('2 GB'));
    await tester.pumpAndSettle();
    expect(find.text('Review data purchase'), findsOneWidget);
    expect(find.text('+2348031234567'), findsOneWidget);
    expect(find.text('Continue to purchase'), findsOneWidget);
    await tester.tap(find.text('Continue to purchase'));
    await tester.pumpAndSettle();
    expect(find.text('Confirm data purchase'), findsOneWidget);
    expect(f.purchasePosts, 0, reason: 'Quote is not a purchase');
    await tester.ensureVisible(find.text('Back to plans'));
    await tester.tap(find.text('Back to plans'));
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(find.text('Review bundle'), 150,
      scrollable: find.byType(Scrollable).first);
    await tester.pumpAndSettle();
    expect(find.text('Review bundle'), findsOneWidget);
    expect(find.text('Confirm data purchase'), findsNothing);
    await tester.scrollUntilVisible(find.byType(TextField), -150,
      scrollable: find.byType(Scrollable).first);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text,
      '08031234567');
    expect(tester.takeException(), isNull);
  });
}
