import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/call_details_screen.dart';
import 'package:masanawa/src/calls/call_history.dart';
import 'package:masanawa/src/calls/call_outcome.dart';
import 'package:masanawa/src/calls/group_call_transport.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'calls_screen_test.dart' show signedIn;
class _Session extends SessionController {
 @override SessionState build()=>signedIn('a');
 void change(String id)=>state=signedIn(id);
}
final item=CallHistoryItem(callId:'call-a',characterId:'agent-a',displayName:'Amina',state:'ended',createdAt:DateTime.utc(2026,10,17,10),connectedAt:DateTime.utc(2026,10,17,10,0,5),endedAt:DateTime.utc(2026,10,17,10,1,10),endReason:CallEndReason.connectionFailed);
class _Transport implements CallHistoryTransport,CallDetailTransport {
 _Transport(this.handler);final Future<CallHistoryItem> Function() handler;
 @override Future<CallHistoryItem> get(String id,{CancelToken? cancelToken})=>handler();
 @override Future<CallHistoryPage> loadPage({String? cursor,String query='',CancelToken? cancelToken})async=>CallHistoryPage(calls:[item]);
 @override Future<MasanaCallGroup> group(String id,{CancelToken? cancelToken})=>throw StateError('not group');
}
Future<void> mount(WidgetTester t,_Session s,_Transport transport)=>t.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(()=>s),callHistoryTransportProvider.overrideWithValue(transport)],child:MaterialApp(home:CallDetailsScreen(ownerId:'a',initial:item))));
void main(){
 testWidgets('full detail shows actual duration, outcome and profile action at phone width',(t)async{
  t.view.physicalSize=const Size(360,800);t.view.devicePixelRatio=1;addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  await mount(t,_Session(),_Transport(()async=>item));await t.pumpAndSettle();
  expect(find.text('Call details'),findsOneWidget);expect(find.text('01:05'),findsOneWidget);expect(find.text('View profile'),findsOneWidget);expect(find.text('Call again'),findsOneWidget);expect(t.takeException(),isNull);
 });
 testWidgets('late result cannot expose previous account detail',(t)async{
  final pending=Completer<CallHistoryItem>();final s=_Session();
  await mount(t,s,_Transport(()=>pending.future));await t.pump();s.change('b');await t.pump();pending.complete(item);await t.pumpAndSettle();
  expect(find.text('Sign in to view this call.'),findsOneWidget);expect(find.text('Amina'),findsNothing);
 });
 testWidgets('centered failure retries detail request',(t)async{
  var requests=0;await mount(t,_Session(),_Transport(()async{if(requests++==0)throw StateError('offline');return item;}));await t.pumpAndSettle();
  expect(find.text('Retry'),findsOneWidget);await t.tap(find.text('Retry'));await t.pumpAndSettle();expect(find.text('Amina'),findsOneWidget);
 });
}
