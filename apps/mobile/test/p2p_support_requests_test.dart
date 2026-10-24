import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_support_requests.dart';
void main(){
 testWidgets('accepted response recovers after lost reply without another write',(t)async{
  bool accepted=false;int writes=0;
  Map<String,dynamic> data()=>{'state':'disputed','items':[{'request_id':'request','instruction':'Provide a synthetic bank reference.','due_at':'2026-10-25T10:00:00Z','response_id':accepted?'response':null,'response_details':accepted?'Original synthetic bank reference':null}]};
  await t.pumpWidget(MaterialApp(home:P2pSupportRequestsPage(expectedUserId:'buyer',currentUserId:()=>'buyer',load:()async=>data(),respond:(_,__)async{writes++;accepted=true;throw StateError('Lost response');})));
  await t.pumpAndSettle();await t.tap(find.text('Respond'));await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Original synthetic bank reference');await t.pump();await t.ensureVisible(find.text('Send response'));await t.tap(find.text('Send response'));await t.pumpAndSettle();expect(writes,1);
  await t.ensureVisible(find.text('Check original response'));await t.tap(find.text('Check original response'));await t.pumpAndSettle();expect(writes,1);expect(find.text('Original synthetic bank reference'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('access revocation clears cached private instructions',(t)async{
  bool revoked=false;
  await t.pumpWidget(MaterialApp(home:P2pSupportRequestsPage(expectedUserId:'buyer',currentUserId:()=>'buyer',load:()async{if(revoked)throw DioException(requestOptions:RequestOptions(path:'/requests'),response:Response(requestOptions:RequestOptions(path:'/requests'),statusCode:403));return{'state':'disputed','items':[{'request_id':'request','instruction':'Private synthetic support instruction','due_at':'2026-10-25T10:00:00Z','response_id':null}]};},respond:(_,__)async{})));
  await t.pumpAndSettle();expect(find.text('Private synthetic support instruction'),findsOneWidget);revoked=true;await t.tap(find.text('Refresh requests'));await t.pumpAndSettle();expect(find.text('Private synthetic support instruction'),findsNothing);expect(find.text('Access changed. Reopen P2P.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('empty assigned list and account replacement preserve private scope',(t)async{
  String? user='buyer';await t.pumpWidget(MaterialApp(home:P2pSupportRequestsPage(expectedUserId:'buyer',currentUserId:()=>user,load:()async=>{'state':'disputed','items':[]},respond:(_,__)async{})));await t.pumpAndSettle();expect(find.text('No support requests assigned to you.'),findsOneWidget);user='other';await t.pump(const Duration(seconds:1));expect(find.text('Access changed. Reopen P2P.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('assigned support request remains readable at 320dp RTL and 200percent text',(t)async{
  t.view.physicalSize=const Size(320,900);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  await t.pumpWidget(MaterialApp(builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:child!)),home:P2pSupportRequestsPage(expectedUserId:'buyer',currentUserId:()=>'buyer',load:()async=>{'state':'disputed','items':[{'request_id':'request','instruction':'Provide the synthetic bank reference for review.','due_at':'2026-10-25T10:00:00Z','response_id':null}]},respond:(_,__)async{})));
  await t.pumpAndSettle();await t.scrollUntilVisible(find.text('Respond').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Respond'));await t.pumpAndSettle();await t.scrollUntilVisible(find.byType(TextField).hitTestable(),150,scrollable:find.byType(Scrollable).first);expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
 });

 testWidgets('late pre-submit read cannot write after account replacement',(t)async{
  String? user='buyer';int reads=0,writes=0;final held=Completer<Map<String,dynamic>>();final data={'state':'disputed','items':[{'request_id':'request','instruction':'Synthetic support instruction','due_at':'2026-10-25T10:00:00Z','response_id':null}]};
  await t.pumpWidget(MaterialApp(home:P2pSupportRequestsPage(expectedUserId:'buyer',currentUserId:()=>user,load:()async{reads++;return reads==1?data:held.future;},respond:(_,__)async{writes++;})));
  await t.pumpAndSettle();await t.tap(find.text('Respond'));await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Synthetic original response');await t.pump();await t.ensureVisible(find.text('Send response'));await t.tap(find.text('Send response'));await t.pump();user='other';held.complete(data);await t.pump(const Duration(seconds:1));expect(writes,0);expect(find.text('Access changed. Reopen P2P.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });

}
