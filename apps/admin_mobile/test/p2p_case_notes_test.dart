import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/src/screens/p2p_case_notes.dart';
void main(){
 testWidgets('accepted lost note recovers original receipt without duplicate append',(t)async{
  bool exists=false;int writes=0;
  Map<String,dynamic> data()=>{'staffOnly':true,'canAdd':true,'items':exists?[{'note_id':'original-note','details':'Private synthetic investigation note.','is_own':true,'created_at':'2026-10-24T00:00:00Z'}]:[]};
  await t.pumpWidget(MaterialApp(home:P2pCaseNotesPage(currentSession:()=>'staff',load:()async=>data(),add:(_)async{writes++;exists=true;throw StateError('Lost response');})));
  await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Private synthetic investigation note.');await t.pump();await t.scrollUntilVisible(find.text('Save private note').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Save private note'));await t.pumpAndSettle();expect(writes,1);
  await t.scrollUntilVisible(find.text('Check original note').hitTestable(),-150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Check original note'));await t.pumpAndSettle();expect(writes,1);expect(find.text('Receipt: original-note'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('authorization revocation removes private cached notes',(t)async{
  bool revoked=false;await t.pumpWidget(MaterialApp(home:P2pCaseNotesPage(currentSession:()=>'staff',load:()async{if(revoked)throw DioException(requestOptions:RequestOptions(path:'/notes'),response:Response(requestOptions:RequestOptions(path:'/notes'),statusCode:403));return{'staffOnly':true,'canAdd':true,'items':[{'note_id':'note','details':'Private synthetic investigation note.','is_own':true,'created_at':'2026-10-24T00:00:00Z'}]};},add:(_)async{})));
  await t.pumpAndSettle();revoked=true;await t.tap(find.text('Refresh case notes'));await t.pumpAndSettle();expect(find.text('Private synthetic investigation note.'),findsNothing);expect(find.text('Admin access changed. Reopen the case.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('late pre-append read under a replacement session cannot append',(t)async{
  String? session='staff';int reads=0,writes=0;final held=Completer<Map<String,dynamic>>();final data={'staffOnly':true,'canAdd':true,'items':[]};
  await t.pumpWidget(MaterialApp(home:P2pCaseNotesPage(currentSession:()=>session,load:()async{reads++;return reads==1?data:held.future;},add:(_)async{writes++;})));
  await t.pumpAndSettle();await t.enterText(find.byType(TextField),'Private synthetic investigation note.');await t.pump();await t.scrollUntilVisible(find.text('Save private note').hitTestable(),150,scrollable:find.byType(Scrollable).first);await t.tap(find.text('Save private note'));await t.pump();session='replacement';held.complete(data);await t.pump(const Duration(seconds:1));expect(writes,0);expect(find.text('Admin access changed. Reopen the case.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('note limit keeps immutable original notes readable',(t)async{
  await t.pumpWidget(MaterialApp(home:P2pCaseNotesPage(currentSession:()=>'staff',load:()async=>{'staffOnly':true,'canAdd':false,'items':[{'note_id':'note','details':'Private synthetic investigation note.','is_own':true,'created_at':'2026-10-24T00:00:00Z'}]},add:(_)async{})));
  await t.pumpAndSettle();expect(find.byType(TextField),findsNothing);expect(find.text('Private synthetic investigation note.'),findsOneWidget);expect(find.text('Note limit reached. Existing investigation records remain available.'),findsOneWidget);await t.pumpWidget(const SizedBox());
 });
 testWidgets('private note form remains usable at320dp RTL and enlarged text',(t)async{
  t.view.physicalSize=const Size(320,900);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  await t.pumpWidget(MaterialApp(builder:(context,child)=>MediaQuery(data:MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(2)),child:Directionality(textDirection:TextDirection.rtl,child:child!)),home:P2pCaseNotesPage(currentSession:()=>'staff',load:()async=>{'staffOnly':true,'canAdd':true,'items':[]},add:(_)async{})));
  await t.pumpAndSettle();await t.scrollUntilVisible(find.text('Save private note').hitTestable(),150,scrollable:find.byType(Scrollable).first);expect(t.takeException(),isNull);await t.pumpWidget(const SizedBox());
 });
}
