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
  bool admitted=true; bool wrongQuote=false; bool missingOrder=false;
  final posts=<Map<String,dynamic>>[];
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? stream,
      Future<void>? cancelFuture) async {
    calls.add(options);
    final path = options.path;
    if(options.method=='POST'&&(path.endsWith('/orders')||path.endsWith('/offers'))) {
      posts.add(Map<String,dynamic>.from(options.data as Map));
      return ResponseBody.fromString('{"error":"test-uncertain"}',503,headers:{Headers.contentTypeHeader:['application/json']});
    }
    if(missingOrder&&(path.contains('/orders/by-request/')||path.contains('/offers/by-request/')))return ResponseBody.fromString('{}',404,headers:{Headers.contentTypeHeader:['application/json']});
    final body = path.endsWith('/capabilities')
      ? <String,dynamic>{'makerBuy':admitted,'takerSell':admitted}
      : path.endsWith('/methods')
      ? <String,dynamic>{'items':[{'method_id':'cccccccc-cccc-4ccc-8ccc-cccccccccccc','bank_name':'My Receiving Bank','account_number':'2222222222'}]}
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
          'bank_name': 'Buyer Paying Bank', 'offer_side':'buy',
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
          'paymentWindowSeconds':1800,'offerSide':'buy','takerAction':wrongQuote?'buy':'sell','receivingMethodId':'cccccccc-cccc-4ccc-8ccc-cccccccccccc',
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


void main(){
  Future<void> openSell(WidgetTester t,_P2pAdapter adapter)async{
    _mockSecureRecovery();await t.pumpWidget(_app(adapter));await t.pumpAndSettle();
    await t.tap(find.widgetWithText(ChoiceChip,'Sell'));await t.pumpAndSettle();
  }
  Future<void> quote(WidgetTester t)async{
    await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
    await t.enterText(find.byKey(const ValueKey('p2p-buy-amount')),'1');await t.pump();
    await t.ensureVisible(find.text('Review price and fees'));await t.tap(find.text('Review price and fees'));await t.pumpAndSettle();
  }
  testWidgets('admitted Sell discovers buy ads and reviews seller-owned bank and fee before writes',(t)async{
    final a=_P2pAdapter();await openSell(t,a);
    expect(a.calls.any((r)=>r.uri.queryParameters['side']=='buy'),isTrue);
    await quote(t);
    expect(find.text('You sell'),findsOneWidget);expect(find.text('Buyer pays you'),findsOneWidget);
    expect(find.text('Your escrow fee'),findsOneWidget);
    final q=a.calls.lastWhere((r)=>r.path.contains('/quote'));
    expect(q.uri.queryParameters['paymentMethodId'],'cccccccc-cccc-4ccc-8ccc-cccccccccccc');
    expect(a.posts,isEmpty);expect(t.takeException(),isNull);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('wrong direction quote is rejected before review or write',(t)async{
    final a=_P2pAdapter()..wrongQuote=true;await openSell(t,a);await quote(t);
    expect(find.text('Review P2P order'),findsNothing);expect(a.posts,isEmpty);
    expect(find.text('Seller payment terms are unavailable. Refresh the ad.'),findsOneWidget);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('uncertain Sell preserves actual receiving method and original request on retry',(t)async{
    final a=_P2pAdapter()..missingOrder=true;await openSell(t,a);await quote(t);
    await t.ensureVisible(find.text('Place order'));await t.tap(find.text('Place order'));await t.pumpAndSettle();
    expect(a.posts,hasLength(1));expect(a.posts.single['paymentMethodId'],'cccccccc-cccc-4ccc-8ccc-cccccccccccc');
    final first=a.calls.lastWhere((r)=>r.method=='POST');
    await t.pumpWidget(const SizedBox());await t.pumpAndSettle();
    await t.pumpWidget(_app(a));await t.pumpAndSettle();
    await t.tap(find.text('Check unfinished order'));await t.pumpAndSettle();
    expect(a.posts.length,2);expect(a.posts[1],a.posts[0]);
    expect(a.calls.lastWhere((r)=>r.method=='POST').headers['Idempotency-Key'],first.headers['Idempotency-Key']);
    expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
  });
  testWidgets('closed admission makes no buy-ad discovery or writes',(t)async{
    final a=_P2pAdapter()..admitted=false;await openSell(t,a);
    expect(find.text('Sell ads are not enabled for this account'),findsOneWidget);
    expect(a.calls.where((r)=>r.uri.queryParameters['side']=='buy'),isEmpty);expect(a.posts,isEmpty);
    await t.pumpWidget(const SizedBox());
  });
  testWidgets('maker buy ad publishes demand through own paying bank without seller capacity',(t)async{
    final a=_P2pAdapter()..missingOrder=true;await openSell(t,a);
    await t.tap(find.byTooltip('P2P options'));await t.pumpAndSettle();
    await t.tap(find.text('My ads').first);await t.pumpAndSettle();
    await t.tap(find.text('Create offer'));await t.pumpAndSettle();
    await t.tap(find.text('Create buy ad'));await t.pumpAndSettle();
    expect(find.text('Your paying account'),findsOneWidget);
    for(final field in {'NGN per MSNW':'1','Minimum MSNW':'1','Maximum MSNW':'2','Inventory MSNW':'2'}.entries){
      await t.ensureVisible(find.widgetWithText(TextFormField,field.key));
      await t.enterText(find.widgetWithText(TextFormField,field.key),field.value);
    }
    await t.ensureVisible(find.text('Review offer'));await t.tap(find.text('Review offer'));await t.pumpAndSettle();
    expect(find.textContaining('does not prove your bank balance'),findsOneWidget);
    expect(a.calls.where((r)=>r.path.endsWith('/seller-capacity')),isEmpty);expect(a.posts,isEmpty);
    await t.ensureVisible(find.text('Publish buy offer'));await t.tap(find.text('Publish buy offer'));await t.pumpAndSettle();
    expect(a.posts,hasLength(1));expect(a.posts.single,containsPair('offerSide','buy'));
    expect(a.posts.single,containsPair('paymentMethodId','cccccccc-cccc-4ccc-8ccc-cccccccccccc'));
    expect(a.posts.single,containsPair('inventoryMicro','2000000'));
    await t.pumpWidget(const SizedBox());
  });

}
