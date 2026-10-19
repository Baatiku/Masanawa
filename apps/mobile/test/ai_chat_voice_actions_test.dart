import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:record/record.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/voice_note_recorder.dart';
import 'package:masanawa/src/screens/chat/ai_chat_screen.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/state/wallet_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';
import 'package:masanawa/src/ui/components/voice_note_composer.dart';
class _Native extends Mock implements AudioRecorder {}
class _Recorder extends VoiceNoteRecorder {
 _Recorder():super(recorder:_Native());
 var retained=false;
 @override Future<void> start({bool Function()? isOwnerCurrent}) async {state=VoiceNoteState.recording;notifyListeners();}
 @override Future<ChatAttachment?> stop() async {state=VoiceNoteState.ready;note=const ChatAttachment(kind:'voice',path:'/private/note.m4a',durationMs:1000,sizeBytes:42);notifyListeners();return note;}
 @override Future<void> cancel() async {state=VoiceNoteState.idle;notifyListeners();}
 @override Future<void> close() async {}
 @override void retain(){retained=true;}
}
class _Chats extends AiChatController {
 Completer<void>? response;
 final sent=<ChatAttachment>[];
 final texts=<String>[];
 @override void setDraft(String characterId,String value) {}
 @override void setDraftAttachments(String characterId,List<ChatAttachment> value) {}
 @override Future<void> sendText(String characterId,String rawText,{String? replyToId,String? replyPreview,String? transportPrompt}) async {
  texts.add(rawText);
  state=AiChatState(threads:{characterId:ChatThread(characterId:characterId,messages:[AiChatMessage(id:'emoji',isUser:true,text:rawText,createdAt:DateTime.now(),deliveryStatus:'delivered')])});
 }

 @override AiChatState build()=>const AiChatState();
 @override void openThread(String characterId) {}
 @override void closeThread() {}
 @override Future<void> sendAttachment(String characterId,ChatAttachment attachment,{String? caption,String? replyToId,String? replyPreview,Future<void> Function()? onAccepted}) async {sent.add(attachment);await onAccepted?.call();await response?.future;}
}
class _Directory extends AgentDirectoryController {
 @override AgentDirectoryState build()=>const AgentDirectoryState(loading:false,agents:[AgentDirectoryEntry(characterId:'agent',characterVersionId:'v1',displayName:'Amina',roleLabel:'AI',about:'',presence:AgentPresence.available,supportAgent:true)]);
 @override Future<void> refresh() async {}
}
const _user=AuthUser(id:'account-a',name:'Fan',locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-12');
const _tokens=AuthTokens(accessToken:'test',refreshToken:'test-refresh',accessExpiresIn:3600,user:_user);
class _Session extends SessionController {
 @override SessionState build()=>const SessionSignedIn(_user,_tokens);
}
class _Wallet extends WalletController {
 @override Future<WalletView?> build() async=>null;
 @override Future<void> refresh() async {}
}
void main() {
 setUp(()=>SharedPreferences.setMockInitialValues({}));
 testWidgets('chat microphone records and sends a voice note, never requests a call permission', (tester) async {
  var callPermissionRequests=0;
  const channel=MethodChannel('flutter.baseflow.com/permissions/methods');
  tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel,(call) async {callPermissionRequests++;return 1;});
  addTearDown(()=>tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel,null));
  final chats=_Chats();final recorder=_Recorder();
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(()=>chats),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new),voiceNoteRecorderFactoryProvider.overrideWithValue(()=>recorder)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  await tester.tap(find.bySemanticsLabel('Record voice note'));await tester.pumpAndSettle();
  expect(find.text('Recording voice note'),findsOneWidget);
  expect(callPermissionRequests,0);
  await tester.tap(find.bySemanticsLabel('Send voice note'));await tester.pumpAndSettle();
  expect(chats.sent,hasLength(1));expect(chats.sent.single.kind,'voice');expect(recorder.retained,true);
  expect(find.text('Recording voice note'),findsNothing);
  expect(tester.takeException(),isNull);
 });
 testWidgets('hold recording releases to preview and re-record keeps the note unsent at phone width',(tester)async{
  tester.view.physicalSize=const Size(360,800);tester.view.devicePixelRatio=1;
  addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
  final recorder=_Recorder(),chats=_Chats();
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(()=>chats),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new),voiceNoteRecorderFactoryProvider.overrideWithValue(()=>recorder)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  final gesture=await tester.startGesture(tester.getCenter(find.bySemanticsLabel('Record voice note')));
  await tester.pump(const Duration(milliseconds:600));await tester.pump();
  expect(recorder.state,VoiceNoteState.recording);
  await gesture.up();await tester.pumpAndSettle();
  expect(recorder.state,VoiceNoteState.ready);expect(find.byTooltip('Play preview'),findsOneWidget);expect(chats.sent,isEmpty);
  await tester.tap(find.byTooltip('Record again'));await tester.pumpAndSettle();
  expect(recorder.state,VoiceNoteState.recording);expect(chats.sent,isEmpty);expect(tester.takeException(),isNull);
 });
 testWidgets('accepted voice note closes recorder before the agent finishes', (tester) async {
  final chats=_Chats()..response=Completer<void>();final recorder=_Recorder();
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(()=>chats),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new),voiceNoteRecorderFactoryProvider.overrideWithValue(()=>recorder)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  await tester.tap(find.bySemanticsLabel('Record voice note'));await tester.pumpAndSettle();
  await tester.tap(find.bySemanticsLabel('Send voice note'));await tester.pump();await tester.pump();
  expect(chats.sent,hasLength(1));
  expect(find.text('Recording voice note'),findsNothing);
  expect(find.bySemanticsLabel('Send voice note'),findsNothing);
  expect(recorder.retained,isTrue);
  chats.response!.complete();await tester.pumpAndSettle();
 });
 testWidgets('chat search uses the available header width and closes with its back arrow', (tester) async {
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(_Chats.new),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  await tester.tap(find.byTooltip('Search'));
  await tester.pumpAndSettle();
  final search=find.byWidgetPredicate((widget)=>widget is TextField && widget.decoration?.hintText=='Search this chat');
  expect(search, findsOneWidget);
  expect(tester.getSize(search).width, greaterThan(600));
  expect(find.byTooltip('Call'), findsNothing);
  await tester.enterText(search, 'A long search phrase');
  await tester.pump();
  await tester.tap(find.byTooltip('Close search'));
  await tester.pumpAndSettle();
  expect(search, findsNothing);
  expect(find.byTooltip('Call'), findsOneWidget);
  expect(tester.takeException(), isNull);
 });
 testWidgets('Data Bundles remains visible before call and search at phone width', (tester) async {
  tester.view.physicalSize=const Size(360,800);tester.view.devicePixelRatio=1;
  addTearDown(tester.view.resetPhysicalSize);addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(_Chats.new),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  final bundles=find.text('Data Bundles');
  expect(bundles, findsOneWidget);
  expect(tester.getCenter(bundles).dx,lessThan(tester.getCenter(find.byTooltip('Call')).dx));
  expect(tester.getCenter(find.byTooltip('Call')).dx,lessThan(tester.getCenter(find.byTooltip('Search')).dx));
  final button=tester.widget<TextButton>(find.ancestor(of:bundles,matching:find.byType(TextButton)).first);
  expect(button.style!.foregroundColor!.resolve({}), isNot(Colors.white));
  expect(tester.takeException(),isNull);
 });
 testWidgets('chat avatar opens this Masana profile callback', (tester) async {
  var opened=0;
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(_Chats.new),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:AiChatScreen(characterId:'agent',onOpenProfile:()=>opened++))));
  await tester.pumpAndSettle();await tester.tap(find.text('Amina').first);await tester.pump();
  expect(opened,1);
 });
 testWidgets('chat avatar opens the Masana detail screen without shell callbacks', (tester) async {
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(_Chats.new),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();await tester.tap(find.text('Amina').first);await tester.pumpAndSettle();
  expect(find.text('Masana profile'),findsOneWidget);expect(find.text('Recent posts'),findsOneWidget);expect(find.text('About'),findsNothing);
 });
 testWidgets('emoji picker opens and an emoji-only message sends and renders without a crash',(tester)async{
  final chats=_Chats();
  await tester.pumpWidget(ProviderScope(overrides:[aiChatProvider.overrideWith(()=>chats),agentDirectoryProvider.overrideWith(_Directory.new),sessionProvider.overrideWith(_Session.new),walletProvider.overrideWith(_Wallet.new)],child:MaterialApp(theme:buildMasanawaTheme(brightness:Brightness.light),home:const AiChatScreen(characterId:'agent'))));
  await tester.pumpAndSettle();
  await tester.tap(find.byTooltip('Emoji'));await tester.pumpAndSettle();
  expect(find.byKey(const ValueKey('chat-emoji-panel')),findsOneWidget);
  await tester.tap(find.byTooltip('Return to keyboard'));await tester.pumpAndSettle();
  const text='👍🏿 🇳🇬 👨‍👩‍👧‍👦';
  await tester.enterText(find.byType(TextField).first,text);await tester.pump();
  await tester.tap(find.bySemanticsLabel('Send message'));await tester.pumpAndSettle();
  expect(chats.texts,[text]);expect(find.text(text),findsOneWidget);expect(tester.takeException(),isNull);
 });

}


