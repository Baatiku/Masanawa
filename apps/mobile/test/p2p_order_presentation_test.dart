import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_order_presentation.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';
import 'package:masanawa/src/finance/wallet_flow_page.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/state/session_state.dart';
class _Session extends SessionController{
 SessionSignedIn signed(String id){final user=AuthUser(id:id,name:id,locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-18');return SessionSignedIn(user,AuthTokens(accessToken:'token',refreshToken:'refresh',accessExpiresIn:3600,user:user));}
 @override SessionState build()=>signed('owner');
 void change()=>state=signed('another-owner');
}
class _OrderAdapter implements HttpClientAdapter{
 final calls=<RequestOptions>[];
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? c)async{
  calls.add(o);
  final value=o.path.endsWith('/activity')?{'items':[{'id':'P2P:row','reference':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','category':'P2P','title':'P2P buy','asset':'MSNW','incoming':true,'amountAtomic':'1000000','decimals':6,'createdAt':'2001-01-01T00:00:00Z','status':'awaiting_payment','details':{}}],'nextCursor':null}:o.path.endsWith('/evidence')?{'items':[]}:o.path.contains('/orders/')?{
   'order_id':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','buyer_id':'owner','seller_id':'seller','amount_micro':'1000000','fee_micro':'5000','fiat_kobo':'150000','state':'awaiting_payment','payment_deadline':'2001-01-01T00:01:05Z','server_now':'2001-01-01T00:00:00Z',
   'payment':{'bank_name':'Verified Bank','account_name':'Seller Name','account_number':'0123456789'},
  }:{'items':[]};
  return ResponseBody.fromString(jsonEncode(value),200,headers:{Headers.contentTypeHeader:['application/json']});
 }
 @override void close({bool force=false}){}
}
void main(){
 test('countdown uses server sample plus elapsed time, clamps at zero',(){
  final server=DateTime.utc(2001),deadline=server.add(const Duration(seconds:65));
  expect(p2pPaymentRemaining(deadline,server,const Duration(seconds:2)),const Duration(seconds:63));
  expect(p2pPaymentRemaining(deadline,server,const Duration(minutes:2)),Duration.zero);
 });
 testWidgets('direct order has one full screen, bound bank and server anchored deadline; read never pays',(t)async{
  t.view.physicalSize=const Size(360,800);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  final adapter=_OrderAdapter(),dio=Dio();dio.httpClientAdapter=adapter;
  await t.pumpWidget(MaterialApp(home:MsnwP2pScreen(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token',initialOrderId:'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa')));await t.pumpAndSettle();
  expect(find.byType(AppBar),findsOneWidget);expect(find.text('Awaiting bank transfer'),findsOneWidget);expect(find.text('Verified Bank'),findsOneWidget);expect(find.text('0123456789'),findsOneWidget);expect(find.textContaining('Pay within'),findsOneWidget);expect(adapter.calls.every((o)=>o.method=='GET'),isTrue);expect(adapter.calls.any((o)=>o.path.endsWith('/offers')),isFalse);expect(t.takeException(),isNull);
  await t.pumpWidget(const SizedBox.shrink());
 });
 testWidgets('receipt help opens its exact order without another selection or a payment',(t)async{
  final adapter=_OrderAdapter(),dio=Dio();dio.httpClientAdapter=adapter;
  await t.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(_Session.new)],child:MaterialApp(home:Scaffold(body:MsnwTransactionHistory(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token')))));await t.pumpAndSettle();await t.tap(find.text('P2P buy'));await t.pumpAndSettle();
  await t.scrollUntilVisible(find.text('Transaction help'),250,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Transaction help'));await t.pumpAndSettle();
  expect(find.text('Verified Bank'),findsOneWidget);expect(find.byType(AppBar),findsOneWidget);expect(adapter.calls.any((o)=>o.path.endsWith('/orders/aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa')),isTrue);expect(adapter.calls.any((o)=>o.method=='POST'),isFalse);await t.pumpWidget(const SizedBox.shrink());
 });
 testWidgets('dispute does not falsely mark a bank payment as confirmed',(t)async{
  await t.pumpWidget(const MaterialApp(home:Scaffold(body:P2pOrderProgress(state:'disputed'))));
  expect(find.text('Under review'),findsOneWidget);expect(find.byIcon(Icons.check_circle_outline),findsNothing);
 });
 testWidgets('order bank copy uses exact order account',(t)async{
  String? copied;TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform,(method)async{if(method.method=='Clipboard.setData')copied=(method.arguments as Map)['text'] as String;return null;});addTearDown(()=>TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform,null));
  await t.pumpWidget(const MaterialApp(home:Scaffold(body:P2pOrderBankDetails(bankName:'Verified Bank',accountName:'Seller',accountNumber:'0123456789',buyer:true))));await t.tap(find.byTooltip('Copy order bank account'));await t.pump();expect(copied,'0123456789');
 });
 testWidgets('full Scaffold routes retain account fence without double headers',(t)async{
  final session=_Session();await t.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(()=>session)],child:MaterialApp(home:Builder(builder:(context)=>Scaffold(body:TextButton(onPressed:()=>openWalletPage<void>(context:context,title:'P2P order',wrapScaffold:false,builder:(_)=>Scaffold(appBar:AppBar(title:const Text('Private order')),body:const Text('Private bank details'))),child:const Text('Open')))))));await t.tap(find.text('Open'));await t.pumpAndSettle();expect(find.byType(AppBar),findsOneWidget);expect(find.text('Private bank details'),findsOneWidget);
  session.change();await t.pumpAndSettle();expect(find.text('Private bank details'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);expect(find.byType(AppBar),findsOneWidget);
 });
}
