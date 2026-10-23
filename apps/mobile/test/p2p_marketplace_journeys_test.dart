import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(id: 'buyer', name: 'Buyer', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-18');
    return SessionSignedIn(user, AuthTokens(
      accessToken: 'token', refreshToken: 'refresh',
      accessExpiresIn: 3600, user: user));
  }
}

class _P2pAdapter implements HttpClientAdapter {
  final calls = <RequestOptions>[];
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? stream,
      Future<void>? cancelFuture) async {
    calls.add(options);
    final path = options.path;
    final body = path.contains('/my-offers/page')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000', 'state': 'active',
        }]}
      : path.contains('/offers/page')
      ? <String, dynamic>{'items': [{
          'offer_id': 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'rate_kobo_per_msnw': '150000',
          'min_micro': '1000000', 'max_micro': '30000000',
          'remaining_micro': '100000000',
          'bank_name': 'A genuine verified bank account name',
        }]}
      : path.endsWith('/trader')
      ? <String,dynamic>{'trader':{'displayName':'Public Seller','completedOrders30d':7,
          'closedOrders30d':10,'windowDays':30,'asOf':'2026-10-23T05:00:00Z'},
          'items':[{'offer_id':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
            'rate_kobo_per_msnw':'150000','min_micro':'1000000','max_micro':'30000000',
            'remaining_micro':'100000000','bank_name':'Verified Bank','bank_method_verified':true}],
          'nextCursor':null}
      : path.contains('/offers/by-request/')
      ? <String,dynamic>{
          'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'state':'active',
        }
      : path.contains('/orders/by-request/')
      ? <String,dynamic>{
          'orderId':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa',
          'state':'awaiting_payment',
        }
      : path.contains('/quote')
      ? <String, dynamic>{
          'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
          'amountMicro':'1000000', 'fiatKobo':'150000',
          'feeMicro':'5000', 'rateKoboPerMsnw':'150000',
          'feeBps':50, 'bankName':'Verified Bank',
          'paymentWindowSeconds':1800,
        }
      : <String, dynamic>{'items': []};
    return ResponseBody.fromString(jsonEncode(body), 200,
      headers: {Headers.contentTypeHeader: ['application/json']});
  }
  @override
  void close({bool force = false}) {}
}

Widget _app(_P2pAdapter adapter, {double textScale = 1}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return ProviderScope(
    overrides: [sessionProvider.overrideWith(_Session.new)],
    child: MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(textScale)),
        child: child!,
      ),
      home: MsnwP2pScreen(
      dio: dio, baseUrl: 'https://test',
      expectedUserId: 'buyer', currentUserId: () => 'buyer',
      accessToken: () => 'token')),
  );
}

void _mockSecureRecovery() {
  FlutterSecureStorage.setMockInitialValues({});
}

void main() {
  test('typed gateway errors map to readable recovery instructions',(){
    final dio=DioException(requestOptions:RequestOptions(path:'/orders'),
      response:Response(requestOptions:RequestOptions(path:'/orders'),
        statusCode:409,data:{'error':'p2p.quote_changed'}));
    expect(p2pUserMessage(dio),'The rate or fees changed. Review a new price.');
    final auth=DioException(requestOptions:RequestOptions(path:'/orders'),
      response:Response(requestOptions:RequestOptions(path:'/orders'),
        statusCode:401));
    expect(p2pUserMessage(auth),'Session expired. Sign in again.');
    expect(p2pUserMessage(const FormatException('secret')),
      'Check the values and try again.');
  });

  testWidgets('own offer opens management, never closes on row tap', (t) async {
    _mockSecureRecovery();
    t.view.physicalSize = const Size(320, 700);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    await t.tap(find.byTooltip('P2P options'));
    await t.pumpAndSettle();
    await t.tap(find.text('My ads'));
    await t.pumpAndSettle();
    expect(find.textContaining('₦1500.00 / MSNW'), findsWidgets);
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    expect(find.text('Offer details'), findsOneWidget);
    expect(find.text('Close offer'), findsOneWidget);
    expect(adapter.calls.where((o) => o.method == 'POST'), isEmpty);
    expect(t.takeException(), isNull);
  });

  testWidgets('Buy Sell Orders are primary; My ads and updates are secondary with no fake Sell request', (t) async {
    _mockSecureRecovery();
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter)); await t.pumpAndSettle();
    expect(find.byType(ChoiceChip), findsNWidgets(3));
    expect(find.widgetWithText(ChoiceChip, 'Updates'), findsNothing);
    final before = adapter.calls.length;
    await t.tap(find.widgetWithText(ChoiceChip, 'Sell')); await t.pumpAndSettle();
    expect(find.text('Sell ads are not enabled for this account'), findsOneWidget);
    expect(adapter.calls.length, before);
    await t.tap(find.text('My ads')); await t.pumpAndSettle();
    expect(adapter.calls.any((r) => r.path.contains('/my-offers/page')), isTrue);
    expect(find.text('Create offer'), findsOneWidget);
    expect(adapter.calls.where((r) => r.method != 'GET'), isEmpty);
    await t.pumpWidget(const SizedBox());
  });

  testWidgets('explicit filters use exact atomic amount and literal trader search; clear restores discovery', (t) async {
    _mockSecureRecovery(); final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter)); await t.pumpAndSettle();
    await t.tap(find.widgetWithText(ChoiceChip, 'Buy')); await t.pumpAndSettle();
    await t.tap(find.text('Filter offers')); await t.pumpAndSettle();
    await t.enterText(find.widgetWithText(TextFormField, 'Amount in MSNW'), '1.000001');
    await t.enterText(find.widgetWithText(TextFormField, 'Trader name or ad reference'), 'Amina %');
    await t.tap(find.text('Apply filters')); await t.pumpAndSettle();
    final request = adapter.calls.lastWhere((r) => r.path.contains('/offers/page'));
    final uri = Uri.parse(request.uri.toString());
    expect(uri.queryParameters['amountMicro'], '1000001');
    expect(uri.queryParameters['search'], 'Amina %');
    expect(find.text('Filters applied'), findsOneWidget);
    await t.tap(find.text('Clear filters')); await t.pumpAndSettle();
    expect(adapter.calls.last.uri.queryParameters.containsKey('amountMicro'), isFalse);
    expect(adapter.calls.where((r) => r.method != 'GET'), isEmpty);
    expect(t.takeException(), isNull);
    await t.pumpWidget(const SizedBox());
  });

  testWidgets('Buy review displays actual quote before posting', (t) async {
    _mockSecureRecovery();
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    await t.tap(find.widgetWithText(ChoiceChip, 'Buy'));
    await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    await t.enterText(find.byType(TextField).last, '1');
    await t.pump();
    await t.tap(find.text('Review price and fees'));
    await t.pumpAndSettle();
    expect(find.text('Review P2P order'), findsOneWidget);
    expect(find.text('₦1500.00'), findsOneWidget);
    expect(find.text('0.005 MSNW'), findsOneWidget);
    expect(adapter.calls.any((o) => o.path.contains('/quote')), isTrue);
    expect(adapter.calls.where((o) => o.method == 'POST'), isEmpty);
    expect(t.takeException(), isNull);
  });
  testWidgets('small Android screen with 200 percent text keeps P2P usable', (t) async {
    _mockSecureRecovery();
    t.view.physicalSize = const Size(320, 700);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final adapter = _P2pAdapter();
    await t.pumpWidget(_app(adapter, textScale: 2));
    await t.pumpAndSettle();
    expect(t.takeException(), isNull);
    await t.tap(find.text('Sell'));
    await t.pumpAndSettle();
    expect(find.text('Sell ads are not enabled for this account'), findsOneWidget);
    expect(find.text('Create sell ad'), findsOneWidget);
    await t.ensureVisible(find.text('Create sell ad'));
    await t.pumpAndSettle();
    expect(find.text('Create sell ad').hitTestable(), findsOneWidget);
    expect(t.takeException(), isNull);
    expect(adapter.calls.every((r) => r.method == 'GET'), isTrue);
  });

  testWidgets('restored offer recovers original request without a second POST', (t) async {
    FlutterSecureStorage.setMockInitialValues({
      'masanawa.p2p.offer.buyer': jsonEncode({
        'requestKey': 'p2p-recover-unique-123',
        'payload': {
          'paymentMethodId':'cccccccc-cccc-4ccc-8ccc-cccccccccccc',
          'rateKoboPerMsnw':'150000',
          'minMicro':'1000000', 'maxMicro':'10000000',
          'inventoryMicro':'10000000',
        },
      }),
    });
    final adapter=_P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    expect(find.text('Check unfinished ad'),findsOneWidget);
    await t.tap(find.text('Check unfinished ad'));
    await t.pumpAndSettle();
    expect(adapter.calls.any((o)=>o.path.contains(
      '/offers/by-request/p2p-recover-unique-123')),isTrue);
    expect(adapter.calls.where((o)=>o.method=='POST'),isEmpty);
    expect(find.text('Check unfinished ad'),findsNothing);
    expect(t.takeException(),isNull);
  });

  testWidgets('an unfinished buy request blocks new buyer order until recovered', (t) async {
    FlutterSecureStorage.setMockInitialValues({
      'masanawa.p2p.order.buyer': jsonEncode({
        'requestKey':'p2p-prior-order-123456',
        'offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb',
        'amountMicro':'1000000',
        'expectedRateKoboPerMsnw':'150000',
        'expectedFeeBps':50,
      }),
    });
    final adapter=_P2pAdapter();
    await t.pumpWidget(_app(adapter));
    await t.pumpAndSettle();
    expect(find.text('Check unfinished order'),findsOneWidget);
    await t.tap(find.widgetWithText(ChoiceChip, 'Buy'));
    await t.pumpAndSettle();
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);
    await t.pumpAndSettle();
    expect(adapter.calls.any((o)=>o.path.contains(
      '/orders/by-request/p2p-prior-order-123456')),isTrue);
    expect(adapter.calls.where((o)=>o.method=='POST'),isEmpty);
  });

  testWidgets('marketplace opens public trader then reuses the authoritative buy quote review',(t)async{
    _mockSecureRecovery();final adapter=_P2pAdapter();
    await t.pumpWidget(_app(adapter));await t.pumpAndSettle();
    await t.tap(find.text('View trader profile'));await t.pumpAndSettle();
    expect(find.text('Public Seller'),findsOneWidget);
    expect(adapter.calls.any((r)=>r.path.endsWith('/trader')),isTrue);
    await t.ensureVisible(find.text('Review buy quote'));await t.tap(find.text('Review buy quote'));await t.pumpAndSettle();
    await t.enterText(find.byType(TextField).last,'1');await t.pump();
    await t.tap(find.text('Review price and fees'));await t.pumpAndSettle();
    expect(find.text('Review P2P order'),findsOneWidget);
    expect(adapter.calls.any((r)=>r.path.contains('/quote?')),isTrue);
    expect(adapter.calls.where((r)=>r.method=='POST'),isEmpty);
    await t.pumpWidget(const SizedBox());
  });

}
