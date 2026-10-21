import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/billing_models.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/billing/billing_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

const product = BillItem(
  billerCode: 'mtn',
  itemCode: 'airtime-100',
  name: 'MTN Airtime 100',
  amount: '100.00',
  currency: 'NGN',
  labelName: null,
);

BillingCheckoutView receipt(DateTime created, {
  String phase = 'fulfilled',
  String recipient = '08031234567',
  int serviceAmountKobo = 10000,
  String? reference = 'msnw-bill-existing123',
}) => BillingCheckoutView(
  phase: phase,
  checkoutUrl: null,
  purchase: null,
  quote: BillingQuote(
    quoteId: 'quote-existing123',
    revision: 1,
    categoryCode: 'AIRTIME',
    billerCode: 'mtn',
    itemCode: 'airtime-100',
    itemName: 'MTN Airtime 100',
    customerId: recipient,
    serviceAmountKobo: serviceAmountKobo,
    feeAmountKobo: 0,
    totalAmountKobo: serviceAmountKobo,
    currency: 'NGN',
    state: phase,
    expiresAt: created.add(const Duration(hours: 1)).toIso8601String(),
    checkoutUrl: null,
    providerReference: null,
    billProviderReference: null,
    fulfillmentReference: reference,
    refundReference: null,
    createdAt: created.toIso8601String(),
    updatedAt: created.toIso8601String(),
  ),
);

class _Session extends SessionController {
  @override
  SessionState build() {
    const user = AuthUser(
      id: 'payer', name: 'Payer', locale: 'en', status: 'ACTIVE', role: 'fan',
      isNewUser: false, createdAt: '2026-10-21T00:00:00Z',
    );
    return const SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'fixture', refreshToken: 'fixture',
        accessExpiresIn: 900, user: user,
      ),
    );
  }
}

class _Catalog extends ApiClient {
  _Catalog(this.prior) : super(dio: Dio());
  final BillingCheckoutView prior;
  int quoteCalls = 0;
  @override
  Future<List<BillCategory>> billingCategories() async => const [
    BillCategory(code: 'AIRTIME', name: 'Airtime', description: null, country: 'NG'),
  ];
  @override
  Future<List<BillBiller>> billingBillers(String code) async => const [
    BillBiller(billerCode: 'mtn', name: 'MTN'),
  ];
  @override
  Future<List<BillItem>> billingItems(String code) async => [product];
  @override
  Future<List<BillingCheckoutView>> billingHistory({int limit = 20}) async => [prior];
  @override
  Future<BillingCheckoutView> createBillingQuote({
    required String categoryCode, required String billerCode,
    required String itemCode, required String customerId, required String amount,
  }) async {
    quoteCalls++;
    throw StateError('unexpected quote');
  }
}

void main() {
  test('recent same-product fulfilled purchase warns only for exact current amount', () {
    final now = DateTime.utc(2026, 10, 21, 9);
    expect(
      recentBillingRepeatRisk([receipt(now.subtract(const Duration(minutes: 3)))],
        product, '08031234567', now: now)?.pending,
      isFalse,
    );
    expect(
      recentBillingRepeatRisk([receipt(now.subtract(const Duration(minutes: 6)))],
        product, '08031234567', now: now),
      isNull,
    );
    expect(
      recentBillingRepeatRisk([receipt(now.subtract(const Duration(minutes: 1)), serviceAmountKobo: 20000)],
        product, '08031234567', now: now),
      isNull,
    );
    expect(
      recentBillingRepeatRisk([receipt(now.subtract(const Duration(minutes: 1)), recipient: '08011111111')],
        product, '08031234567', now: now),
      isNull,
    );
  });
  test('pending prior purchase warns despite changed provider price', () {
    final now = DateTime.utc(2026, 10, 21, 9);
    final prior = receipt(now.subtract(const Duration(minutes: 2)),
      phase: 'fulfilling', serviceAmountKobo: 20000);
    expect(recentBillingRepeatRisk([prior], product, '08031234567', now: now)?.pending, isTrue);
    expect(recentBillingRepeatRisk([receipt(now,phase:'quoted')], product, '08031234567', now: now), isNull);
    expect(recentBillingRepeatRisk([receipt(now,phase:'refunded')], product, '08031234567', now: now), isNull);
  });
  testWidgets('pending receipt is surfaced before another billing quote', (tester) async {
    tester.view.physicalSize = const Size(380, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final api = _Catalog(receipt(DateTime.now().toUtc().subtract(const Duration(minutes: 1)), phase:'fulfilling'));
    await tester.pumpWidget(ProviderScope(
      overrides: [
        apiClientProvider.overrideWithValue(api),
        sessionProvider.overrideWith(_Session.new),
      ],
      child: const MaterialApp(home: BillingScreen(initialService:'airtime')),
    ));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, '08031234567');
    await tester.tap(find.text('MTN'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('MTN Airtime 100').first);
    await tester.pumpAndSettle();
    expect(find.text('Previous purchase is still pending'), findsOneWidget);
    expect(find.text('Check original order'), findsOneWidget);
    expect(api.quoteCalls, 0);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(api.quoteCalls, 0);
  });
}
