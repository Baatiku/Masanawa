import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';
import 'package:masanawa/src/finance/wallet_flow_page.dart';
class _Adapter implements HttpClientAdapter{
 final queries=<Map<String,dynamic>>[];
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? c)async{
  queries.add(Map.from(o.queryParameters));return ResponseBody.fromString(jsonEncode({'items':[{'id':'Transfers:row','reference':'actual-reference','category':'Transfers','title':'MSNW sent','asset':'MSNW','incoming':false,'amountAtomic':'1000001','decimals':6,'createdAt':'2026-10-18T10:00:00Z','status':'reserved','details':{'Recipient':'Amina','Fee':'0 MSNW','Gross amount':'1.000001 MSNW','Net amount':'1.000001 MSNW'}}],'nextCursor':null,'assets':['MSNW','NGN','USDT']}),200,headers:{Headers.contentTypeHeader:['application/json']});
 }
 @override void close({bool force=false}){}
}
void main(){
 test('amount range uses exact decimal comparisons and never mixes assets',(){
  expect(walletAmountInRange('0.000000000000000001','0.000000000000000001','0.000000000000000001'),isTrue);
  expect(walletAmountInRange('9007199254740993','9007199254740992','9007199254740993'),isTrue);
  expect(walletAmountInRange('1.000001',null,'1'),isFalse);
 });
 testWidgets('full-screen filters send asset, direction and exact range to the server',(t)async{
  final adapter=_Adapter();final dio=Dio()..httpClientAdapter=adapter;
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwTransactionHistory(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token'))));await t.pumpAndSettle();
  await t.tap(find.text('Filters'));await t.pumpAndSettle();
  Finder field(String label)=>find.byWidgetPredicate((w)=>w is WalletSelectionField<String>&&w.decoration.labelText==label);
  await t.ensureVisible(field('Asset'));await t.tap(field('Asset'));await t.pumpAndSettle();await t.tap(find.text('MSNW'));await t.pumpAndSettle();
  await t.ensureVisible(field('Direction'));await t.tap(field('Direction'));await t.pumpAndSettle();await t.tap(find.text('Outgoing'));await t.pumpAndSettle();
  Finder input(String label)=>find.byWidgetPredicate((w)=>w is TextField&&w.decoration?.labelText==label);
  await t.enterText(input('Minimum amount'),'1.000001');await t.enterText(input('Maximum amount'),'2.000002');
  await t.ensureVisible(find.text('Apply filters'));await t.tap(find.text('Apply filters'));await t.pumpAndSettle();
  expect(adapter.queries.last,containsPair('asset','MSNW'));expect(adapter.queries.last,containsPair('direction','out'));expect(adapter.queries.last,containsPair('minAmount','1.000001'));expect(adapter.queries.last,containsPair('maxAmount','2.000002'));
  expect(find.byType(Dialog),findsNothing);expect(find.byType(BottomSheet),findsNothing);expect(t.takeException(),isNull);
 });
 testWidgets('receipt presents reserved status and copies actual reference',(t)async{
  String? copied;
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform,(method)async{if(method.method=='Clipboard.setData')copied=(method.arguments as Map)['text'] as String;return null;});
  addTearDown(()=>TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform,null));
  final dio=Dio()..httpClientAdapter=_Adapter();
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwTransactionHistory(dio:dio,baseUrl:'https://test',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token'))));await t.pumpAndSettle();await t.tap(find.text('MSNW sent'));await t.pumpAndSettle();
  expect(find.text('Funds reserved'),findsOneWidget);expect(find.text('Held for this transaction; not available to spend.'),findsOneWidget);
  await t.scrollUntilVisible(find.text('Copy reference'),250,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Copy reference'));await t.pump();expect(copied,'actual-reference');
 });
}
