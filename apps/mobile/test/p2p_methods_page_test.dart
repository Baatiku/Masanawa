import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_methods_page.dart';
class Fixture{
 String? user='owner';bool disabled=false,fail=false,failDisable=false,revoked=false;int writes=0,reads=0;Completer<Map<String,dynamic>>? held;
 Future<Map<String,dynamic>> load()async{reads++;if(revoked)throw DioException(requestOptions:RequestOptions(path:'/methods'),response:Response(requestOptions:RequestOptions(path:'/methods'),statusCode:401));if(held!=null)return held!.future;if(fail)throw StateError('offline');return {'items':[{'method_id':'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa','bank_name':'Verified Bank','account_last_four':'1234','verified_at':'2026-10-23T09:00:00Z','disabled_at':disabled?'2026-10-23T10:00:00Z':null}]};}
 Future<void> disable(String id)async{expect(id,'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa');writes++;disabled=true;if(failDisable)throw StateError('response lost');}
 Widget page({bool large=false})=>MaterialApp(home:MediaQuery(data:MediaQueryData(textScaler:TextScaler.linear(large?2:1)),child:Directionality(textDirection:large?TextDirection.rtl:TextDirection.ltr,child:P2pMethodsPage(expectedUserId:'owner',currentUserId:()=>user,load:load,disable:disable))));
}
void main(){
 testWidgets('masked bank, consent and authoritative readback preserve original instructions',(t)async{
  final f=Fixture();await t.pumpWidget(f.page());await t.pumpAndSettle();expect(find.text('Account ending 1234'),findsOneWidget);expect(find.textContaining('third-party'),findsOneWidget);
  await t.tap(find.text('Deactivate bank method'));await t.pumpAndSettle();expect(find.textContaining('Existing orders keep their original'),findsOneWidget);expect(f.writes,0);
  await t.tap(find.text('Keep active'));await t.pumpAndSettle();expect(f.writes,0);
  await t.tap(find.text('Deactivate bank method'));await t.pumpAndSettle();await t.tap(find.text('Deactivate'));await t.pumpAndSettle();
  expect(f.writes,1);expect(f.reads,2);expect(find.text('Deactivated · Existing order instructions retained'),findsOneWidget);expect(find.text('Deactivate bank method'),findsNothing);await t.pumpWidget(const SizedBox());
 });
 testWidgets('lost retirement result checks original method without claiming false success',(t)async{
  final f=Fixture()..failDisable=true;await t.pumpWidget(f.page());await t.pumpAndSettle();await t.tap(find.text('Deactivate bank method'));await t.pumpAndSettle();await t.tap(find.text('Deactivate'));await t.pumpAndSettle();expect(find.textContaining('Deactivation is not confirmed'),findsOneWidget);expect(f.writes,1);
  await t.tap(find.text('Check bank methods'));await t.pumpAndSettle();expect(find.text('Deactivated · Existing order instructions retained'),findsOneWidget);expect(f.writes,1);await t.pumpWidget(const SizedBox());
 });
 testWidgets('offline load has retry and no unsafe action',(t)async{
  final f=Fixture()..fail=true;await t.pumpWidget(f.page());await t.pumpAndSettle();expect(find.textContaining('could not be checked'),findsOneWidget);expect(find.text('Deactivate bank method'),findsNothing);f.fail=false;await t.tap(find.text('Check bank methods'));await t.pumpAndSettle();expect(find.text('Account ending 1234'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('account replacement while confirmation is open cannot retire',(t)async{
  final f=Fixture();await t.pumpWidget(f.page());await t.pumpAndSettle();await t.tap(find.text('Deactivate bank method'));await t.pumpAndSettle();f.user='replacement';await t.pump(const Duration(seconds:1));await t.tap(find.text('Deactivate'));await t.pumpAndSettle();expect(f.writes,0);expect(find.text('Account changed. Reopen P2P.'),findsOneWidget);expect(find.text('Account ending 1234'),findsNothing);await t.pumpWidget(const SizedBox());
 });
 testWidgets('late account-scoped read never displays private methods after replacement',(t)async{
  final f=Fixture(),held=Completer<Map<String,dynamic>>();f.held=held;await t.pumpWidget(f.page());await t.pump();f.user='replacement';await t.pump(const Duration(seconds:1));held.complete({'items':[]});await t.pumpAndSettle();expect(find.text('Account changed. Reopen P2P.'),findsOneWidget);expect(find.text('No verified bank methods. Return to My offers to verify your own bank.'),findsNothing);await t.pumpWidget(const SizedBox());
 });
 testWidgets('revoked authorization clears cached method history and permits a fresh retry',(t)async{
  final f=Fixture();await t.pumpWidget(f.page());await t.pumpAndSettle();expect(find.text('Account ending 1234'),findsOneWidget);f.revoked=true;await t.tap(find.text('Check bank methods'));await t.pumpAndSettle();expect(find.text('Account ending 1234'),findsNothing);expect(find.text('Deactivate bank method'),findsNothing);f.revoked=false;await t.tap(find.text('Check bank methods'));await t.pumpAndSettle();expect(find.text('Account ending 1234'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('320dp 200percent RTL confirmation and cancel stay reachable',(t)async{
  t.view.physicalSize=const Size(320,850);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  final f=Fixture();await t.pumpWidget(f.page(large:true));await t.pumpAndSettle();await t.scrollUntilVisible(find.text('Deactivate bank method').hitTestable(),200,scrollable:find.byType(Scrollable).first);await t.pumpAndSettle();await t.tap(find.text('Deactivate bank method'));await t.pumpAndSettle();await t.ensureVisible(find.text('Keep active'));await t.tap(find.text('Keep active'));await t.pumpAndSettle();expect(f.writes,0);expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
 });
}
