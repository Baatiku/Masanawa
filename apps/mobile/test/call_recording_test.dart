import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/call_recording.dart';
Uint8List pcm(int count,int value){final data=ByteData(count*2);for(var i=0;i<count;i++){data.setInt16(i*2,value,Endian.little);}return data.buffer.asUint8List();}
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 late Directory root;late CallRecordingStore store;
 setUp(()async{root=await Directory.systemTemp.createTemp('call-recording-test');store=CallRecordingStore('account/a',root:root);});
 tearDown(()async{await root.delete(recursive:true);});
 test('opt-in mixes actual two-track PCM, saves a valid WAV, stops once and isolates owners',()async{
  var micros=0;
  final recorder=CallRecorder(store:store,agentName:'Gwani',isCurrentAccount:()=>true,elapsedMicroseconds:()=>micros);
  recorder.input(pcm(160,1000));expect(await store.list(),isEmpty);
  await recorder.start();recorder.output(pcm(240,2000));micros=10000;recorder.input(pcm(160,1000));micros=20000;
  final stopped=recorder.stop();expect(identical(stopped,recorder.stop()),isTrue);
  final item=(await stopped)!;final bytes=await item.file.readAsBytes();final data=ByteData.sublistView(bytes);
  expect(String.fromCharCodes(bytes.sublist(0,4)),'RIFF');expect(data.getUint32(24,Endian.little),16000);
  expect(data.getUint32(40,Endian.little),640);expect(data.getInt16(44,Endian.little),3000);
  expect(data.getInt16(44+160*2,Endian.little),0);
  expect((await store.list()).single.agentName,'Gwani');
  expect(await CallRecordingStore('other',root:root).list(),isEmpty);
  expect(await (await store.directory()).list().where((f)=>f.path.endsWith('.input')||f.path.endsWith('.output')).length,0);
  await store.delete(item);expect(await store.list(),isEmpty);
 });
 test('interruption removes future queued output and close finalizes without another microphone',()async{
  var micros=0;final recorder=CallRecorder(store:store,agentName:'Gwana',isCurrentAccount:()=>true,elapsedMicroseconds:()=>micros);
  await recorder.start();recorder.output(pcm(2400,2000));micros=10000;recorder.interrupted();micros=20000;
  recorder.ended();final item=(await recorder.stop())!;
  final data=ByteData.sublistView(await item.file.readAsBytes());
  expect(data.getInt16(44+100*2,Endian.little),2000);expect(data.getInt16(44+200*2,Endian.little),0);
  await recorder.start();expect(recorder.recording,isFalse);
 });
 test('account change stops capture and never writes another owner files',()async{
  var current=true,micros=0;final recorder=CallRecorder(store:store,agentName:'Gwani',isCurrentAccount:()=>current,elapsedMicroseconds:()=>micros);
  await recorder.start();recorder.output(pcm(240,2000));micros=10000;current=false;recorder.input(pcm(160,3000));
  final item=(await recorder.stop())!;expect(recorder.recording,isFalse);
  final data=ByteData.sublistView(await item.file.readAsBytes());expect(data.getInt16(44,Endian.little),2000);
 });
 test('storage failure does not throw into media callbacks',()async{
  final blocking=File('${root.path}/file');await blocking.writeAsString('x');
  final recorder=CallRecorder(store:CallRecordingStore('owner',root:Directory(blocking.path)),agentName:'Gwani',isCurrentAccount:()=>true);
  await recorder.start();expect(recorder.error,isNotNull);expect(recorder.recording,isFalse);
  expect(()=>recorder.input(pcm(160,100)),returnsNormally);recorder.ended();await recorder.stop();
 });
 test('discard a zero-duration recording and reject cross-owner deletion',()async{
  final recorder=CallRecorder(store:store,agentName:'Gwani',isCurrentAccount:()=>true,elapsedMicroseconds:()=>0);
  await recorder.start();expect(await recorder.stop(),isNull);expect(await store.list(),isEmpty);
  final foreign=CallRecording(id:'1-a',agentName:'Other',createdAt:DateTime.now(),durationMs:100,file:File('${root.path}/other.wav'));
  await expectLater(store.delete(foreign),throwsStateError);
 });
}
