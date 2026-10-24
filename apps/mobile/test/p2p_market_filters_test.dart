import 'dart:convert';
import 'dart:async';
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
  String quoteFiat='150000';
  Completer<ResponseBody>? heldRecovery;
  @override
  Future<ResponseBody> fetch(RequestOptions options, Stream<Uint8List>? stream,
      Future<void>? cancelFuture) async {
    calls.add(options);
    if(options.path.contains('/by-request/')&&heldRecovery!=null)return heldRecovery!.future;
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
          if(options.uri.queryParameters.containsKey('fiatKobo'))'budget_amount_micro':'1000000',
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
          'amountMicro':'1000000', 'fiatKobo':quoteFiat,
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

void main(){
 test('NGN limit uses exact kobo without floats or excess precision',(){
  expect(p2pFiatLimitKobo('0.01'),'1');expect(p2pFiatLimitKobo('1.10'),'110');
  expect(p2pFiatLimitKobo('10000000000000000'),'1000000000000000000');
  for(final value in ['0','-1','1.001','1e3','10000000000000000.01'])expect(()=>p2pFiatLimitKobo(value),throwsFormatException);
 });
 testWidgets('bank amount and best-price selection reach the server without a financial write',(t)async{
  _mockSecureRecovery();final a=_P2pAdapter();await t.pumpWidget(_app(a));await t.pumpAndSettle();
  await t.tap(find.widgetWithText(ChoiceChip,'Buy'));await t.pumpAndSettle();
  await t.tap(find.text('Filter offers'));await t.pumpAndSettle();
  await t.tap(find.text('Newest ads'));await t.pumpAndSettle();await t.tap(find.text('Best price'));await t.pumpAndSettle();
  await t.tap(find.widgetWithText(ChoiceChip,'NGN limit'));await t.pumpAndSettle();
  await t.enterText(find.widgetWithText(TextFormField,'Bank amount limit in NGN'),'1500.00');
  await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.descendant(of:find.byType(MsnwP2pMarketFilters),matching:find.byType(Scrollable)).first);await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
  final query=a.calls.lastWhere((r)=>r.path.contains('/offers/page')).uri.queryParameters;
  expect(query['fiatKobo'],'150000');expect(query['sort'],'best_price');expect(query.containsKey('amountMicro'),isFalse);
  expect(find.textContaining('within your NGN limit'),findsOneWidget);
  await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
  expect((t.widget<TextField>(find.byKey(const ValueKey('p2p-buy-amount')))).controller!.text,'1');
  await t.enterText(find.byKey(const ValueKey('p2p-buy-amount')),'2');await t.pump();
  expect(find.text('Amount exceeds your NGN limit. Update the amount or filters.'),findsOneWidget);
  expect(t.widget<FilledButton>(find.widgetWithText(FilledButton,'Review price and fees')).onPressed,isNull);
  expect(a.calls.where((r)=>r.method!='GET'),isEmpty);expect(t.takeException(),isNull);
  await t.pageBack();await t.pumpAndSettle();await t.tap(find.text('Clear filters'));await t.pumpAndSettle();
  final cleared=a.calls.lastWhere((r)=>r.path.contains('/offers/page')).uri.queryParameters;expect(cleared.containsKey('fiatKobo'),isFalse);expect(cleared.containsKey('sort'),isFalse);
  await t.pumpWidget(const SizedBox());
 });
 testWidgets('invalid NGN precision cannot apply; unit drafts are separate and clear resets sort',(t)async{
  final key=GlobalKey<NavigatorState>();Map<String,String>? result;
  await t.pumpWidget(MaterialApp(navigatorKey:key,home:Scaffold(body:Builder(builder:(ctx)=>TextButton(onPressed:()async{result=await Navigator.of(ctx).push<Map<String,String>>(MaterialPageRoute(builder:(_)=>const Scaffold(body:MsnwP2pMarketFilters(amount:'1.000001',search:'Amina',fiat:'',sort:'best_price'))));},child:const Text('Open'))))));
  await t.tap(find.text('Open'));await t.pumpAndSettle();
  await t.tap(find.widgetWithText(ChoiceChip,'NGN limit'));await t.pumpAndSettle();
  await t.enterText(find.widgetWithText(TextFormField,'Bank amount limit in NGN'),'1.001');
  await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.descendant(of:find.byType(MsnwP2pMarketFilters),matching:find.byType(Scrollable)).first);await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
  expect(result,isNull);expect(find.text('Enter a positive NGN limit with up to 2 decimals.'),findsOneWidget);
  await t.ensureVisible(find.widgetWithText(ChoiceChip,'MSNW amount'));await t.tap(find.widgetWithText(ChoiceChip,'MSNW amount'));await t.pumpAndSettle();
  expect(t.widget<TextFormField>(find.widgetWithText(TextFormField,'Amount in MSNW')).controller!.text,'1.000001');
  await t.scrollUntilVisible(find.text('Clear filters').hitTestable(),150,scrollable:find.descendant(of:find.byType(MsnwP2pMarketFilters),matching:find.byType(Scrollable)).first);await t.tap(find.text('Clear filters'));await t.pumpAndSettle();expect(result,isEmpty);
  await t.pumpWidget(const SizedBox());
 });
 testWidgets('320dp 200 percent RTL filter controls remain reachable without losing exact fiat',(t)async{
  t.view.physicalSize=const Size(320,700);t.view.devicePixelRatio=1;
  addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  Map<String,String>? result;
  await t.pumpWidget(MaterialApp(builder:(ctx,child)=>MediaQuery(data:MediaQuery.of(ctx).copyWith(textScaler:const TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:child!)),
    home:Scaffold(body:Builder(builder:(ctx)=>TextButton(onPressed:()async{result=await Navigator.of(ctx).push<Map<String,String>>(MaterialPageRoute(builder:(_)=>const Scaffold(body:MsnwP2pMarketFilters(amount:'',search:'',fiat:'1234.01',sort:'best_price'))));},child:const Text('Open'))))));
  await t.tap(find.text('Open'));await t.pumpAndSettle();
  await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.descendant(of:find.byType(MsnwP2pMarketFilters),matching:find.byType(Scrollable)).first);
  await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
  expect(result,containsPair('fiat','1234.01'));expect(result,containsPair('sort','best_price'));expect(t.takeException(),isNull);
  await t.pumpWidget(const SizedBox());
 });

 testWidgets('a quote review opened by the previous account cannot submit under its replacement',(t)async{
  _mockSecureRecovery();final a=_P2pAdapter(),dio=Dio()..httpClientAdapter=a;
  final owner=ValueNotifier<String>('buyer');addTearDown(owner.dispose);
  await t.pumpWidget(MaterialApp(home:ValueListenableBuilder<String>(valueListenable:owner,builder:(ctx,user,_)=>MsnwP2pScreen(key:const ValueKey('account-screen'),dio:dio,baseUrl:'https://test',expectedUserId:user,currentUserId:()=>owner.value,accessToken:()=>'token'))));
  await t.pumpAndSettle();await t.tap(find.widgetWithText(ChoiceChip,'Buy'));await t.pumpAndSettle();
  await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
  await t.enterText(find.byKey(const ValueKey('p2p-buy-amount')),'1');await t.pump();
  await t.tap(find.text('Review price and fees'));await t.pumpAndSettle();expect(find.text('Review P2P order'),findsOneWidget);
  owner.value='replacement';await t.pumpAndSettle();
  expect(find.text('Place order'),findsNothing);expect(find.text('Access changed. Reopen P2P.'),findsOneWidget);
  expect(a.calls.where((r)=>r.method!='GET'),isEmpty);
  expect(await const FlutterSecureStorage().read(key:'masanawa.p2p.order.replacement'),isNull);
  await t.pumpWidget(const SizedBox());
 });

 testWidgets('a refreshed bank quote cannot silently exceed the selected NGN limit',(t)async{
  _mockSecureRecovery();final a=_P2pAdapter()..quoteFiat='150001';await t.pumpWidget(_app(a));await t.pumpAndSettle();
  await t.tap(find.widgetWithText(ChoiceChip,'Buy'));await t.pumpAndSettle();
  await t.tap(find.text('Filter offers'));await t.pumpAndSettle();await t.tap(find.widgetWithText(ChoiceChip,'NGN limit'));await t.pumpAndSettle();
  await t.enterText(find.widgetWithText(TextFormField,'Bank amount limit in NGN'),'1500.00');
  await t.scrollUntilVisible(find.text('Apply filters').hitTestable(),150,scrollable:find.descendant(of:find.byType(MsnwP2pMarketFilters),matching:find.byType(Scrollable)).first);
  await t.tap(find.text('Apply filters'));await t.pumpAndSettle();await t.tap(find.textContaining('₦1500.00 / MSNW').first);await t.pumpAndSettle();
  await t.tap(find.text('Review price and fees'));await t.pumpAndSettle();
  expect(find.text('Review P2P order'),findsNothing);expect(find.text('The bank amount exceeds your NGN limit. Update the amount or filters.'),findsOneWidget);
  expect(a.calls.any((r)=>r.path.contains('/quote')),isTrue);expect(a.calls.where((r)=>r.method!='GET'),isEmpty);
  await t.pumpWidget(const SizedBox());
 });

 for(final kind in ['order','offer']){
  testWidgets('late 404 for old-account $kind recovery cannot retry with replacement credentials',(t)async{
    final pending=kind=='order'?<String,dynamic>{'requestKey':'recover-order-12345','offerId':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','amountMicro':'1000000','expectedRateKoboPerMsnw':'150000','expectedFeeBps':50}
      :<String,dynamic>{'requestKey':'recover-offer-12345','payload':{'paymentMethodId':'cccccccc-cccc-4ccc-8ccc-cccccccccccc','rateKoboPerMsnw':'150000','minMicro':'1000000','maxMicro':'3000000','inventoryMicro':'3000000'}};
    FlutterSecureStorage.setMockInitialValues({'masanawa.p2p.$kind.buyer':jsonEncode(pending)});
    final held=Completer<ResponseBody>(),a=_P2pAdapter()..heldRecovery=held,dio=Dio()..httpClientAdapter=a;
    final owner=ValueNotifier<String>('buyer');addTearDown(owner.dispose);
    await t.pumpWidget(MaterialApp(home:ValueListenableBuilder<String>(valueListenable:owner,builder:(ctx,user,_)=>MsnwP2pScreen(key:const ValueKey('recover-account'),dio:dio,baseUrl:'https://test',expectedUserId:user,currentUserId:()=>owner.value,accessToken:()=>'token'))));
    await t.pumpAndSettle();
    await t.tap(find.text(kind=='order'?'Check unfinished order':'Check unfinished ad'));
    for(var i=0;i<20&&!a.calls.any((r)=>r.path.contains('/by-request/'));i++){await t.pump(const Duration(milliseconds:50));}
    expect(a.calls.any((r)=>r.path.contains('/by-request/')),isTrue);
    owner.value='replacement';await t.pump();
    held.complete(ResponseBody.fromString('{}',404,headers:{Headers.contentTypeHeader:['application/json']}));
    await t.pumpAndSettle();expect(a.calls.where((r)=>r.method!='GET'),isEmpty);
    expect(await const FlutterSecureStorage().read(key:'masanawa.p2p.$kind.replacement'),isNull);
    expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
  });
 }

}
