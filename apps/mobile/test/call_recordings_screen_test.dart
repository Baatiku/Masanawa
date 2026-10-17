import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/call_recording.dart';
import 'package:masanawa/src/calls/call_recordings_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
class _Session extends SessionController{
 @override SessionState build()=>_signedIn();
 void signOut()=>state=const SessionSignedOut();
}
SessionSignedIn _signedIn(){final user=AuthUser(id:'a',name:'A',locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-17T00:00:00Z');return SessionSignedIn(user,AuthTokens(accessToken:'x',refreshToken:'y',accessExpiresIn:3600,user:user));}
class _Store extends CallRecordingStore {
 _Store():super('a');
 final items=[CallRecording(id:'1-a',agentName:'Gwani',createdAt:DateTime.utc(2026,10,17),durationMs:10000,file:File('/private/recording.wav'))];
 @override Future<List<CallRecording>> list()async=>items;
 @override Future<void> delete(CallRecording item)async{items.remove(item);}
}
void main(){
 testWidgets('private recordings open full detail, stop at end controls, review deletion and account guard',(tester)async{
  final store=_Store();
  final session=_Session();
  await tester.pumpWidget(ProviderScope(overrides:[sessionProvider.overrideWith(()=>session)],child:MaterialApp(home:CallRecordingsScreen(ownerId:'a',store:store))));
  await tester.runAsync(()=>Future<void>.delayed(const Duration(milliseconds:50)));await tester.pumpAndSettle();
  await tester.tap(find.text('Gwani'));await tester.pumpAndSettle();
  expect(find.byType(Slider),findsOneWidget);expect(find.byTooltip('Play'),findsOneWidget);
  expect(find.byTooltip('Share recording'),findsOneWidget);expect(find.byTooltip('Back 10 seconds'),findsOneWidget);
  await tester.tap(find.text('Delete recording'));await tester.pumpAndSettle();
  expect(find.byType(AlertDialog),findsNothing);expect(find.text('This recording will be permanently removed from this device.'),findsOneWidget);
  await tester.pageBack();await tester.pumpAndSettle();expect(await store.list(),hasLength(1));
  session.signOut();await tester.pumpAndSettle();expect(find.text('Gwani'),findsNothing);
  expect(find.text('Sign in to view your recording.'),findsOneWidget);expect(tester.takeException(),isNull);
 });
}
