import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';
const orderId='aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa';
class Fixture implements HttpClientAdapter{
 String? user='buyer',token='first';bool denied=false,hold=false;final old=Completer<ResponseBody>();final calls=<RequestOptions>[];
 ResponseBody response(Object data,[int status=200])=>ResponseBody.fromString(jsonEncode(data),status,headers:{Headers.contentTypeHeader:['application/json']});
 @override Future<ResponseBody> fetch(RequestOptions o,Stream<Uint8List>? stream,Future<void>? cancel)async{
  calls.add(o);if(denied)return response({'error':'p2p.authentication_required'},401);
  if(o.path.endsWith('/capabilities'))return response({'makerBuy':false,'takerSell':false});
  if(o.path.endsWith('/orders/$orderId'))return response({'order_id':orderId,'seller_id':'seller','buyer_id':'buyer','amount_micro':'1000000','fee_micro':'5000','fiat_kobo':'100000','rate_kobo_per_msnw':'100000','state':'awaiting_payment','version':1,'server_now':'2026-10-24T00:00:00Z','payment_deadline':'2027-01-01T00:00:00Z','payment':{'bank_name':'Private receiving bank','account_name':'Synthetic Seller','account_number':'0123456789'}});
  if(o.path.contains('/offers/page')){
   if(hold&&o.headers['Authorization']=='Bearer first')return old.future;
   return response(offers(token=='first'?'Old private bank':'New private bank'));
  }
  return response({'items':[]});
 }
 Map<String,dynamic> offers(String bank)=>{'items':[{'offer_id':'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb','rate_kobo_per_msnw':'100000','min_micro':'1000000','max_micro':'30000000','remaining_micro':'100000000','bank_name':bank}]};
 Widget app({bool deep=false})=>MaterialApp(home:MsnwP2pScreen(dio:Dio()..httpClientAdapter=this,baseUrl:'https://test',expectedUserId:'buyer',currentUserId:()=>user,accessToken:()=>token,initialOrderId:deep?orderId:null));
 @override void close({bool force=false}){}
}
void main(){
 setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
 testWidgets('deep-linked cached order disappears on account replacement without a parent rebuild',(t)async{
  final f=Fixture();await t.pumpWidget(f.app(deep:true));await t.pumpAndSettle();expect(find.text('Private receiving bank'),findsOneWidget);f.user='other';await t.pump(const Duration(milliseconds:300));await t.pumpAndSettle();expect(find.text('Private receiving bank'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);expect(f.calls.where((o)=>o.method=='POST'),isEmpty);await t.pumpWidget(const SizedBox());
 });
 testWidgets('same-account replacement rejects late old-bearer listing and reads fresh records',(t)async{
  final f=Fixture()..hold=true;await t.pumpWidget(f.app());await t.pump();f.token='replacement';await t.pump(const Duration(milliseconds:300));await t.pumpAndSettle();expect(find.text('New private bank'),findsOneWidget);
  f.old.complete(f.response(f.offers('Stale private bank')));await t.pumpAndSettle();expect(find.text('Stale private bank'),findsNothing);expect(find.text('New private bank'),findsOneWidget);expect(f.calls.where((o)=>o.method=='POST'),isEmpty);await t.pumpWidget(const SizedBox());
 });
 testWidgets('logout token clears cached list while user ID remains unchanged',(t)async{
  final f=Fixture();await t.pumpWidget(f.app());await t.pumpAndSettle();expect(find.text('Old private bank'),findsOneWidget);f.token=null;await t.pump(const Duration(milliseconds:300));await t.pumpAndSettle();expect(find.text('Old private bank'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('authoritative 401 clears private order even with unchanged account callback',(t)async{
  final f=Fixture();await t.pumpWidget(f.app(deep:true));await t.pumpAndSettle();f.denied=true;await t.tap(find.byTooltip('Refresh order'));await t.pumpAndSettle();expect(find.text('Private receiving bank'),findsNothing);expect(find.text('Sign in again to continue'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('replacement token after 401 restores fresh root reads without restoring an old route',(t)async{
  final f=Fixture();await t.pumpWidget(f.app(deep:true));await t.pumpAndSettle();f.denied=true;await t.tap(find.byTooltip('Refresh order'));await t.pumpAndSettle();expect(find.text('Sign in again to continue'),findsOneWidget);
  f.denied=false;f.token='reauthenticated';await t.pump(const Duration(milliseconds:300));await t.pumpAndSettle();expect(find.text('Private receiving bank'),findsOneWidget);expect(f.calls.lastWhere((o)=>o.path.endsWith('/orders/$orderId')).headers['Authorization'],'Bearer reauthenticated');expect(f.calls.where((o)=>o.method=='POST'),isEmpty);await t.pumpWidget(const SizedBox());
 });

}
