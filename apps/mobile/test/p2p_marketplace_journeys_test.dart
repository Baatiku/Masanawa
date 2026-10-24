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
  bool showOrder=false,supportReported=false;
  String supportCategory='other',supportDetails='';
  Map<String,dynamic> get order=>{'order_id':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','seller_id':'seller','buyer_id':'buyer','amount_micro':'1000000','fee_micro':'5000','fiat_kobo':'150000','rate_kobo_per_msnw':'150000','state':supportReported?'disputed':'awaiting_payment','version':1,'server_now':'2026-10-24T01:00:00Z','payment_deadline':'2027-01-01T01:00:00Z','payment':{'bank_name':'Verified Bank','account_name':'Synthetic Seller','account_number':'0123456789'},'latePayment':null};
  Map<String,dynamic> get supportReport=>{'submission_id':'original-support-report','category':supportCategory,'details':supportDetails,'is_own':true,'created_at':'2026-10-24T01:00:00Z'};
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? stream,
      Future<void>? cancelFuture) async {
    calls.add(options);
    final path = options.path;
    if(options.method=='POST'&&path.endsWith('/dispute')){supportReported=true;supportCategory='${(options.data as Map)['category']}';supportDetails='${(options.data as Map)['reason']}';}
    final body = showOrder&&path.contains('/orders/page')?{'items':[order]}
      :showOrder&&path.endsWith('/orders/aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa')?order
      :showOrder&&path.endsWith('/support')?{'orderId':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','state':supportReported?'disputed':'awaiting_payment','canOpenDispute':!supportReported,'submission':supportReported?supportReport:null,'events':[]}
      :showOrder&&path.endsWith('/dispute')?{'state':'disputed','submission':supportReport}
      : path.contains('/my-offers/page')
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

  testWidgets('order filters apply to server reads and activity chips clear contradictory exact status',(t)async{
    _mockSecureRecovery();final adapter=_P2pAdapter();await t.pumpWidget(_app(adapter));await t.pumpAndSettle();
    await t.tap(find.widgetWithText(ChoiceChip,'Orders'));await t.pumpAndSettle();await t.tap(find.text('Filter history'));await t.pumpAndSettle();
    await t.tap(find.text('All statuses'));await t.pumpAndSettle();await t.tap(find.text('Completed').last);await t.pumpAndSettle();
    await t.enterText(find.widgetWithText(TextFormField,'From date'),'2026-10-01');t.testTextInput.hide();
    await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
    var call=adapter.calls.lastWhere((x)=>x.path.contains('/orders/page'));
    expect(call.uri.queryParameters,containsPair('status','completed'));expect(call.uri.queryParameters,containsPair('filter','all'));expect(call.uri.queryParameters,containsPair('fromDate','2026-10-01'));
    expect(find.text('No orders match your filters'),findsOneWidget);
    await t.tap(find.widgetWithText(ChoiceChip,'Active'));await t.pumpAndSettle();call=adapter.calls.lastWhere((x)=>x.path.contains('/orders/page'));
    expect(call.uri.queryParameters,containsPair('filter','active'));expect(call.uri.queryParameters.containsKey('status'),isFalse);expect(call.uri.queryParameters,containsPair('fromDate','2026-10-01'));expect(adapter.calls.where((x)=>x.method=='POST'),isEmpty);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('own-ad status filter resets without modifying availability',(t)async{
    _mockSecureRecovery();final adapter=_P2pAdapter();await t.pumpWidget(_app(adapter));await t.pumpAndSettle();await t.tap(find.byTooltip('P2P options'));await t.pumpAndSettle();await t.tap(find.text('My ads'));await t.pumpAndSettle();
    await t.tap(find.text('Filter history'));await t.pumpAndSettle();await t.tap(find.text('All statuses'));await t.pumpAndSettle();await t.tap(find.text('Paused').last);await t.pumpAndSettle();
    await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
    expect(adapter.calls.lastWhere((x)=>x.path.contains('/my-offers/page')).uri.queryParameters,containsPair('status','paused'));
    await t.tap(find.text('Edit history filters'));await t.pumpAndSettle();await t.scrollUntilVisible(find.text('Reset filters').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Reset filters'));await t.pumpAndSettle();
    expect(adapter.calls.lastWhere((x)=>x.path.contains('/my-offers/page')).uri.queryParameters.containsKey('status'),isFalse);expect(adapter.calls.where((x)=>x.method=='POST'),isEmpty);await t.pumpWidget(const SizedBox());
  });

  testWidgets('original order opens typed support context and only posts the explicitly confirmed dispute',(t)async{
    _mockSecureRecovery();final adapter=_P2pAdapter()..showOrder=true;await t.pumpWidget(_app(adapter));await t.pumpAndSettle();await t.tap(find.widgetWithText(ChoiceChip,'Orders'));await t.pumpAndSettle();
    await t.scrollUntilVisible(find.text('Buy MSNW').hitTestable(),150,scrollable:find.byType(Scrollable).last);await t.pumpAndSettle();await t.tap(find.text('Buy MSNW'));await t.pumpAndSettle();
    await t.scrollUntilVisible(find.text('Open dispute').hitTestable(),150,scrollable:find.byType(Scrollable).last);await t.pumpAndSettle();await t.tap(find.text('Open dispute'));await t.pumpAndSettle();expect(find.text('Order support'),findsOneWidget);expect(adapter.calls.where((x)=>x.method=='POST'),isEmpty);
    await t.enterText(find.widgetWithText(TextFormField,'What happened?'),'Synthetic exact amount was not received.');t.testTextInput.hide();await t.scrollUntilVisible(find.text('Confirm dispute report').hitTestable(),150,scrollable:find.byType(Scrollable).last);await t.pumpAndSettle();await t.tap(find.text('Confirm dispute report'));await t.pumpAndSettle();
    final writes=adapter.calls.where((x)=>x.method=='POST').toList();expect(writes,hasLength(1));expect(writes.single.path.endsWith('/dispute'),isTrue);expect(writes.single.data,{'category':'other','reason':'Synthetic exact amount was not received.'});expect(find.text('original-support-report'),findsOneWidget);await t.pumpWidget(const SizedBox());
  });

}
