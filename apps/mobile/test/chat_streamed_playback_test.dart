import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_session.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/core/live_call_foreground.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/voice/voice_reply_playback_preference.dart';
class _Controller extends AiChatController{@override AiChatState build()=>const AiChatState();}
class _Autoplay extends VoiceReplyAutoplay{_Autoplay(this.enabled);final bool enabled;@override Future<bool> build()async=>enabled;}
class _Transport implements AgentTransport{
 final first=Completer<void>(),finish=Completer<AgentTurnResult>();int sends=0;
 @override Future<AgentSessionBinding> openSession(String id)async=>AgentSessionBinding(characterId:id,characterSessionId:'session');
 @override Future<void> closeSession(AgentSessionBinding binding)async{}
 @override Future<AgentTurnResult> sendTurn({required AgentSessionBinding binding,required String text,void Function(String)? onTextDelta,Future<void> Function(Uint8List)? onAudioPcmChunk,String? requestId})async{
  sends++;onTextDelta?.call('Partial');await onAudioPcmChunk?.call(Uint8List(320));first.complete();return finish.future;
 }
 @override dynamic noSuchMethod(Invocation invocation)=>super.noSuchMethod(invocation);
}
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 test('completed stream retains actual text chunks when final text is empty', () async {
  final transport = _Transport();
  final container = ProviderContainer(overrides: [
    aiChatProvider.overrideWith(_Controller.new),
    agentTransportProvider.overrideWithValue(transport),
    voiceReplyAutoplayProvider.overrideWith(() => _Autoplay(false)),
  ]);
  try {
   final sending = container.read(aiChatProvider.notifier).sendText('agent', 'Hello');
   await transport.first.future.timeout(const Duration(seconds: 3));
   transport.finish.complete(const AgentTurnResult(text: ''));
   await sending;
   final messages = container.read(aiChatProvider).threads['agent']!.messages;
   final reply = messages.where((m) => !m.isUser).single;
   expect(reply.text, 'Partial');
   expect(reply.deliveryStatus, 'delivered');
   expect(transport.sends, 1);
  } finally {
   container.dispose();
  }
 });

 const channel=MethodChannel('masanawa/live_pcm');
 for(final mode in ['on','off','call']){
 test('chat reply $mode never plays generating PCM and finalizes once with canonical text',()async{
  final calls=<String>[];
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel,(call)async{calls.add(call.method);return true;});
  final transport=_Transport();
  final container=ProviderContainer(overrides:[aiChatProvider.overrideWith(_Controller.new),agentTransportProvider.overrideWithValue(transport),voiceReplyAutoplayProvider.overrideWith(()=>_Autoplay(mode!='off'))]);
  if(mode=='call')await LiveCallForeground.startOrThrow(android:false);
  try{
   final sending=container.read(aiChatProvider.notifier).sendText('agent','Hello');
   await transport.first.future.timeout(const Duration(seconds:2));
   expect(calls.where((c)=>c=='write').length,0,reason:'A recorded-message reply must never play generation PCM or steal a live call');
   expect(container.read(aiChatProvider).threads['agent']!.messages.where((m)=>!m.isUser).single.deliveryStatus,'streaming');
   transport.finish.complete(const AgentTurnResult(text:'A complete canonical answer.',audioDurationMs:0));await sending;
   final replies=container.read(aiChatProvider).threads['agent']!.messages.where((m)=>!m.isUser).toList();
   expect(replies,hasLength(1));expect(replies.single.text,'A complete canonical answer.');expect(replies.single.deliveryStatus,'delivered');expect(transport.sends,1);
   await Future<void>.delayed(const Duration(milliseconds:250));
  }finally{container.dispose();if(mode=='call')await LiveCallForeground.stop();TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel,null);}
 });
 }
}
