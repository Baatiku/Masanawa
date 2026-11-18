import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_shell.dart';
import 'package:masanawa/src/core/live_voice_session.dart';
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 test('saved persona context reaches Live setup and the opening cue continues the conversation',()async{
  final server=await HttpServer.bind(InternetAddress.loopbackIPv4,0);
  final setup=Completer<Map<String,dynamic>>(),cue=Completer<Map<String,dynamic>>();
  WebSocket? peer;
  final listener=server.listen((request)async{
   final socket=await WebSocketTransformer.upgrade(request);peer=socket;
   socket.listen((raw){
    final event=(jsonDecode(raw as String) as Map).cast<String,dynamic>();
    if(event['setup'] is Map){setup.complete((event['setup'] as Map).cast<String,dynamic>());socket.add(jsonEncode({'setupComplete':{}}));}
    if(event['clientContent'] is Map&&!cue.isCompleted)cue.complete((event['clientContent'] as Map).cast<String,dynamic>());
   });
  });
  final microphone=StreamController<Uint8List>.broadcast();
  final session=LiveVoiceSession(grant:AgentLiveVoiceGrant(token:'test',websocketUrl:'ws://127.0.0.1:${server.port}',model:'test',voiceName:'Bodi',expiresAt:DateTime.now().add(const Duration(minutes:2)),systemInstruction:'Continue with Bello. We were studying anatomy.'),characterName:'Amina',sharedMicrophone:microphone.stream);
  try{
   await session.start();final value=await setup.future.timeout(const Duration(seconds:3));
   expect(value['systemInstruction']['parts'][0]['text'],'Continue with Bello. We were studying anatomy.');
   final opening=await cue.future.timeout(const Duration(seconds:3));
   expect(opening['turns'][0]['parts'][0]['text'],contains('Do not repeat your introduction'));
   await session.ready.timeout(const Duration(seconds:3));
  }finally{
   await session.close();await microphone.close();await peer?.close();await listener.cancel();await server.close(force:true);
  }
 });
}
