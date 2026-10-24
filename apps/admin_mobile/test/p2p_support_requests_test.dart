import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/src/screens/p2p_support_requests.dart';
void main(){
 testWidgets('staff recovers original request after accepted lost response',(t)async{
  bool exists=false;int writes=0;
  Map<String,dynamic> data()=>{'state':'disputed','items':exists?[{'request_id':'original-request','instruction':'Provide the synthetic bank reference.','due_at':'2026-10-25T10:00:00Z','recipient_role':'buyer','window_hours':24,'is_own':true,'response_id':null}]:[]};
  await t.pumpWidget(MaterialApp(home:P2pStaffSupportRequests(currentSession:()=>'staff',load:()async=>data(),request:(_,__,___)async{writes++;exists=true;throw StateError('Lost response');})));
  await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Provide the synthetic bank reference.');await t.pump();await t.scrollUntilVisible(find.text('Send evidence request'),150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Send evidence request'));await t.pumpAndSettle();expect(writes,1);
  await t.scrollUntilVisible(find.text('Check original request'),-150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Check original request'));await t.pumpAndSettle();expect(writes,1);expect(find.text('Receipt: original-request'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('staff session replacement clears private case context',(t)async{
  String? session='staff';await t.pumpWidget(MaterialApp(home:P2pStaffSupportRequests(currentSession:()=>session,load:()async=>{'state':'disputed','items':[{'request_id':'request','instruction':'Private synthetic instruction','due_at':'2026-10-25T10:00:00Z','recipient_role':'buyer','response_id':null}]},request:(_,__,___)async{})));await t.pumpAndSettle();session='replacement';await t.pump(const Duration(seconds:1));expect(find.text('Private synthetic instruction'),findsNothing);expect(find.text('Admin access changed. Reopen the case.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('staff form fits 320dp RTL with enlarged text',(t)async{
  t.view.physicalSize=const Size(320,900);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  await t.pumpWidget(MaterialApp(builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:child!)),home:P2pStaffSupportRequests(currentSession:()=>'staff',load:()async=>{'state':'disputed','items':[]},request:(_,__,___)async{})));
  await t.pumpAndSettle();await t.scrollUntilVisible(find.text('Send evidence request'),150,scrollable:find.byType(Scrollable).first);expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
 });

 testWidgets('definitive pending-request rejection permits editing',(t)async{
  await t.pumpWidget(MaterialApp(home:P2pStaffSupportRequests(currentSession:()=>'staff',load:()async=>{'state':'disputed','items':[]},request:(_,__,___)async=>throw DioException(requestOptions:RequestOptions(path:'/requests'),response:Response(requestOptions:RequestOptions(path:'/requests'),statusCode:409)))));
  await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Synthetic evidence instruction');await t.pump();await t.scrollUntilVisible(find.text('Send evidence request').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Send evidence request'));await t.pumpAndSettle();expect(t.widget<TextField>(find.byType(TextField)).enabled,isTrue);expect(find.text('Retry original request'),findsNothing);await t.pumpWidget(const SizedBox());
 });

}
