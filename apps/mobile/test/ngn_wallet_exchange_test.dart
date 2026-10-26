import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/gb_wallet/gb_balance_card.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_summary.dart';
import 'package:masanawa/src/gb_wallet/ngn_wallet.dart';
import 'package:masanawa/src/gb_wallet/ngn_exchange_review.dart';
import 'package:masanawa/src/gb_wallet/recharge_screen.dart';
import 'package:masanawa/src/gb_wallet/ngn_funding_screen.dart';
import 'package:masanawa/src/gb_wallet/data_redemption_screen.dart';
import 'package:masanawa/src/gb_wallet/gb_data_catalogue.dart';
import 'package:masanawa/src/gb_wallet/gb_data_pending_store.dart';

class _DataMemoryStore extends GbDataPendingStore {
  final records = <String, GbPendingDataPurchase>{};
  @override
  Future<GbPendingDataPurchase?> read(String id) async => records[id];
  @override
  Future<void> write(String id, GbPendingDataPurchase saved) async {
    records[id] = saved;
  }
  @override
  Future<void> clear(String id) async { records.remove(id); }
}

class _Session extends SessionController {
  @override
  SessionState build() => user('fan');
  static SessionSignedIn user(String id) {
    final person = AuthUser(
      id: id,
      name: id,
      contactPhone: id == 'fan' ? '08031234567' : null,
      locale: 'en',
      status: 'ACTIVE',
      role: 'USER',
      isNewUser: false,
      createdAt: '2026-10-25T00:00:00Z',
    );
    return SessionSignedIn(
      person,
      AuthTokens(
        accessToken: 'fixture',
        refreshToken: 'fixture-refresh',
        accessExpiresIn: 900,
        user: person,
      ),
    );
  }

  void change(String id) => state = user(id);
}

class _MemoryStore extends NgnPendingStore {
  final pending = <String, NgnExchangeReview>{};
  @override
  Future<NgnExchangeReview?> read(String id) async => pending[id];
  @override
  Future<void> write(String id, NgnExchangeReview review) async {
    pending[id] = review;
  }

  @override
  Future<void> clear(String id) async {
    pending.remove(id);
  }
}

const balance = GbWalletBalance(
  totalMb: 15000,
  availableMb: 14000,
  purchasedAvailableMb: 13500,
  welcomeAvailableMb: 500,
  reservedMb: 1000,
  frozen: false,
);
Map<String, dynamic> quote(int gb) => {
  'sizeGb': gb,
  'amountMb': gb * 1000,
  'amountKobo': gb * 50000,
  'rateVersion': 'fixture-v1',
  'operationId': 'ngnx_${'a' * 48}',
  'reviewToken': 'private-fixture-token-over-forty-characters-long',
  'canAfford': true,
  'expiresAt': DateTime.now()
      .toUtc()
      .add(const Duration(minutes: 4))
      .toIso8601String(),
};
Map<String, dynamic> receipt(Map<String, dynamic> q) => {
  'receipt': {
    'kind': 'exchange',
    'operationId': q['operationId'],
    'amountMb': q['amountMb'],
    'amountKobo': q['amountKobo'],
    'rateVersion': q['rateVersion'],
    'createdAt': DateTime.now().toUtc().toIso8601String(),
  },
};

class _Fixture {
  _Fixture({this.loseReply = false});
  final bool loseReply;
  final store = _MemoryStore();
  final dataStore = _DataMemoryStore();
  final posts = <Map<String, dynamic>>[];
  Map<String, dynamic>? lastQuote, completed;
  Completer<void>? quoteWait;
  late final api = _client();
  ApiClient _client() {
    final dio = Dio(BaseOptions(baseUrl: kApiBaseUrl));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (o, h) async {
          Object? data;
          if (o.path.endsWith('/exchange/packages')) {
            data = {
              'version': 'fixture-v1',
              'exchangeEnabled': true,
              'packages': [
                {'sizeGb': 10, 'expectedMb': 10000, 'totalKobo': 500000},
              ],
            };
          } else if (o.path.endsWith('/exchange/quote')) {
            await quoteWait?.future;
            data = lastQuote = quote((o.data as Map)['sizeGb'] as int);
          } else if (o.path.endsWith('/exchange/confirm')) {
            expect(
              store.pending['fan'],
              isNotNull,
              reason: 'Private recovery is saved before dispatch',
            );
            posts.add(Map<String, dynamic>.from(o.data as Map));
            completed = receipt(lastQuote!);
            if (loseReply) {
              h.reject(
                DioException(
                  requestOptions: o,
                  type: DioExceptionType.connectionTimeout,
                ),
              );
              return;
            }
            data = completed;
          } else if (o.path.contains('/exchange/ngnx_') && completed != null) {
            data = completed;
          } else {
            h.reject(
              DioException(
                requestOptions: o,
                response: Response(requestOptions: o, statusCode: 404),
                type: DioExceptionType.badResponse,
              ),
            );
            return;
          }
          h.resolve(Response(requestOptions: o, statusCode: 200, data: data));
        },
      ),
    );
    return ApiClient(dio: dio);
  }

  Widget app(Widget child, {double scale = 1, bool rtl = false}) =>
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_Session.new),
          apiClientProvider.overrideWithValue(api),
          ngnPendingStoreProvider.overrideWithValue(store),
          gbDataPendingStoreProvider.overrideWithValue(dataStore),
          ngnWalletBalanceProvider.overrideWith(
            (ref, owner) async =>
                const NgnWalletBalance(9000000, 0, false, true),
          ),
          ngnBankAccountProvider.overrideWith(
            (ref, owner) async => const NgnBankAccount(
              'assigned',
              number: '0000000100',
              name: 'Fixture',
              bank: '9PSB Fixture',
              fundingEnabled: true,
            ),
          ),
          gbWalletSummaryProvider.overrideWith((ref, owner) async => balance),
        ],
        child: MaterialApp(
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(
              context,
            ).copyWith(textScaler: TextScaler.linear(scale)),
            child: Directionality(
              textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
              child: child!,
            ),
          ),
          home: child,
        ),
      );
}

void main() {
  testWidgets(
    'Data prefills the account contact and permits another recipient',
    (tester) async {
      final f = _Fixture();
      await tester.pumpWidget(
        f.app(const Scaffold(body: DataRedemptionScreen())),
      );
      await tester.pumpAndSettle();
      final phone = find.byType(TextField);
      expect(tester.widget<TextField>(phone).controller!.text, '08031234567');
      await tester.enterText(phone, '09012345678');
      expect(tester.widget<TextField>(phone).controller!.text, '09012345678');
      expect(tester.takeException(), isNull);
    },
  );
  test(
    'integer kobo and cash/account parsing refuse invented units and bank info',
    () {
      expect(formatNgn(500001), '₦5,000.01');
      expect(
        () => NgnWalletBalance.fromJson({
          'balance': {'currency': 'NGN', 'unit': 'naira'},
        }),
        throwsFormatException,
      );
      expect(
        () => NgnBankAccount.fromJson({
          'account': {
            'state': 'assigned',
            'bankId': '9PSB',
            'accountNumber': '123',
          },
        }),
        throwsFormatException,
      );
      final q = quote(10);
      final review = NgnExchangeReview.fromJson(
        q,
        expectedGb: 10,
        expectedVersion: 'fixture-v1',
      );
      review.verifyReceipt(receipt(q));
      expect(
        () => review.verifyReceipt(receipt({...q, 'amountMb': 11})),
        throwsFormatException,
      );
      expect(
        () => NgnExchangeReview.fromJson({...q, 'amountMb': 10001}),
        throwsFormatException,
      );
    },
  );
  testWidgets(
    'shared card contains data, NGN, bank number and Add data at 320dp/200% RTL',
    (tester) async {
      tester.view.physicalSize = const Size(320, 1000);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final f = _Fixture();
      await tester.pumpWidget(
        f.app(
          const Scaffold(
            body: SingleChildScrollView(
              child: GbWalletBalanceCard(balance: balance, loading: false),
            ),
          ),
          scale: 2,
          rtl: true,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('14 GB'), findsOneWidget);
      expect(find.text('₦90,000'), findsOneWidget);
      expect(find.text('0000000100'), findsOneWidget);
      expect(find.text('Add data'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets('compact card aligns balances and bank account details', (tester) async {
    final f = _Fixture();
    await tester.pumpWidget(f.app(const Scaffold(body: GbWalletBalanceCard(
      balance: balance, loading: false, compact: true,
    ))));
    await tester.pumpAndSettle();
    expect(find.text('NGN balance'), findsNothing);
    expect(tester.getCenter(find.text('14 GB')).dy,
      tester.getCenter(find.text('₦90,000')).dy);
    expect(tester.getCenter(find.text('9PSB Fixture')).dy,
      tester.getCenter(find.text('0000000100')).dy);
    expect(find.byTooltip('Copy account number'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  testWidgets(
    'package chooser has no bank details and exchanges only after explicit review',
    (tester) async {
      final f = _Fixture();
      await tester.pumpWidget(f.app(const RechargePackagesScreen()));
      await tester.pumpAndSettle();
      expect(find.text('0000000100'), findsNothing);
      expect(find.text('9PSB Fixture'), findsNothing);
      await tester.tap(find.text('10 GB'));
      await tester.pump();
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      expect(find.text('Review exchange'), findsOneWidget);
      expect(f.posts, isEmpty);
      await tester.tap(find.byTooltip('Back to packages'));
      await tester.pumpAndSettle();
      expect(find.text('Choose a package'), findsNothing);
      expect(find.byKey(const ValueKey('gb-package-10')), findsOneWidget);
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Confirm exchange'));
      await tester.pumpAndSettle();
      expect(find.text('Exchange completed'), findsOneWidget);
      expect(f.posts, hasLength(1));
      expect(f.posts.single['reviewAccepted'], isTrue);
      expect(f.store.pending, isEmpty);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'lost confirm response survives reopening and recovers one original receipt',
    (tester) async {
      final f = _Fixture(loseReply: true);
      await tester.pumpWidget(f.app(const RechargePackagesScreen()));
      await tester.pumpAndSettle();
      await tester.tap(find.text('10 GB'));
      await tester.pump();
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Confirm exchange'));
      await tester.pumpAndSettle();
      expect(find.text('Check original exchange'), findsOneWidget);
      expect(f.store.pending, hasLength(1));
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump();
      await tester.pumpWidget(f.app(const RechargePackagesScreen()));
      await tester.pumpAndSettle();
      expect(find.text('Confirm exchange'), findsNothing);
      await tester.tap(find.text('Check original exchange'));
      await tester.pumpAndSettle();
      expect(find.text('Exchange completed'), findsOneWidget);
      expect(f.posts, hasLength(1));
      expect(f.store.pending, isEmpty);
    },
  );
  testWidgets('late quote cannot expose previous account review', (
    tester,
  ) async {
    final f = _Fixture();
    f.quoteWait = Completer<void>();
    await tester.pumpWidget(f.app(const RechargePackagesScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('10 GB'));
    await tester.pump();
    await tester.tap(find.text('Continue'));
    await tester.pump();
    final container = ProviderScope.containerOf(
      tester.element(find.byType(RechargePackagesScreen)),
    );
    (container.read(sessionProvider.notifier) as _Session).change('another');
    await tester.pump();
    f.quoteWait!.complete();
    await tester.pumpAndSettle();
    expect(find.text('Confirm exchange'), findsNothing);
    expect(f.posts, isEmpty);
    expect(f.store.pending, isEmpty);
  });
  testWidgets(
    'funding instructions stay separate and do not allocate on view',
    (tester) async {
      final f = _Fixture();
      await tester.pumpWidget(f.app(const NgnFundingScreen()));
      await tester.pumpAndSettle();
      expect(find.text('0000000100'), findsOneWidget);
      expect(find.textContaining('Verified deposits add'), findsOneWidget);
      expect(find.text('Choose a package'), findsNothing);
      expect(f.posts, isEmpty);
    },
  );
  testWidgets('existing email account can complete missing funding details',
      (tester) async {
    final f = _Fixture();
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(f.api),
      ngnBankAccountProvider.overrideWith((ref, owner) async =>
          const NgnBankAccount('unassigned', assignmentEnabled: true,
              applicantComplete: false)),
    ], child: const MaterialApp(home: NgnFundingScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Complete your funding details'), findsOneWidget);
    expect(find.text('Get funding account'), findsNothing);
    expect(find.byType(TextField), findsNWidgets(3));
    expect(tester.takeException(), isNull);
  });
  testWidgets(
    'Data uses three compact cards and only three periods, no cashback',
    (tester) async {
      tester.view.physicalSize = const Size(390, 1200);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final f = _Fixture();
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            gbDataCatalogueProvider.overrideWith(
              (ref, owner) async => [
                for (final n in [1, 2, 3])
                  GbVerifiedBundle(
                    id: 'mtn-$n',
                    version: 'v1',
                    network: 'MTN',
                    allowanceGb: n,
                    costMb: n * 1000,
                    validityDays: 1,
                    providerAmount: '500.00',
                    expiresAt: DateTime.utc(2099),
                  ),
              ],
            ),
          ],
          child: f.app(const Scaffold(body: DataRedemptionScreen())),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Mobile Data'), findsOneWidget);
      expect(find.text('Other'), findsNothing);
      expect(find.text('All durations'), findsNothing);
      expect(find.textContaining('Cashback'), findsNothing);
      await tester.enterText(find.byType(TextField), '08031234567');
      await tester.pumpAndSettle();
      final a = tester.getCenter(find.text('1 GB')),
          b = tester.getCenter(find.text('2 GB')),
          c = tester.getCenter(find.text('3 GB'));
      expect(a.dy, b.dy);
      expect(b.dy, c.dy);
      expect(a.dx, lessThan(b.dx));
      expect(b.dx, lessThan(c.dx));
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets('full Data screen stays usable at 320dp/200% RTL', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final f = _Fixture();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          gbDataCatalogueProvider.overrideWith(
            (ref, owner) async => [
              GbVerifiedBundle(
                id: 'mtn-large',
                version: 'v1',
                network: 'MTN',
                allowanceGb: 1000,
                costMb: 1000000,
                validityDays: 1,
                providerAmount: '500.00',
                expiresAt: DateTime.utc(2099),
              ),
            ],
          ),
        ],
        child: f.app(
          const Scaffold(body: DataRedemptionScreen()),
          scale: 2,
          rtl: true,
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byType(TextField),
      150,
      scrollable: find.byType(Scrollable).first,
    );
    await tester.enterText(find.byType(TextField), '08031234567');
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.text('1000 GB'),
      150,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('1,000,000 MB'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
