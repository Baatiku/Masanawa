import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/billing_models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/finance/msnw_billing_checkout.dart';
final quoteJson=<String,dynamic>{'quoteId':'test-quote','revision':1,'categoryCode':'ELECTRICITY','billerCode':'power','itemCode':'prepaid','itemName':'Prepaid electricity','customerId':'12345678901','serviceAmountKobo':100000,'feeAmountKobo':1000,'totalAmountKobo':101000,'currency':'NGN','state':'quoted','expiresAt':'2099-01-01T00:00:00Z','createdAt':'2026-10-18T12:00:00Z','updatedAt':'2026-10-18T12:00:00Z'};
final quote=BillingQuote.fromJson(quoteJson);
class _Api extends ApiClient{
 _Api(Dio dio):super(dio:dio);
 @override Future<BillingCheckoutView> createBillingQuote({required String categoryCode,required String billerCode,required String itemCode,required String customerId,required String amount})async=>BillingCheckoutView(quote:quote,phase:'quoted',checkoutUrl:null,purchase:null);
}
class _Adapter implements HttpClientAdapter{
 _Adapter({this.badReference=false});
 final bool badReference;
 final calls=<RequestOptions>[];
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? s,Future<void>? c)async{calls.add(o);return ResponseBody.fromString(jsonEncode(o.path.endsWith('/preview')?{'asset':'MSNW','quoteId':'test-quote','quoteRevision':1,'totalAmountKobo':'101000','amountMicro':'1010000','rateKoboPerMsnw':'100000','availableMicro':'2000000','sufficient':true}:{'state':'succeeded','fulfillmentReference':badReference?'another-order':'msnw-bill-test-quote','providerReference':'provider-verified','deliveryCode':'1234-5678-9012-3456'}),200,headers:{Headers.contentTypeHeader:['application/json']});}
 @override void close({bool force=false}){}
}
void main(){
 setUp(() => FlutterSecureStorage.setMockInitialValues({}));
 testWidgets('foreign provider reference stays unconfirmed and never offers another charge',(t)async{
  final adapter=_Adapter(badReference:true),dio=Dio(BaseOptions(baseUrl:'https://test'));dio.httpClientAdapter=adapter;
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwBillingCheckoutSheet(api:_Api(dio),dio:dio,baseUrl:'https://test',categoryCode:'ELECTRICITY',item:const BillItem(billerCode:'power',itemCode:'prepaid',name:'Prepaid electricity',amount:'1000',currency:'NGN',labelName:null),customerId:'12345678901',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token',onFund:(){},initialQuote:BillingQuote.fromJson({...quoteJson,'fulfillmentReference':'msnw-bill-test-quote'})))));
  await t.pumpAndSettle();expect(find.text('Order status unavailable. Retry this order.'),findsOneWidget);expect(find.text('1234-5678-9012-3456'),findsNothing);expect(find.text('Review & pay MSNW'),findsNothing);expect(adapter.calls.every((o)=>o.method=='GET'),isTrue);
 });

 testWidgets('returning to original pending receipt only reconciles its GET reference',(t)async{
  final adapter=_Adapter(),dio=Dio(BaseOptions(baseUrl:'https://test'));dio.httpClientAdapter=adapter;
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwBillingCheckoutSheet(api:_Api(dio),dio:dio,baseUrl:'https://test',categoryCode:'ELECTRICITY',item:const BillItem(billerCode:'power',itemCode:'prepaid',name:'Prepaid electricity',amount:'1000',currency:'NGN',labelName:null),customerId:'12345678901',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token',onFund:(){},initialQuote:BillingQuote.fromJson({...quoteJson,'fulfillmentReference':'msnw-bill-test-quote'})))));
  await t.pumpAndSettle();expect(adapter.calls.length,1);expect(adapter.calls.single.method,'GET');expect(adapter.calls.single.path.endsWith('/msnw-bill-test-quote'),isTrue);expect(find.text('1234-5678-9012-3456'),findsOneWidget);expect(find.text('Review & pay MSNW'),findsNothing);
 });

 testWidgets('completed electricity receipt exposes actual token and exact original reference',(t)async{
  final adapter=_Adapter(),dio=Dio(BaseOptions(baseUrl:'https://test'));dio.httpClientAdapter=adapter;
  await t.pumpWidget(MaterialApp(home:Scaffold(body:MsnwBillingCheckoutSheet(api:_Api(dio),dio:dio,baseUrl:'https://test',categoryCode:'ELECTRICITY',item:const BillItem(billerCode:'power',itemCode:'prepaid',name:'Prepaid electricity',amount:'1000',currency:'NGN',labelName:null),customerId:'12345678901',expectedUserId:'owner',currentUserId:()=>'owner',accessToken:()=>'token',onFund:(){}))));
  await t.tap(find.text('Get verified price'));await t.pumpAndSettle();await t.tap(find.text('Review & pay MSNW'));await t.pumpAndSettle();await t.tap(find.text('Confirm payment'));await t.pumpAndSettle();
  expect(find.text('1234-5678-9012-3456'),findsOneWidget);expect(find.text('provider-verified'),findsOneWidget);expect(find.text('msnw-bill-test-quote'),findsOneWidget);
  await t.ensureVisible(find.text('Check payment status'));await t.tap(find.text('Check payment status'));await t.pumpAndSettle();expect(adapter.calls.where((o)=>o.path.endsWith('/execute')).length,1);expect(adapter.calls.last.path.endsWith('/msnw-bill-test-quote'),isTrue);expect(find.text('Review & pay MSNW'),findsNothing);
 });
}
