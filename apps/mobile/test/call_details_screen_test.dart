import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
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
  expect(find.text('Call details'),findsOneWidget);expect(find.text('01:05'),findsOneWidget);expect(find.text('View profile'),findsOneWidget);expect(find.text('Call again'),findsOneWidget);expect(find.text('Message'),findsOneWidget);expect(t.takeException(),isNull);
 });
 testWidgets('Message opens text chat for the verified Masana, not a new call',(t)async{
  final router=GoRouter(routes:[
   GoRoute(path:'/',builder:(_,__)=>CallDetailsScreen(ownerId:'a',initial:item)),
   GoRoute(path:'/chat/:id',builder:(_,state)=>Scaffold(body:Text('Text chat ${state.pathParameters['id']} ${state.uri.queryParameters['entry']??'default'}'))),
  ]);
  addTearDown(router.dispose);
  await t.pumpWidget(ProviderScope(overrides:[
   sessionProvider.overrideWith(_Session.new),
   callHistoryTransportProvider.overrideWithValue(_Transport(()async=>item)),
  ],child:MaterialApp.router(routerConfig:router)));
  await t.pumpAndSettle();
  await t.tap(find.text('Message'));await t.pumpAndSettle();
  expect(find.text('Text chat agent-a default'),findsOneWidget);
 });
 testWidgets('group call details never redial an arbitrary member as a one-to-one call',(t)async{
  final groupItem=CallHistoryItem(callId:item.callId,characterId:item.characterId,displayName:'Team Masana',state:'ended',groupId:'group-1',createdAt:item.createdAt);
  await mount(t,_Session(),_Transport(()async=>groupItem));await t.pumpAndSettle();
  expect(find.text('Back to Calls'),findsOneWidget);
  expect(find.text('Call again'),findsNothing);
  expect(find.text('Message'),findsNothing);
  expect(find.text('View profile'),findsNothing);
  expect(find.textContaining('An old group call cannot be redialled'),findsOneWidget);
  expect(t.takeException(),isNull);
 });
 testWidgets('one-to-one call actions wrap at 320dp with 200% text',(t)async{
  t.view.physicalSize=const Size(320,900);t.view.devicePixelRatio=1;
  addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
  await t.pumpWidget(ProviderScope(overrides:[
   sessionProvider.overrideWith(_Session.new),
   callHistoryTransportProvider.overrideWithValue(_Transport(()async=>item)),
  ],child:MaterialApp(home:MediaQuery(data:const MediaQueryData(textScaler:TextScaler.linear(2)),child:CallDetailsScreen(ownerId:'a',initial:item)))));
  await t.pumpAndSettle();
  expect(find.text('Call again'),findsOneWidget);
  expect(find.text('Message'),findsOneWidget);
  expect(find.text('View profile'),findsOneWidget);
  expect(t.takeException(),isNull);
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
