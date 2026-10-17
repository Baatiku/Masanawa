import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

/// Observes existing call media. Implementations must never acquire a microphone.
abstract interface class CallAudioObserver {
  void input(Uint8List pcm);
  void output(Uint8List pcm);
  void interrupted();
  void ended();
}

class CallRecording {
  const CallRecording({required this.id, required this.agentName,
    required this.createdAt, required this.durationMs, required this.file});
  final String id, agentName;
  final DateTime createdAt;
  final int durationMs;
  final File file;
}

class CallRecordingStore {
  CallRecordingStore(this.ownerId, {this.root});
  final String ownerId;
  final Directory? root;
  Future<Directory> directory() async {
    if (ownerId.isEmpty) throw StateError('Sign in to use recordings.');
    final base = root ?? await getApplicationSupportDirectory();
    final owner = base64Url.encode(utf8.encode(ownerId)).replaceAll('=', '');
    return Directory('${base.path}/call-recordings/$owner').create(recursive:true);
  }
  Future<List<CallRecording>> list() async {
    final dir = await directory();
    final rows = <CallRecording>[];
    await for (final entry in dir.list(followLinks:false)) {
      if (entry is! File || !entry.path.endsWith('.json')) continue;
      try {
        final json = jsonDecode(await entry.readAsString()) as Map<String,dynamic>;
        final id = json['id'] as String;
        if (!RegExp(r'^\d+-[a-f0-9]+$').hasMatch(id)) continue;
        final audio = File('${dir.path}/$id.wav');
        if (!await audio.exists()) continue;
        rows.add(CallRecording(id:id,agentName:json['agentName'] as String,
          createdAt:DateTime.parse(json['createdAt'] as String),
          durationMs:json['durationMs'] as int,file:audio));
      } catch (_) { /* An interrupted, partial file is not a saved recording. */ }
    }
    rows.sort((a,b)=>b.createdAt.compareTo(a.createdAt));
    return rows;
  }
  Future<void> delete(CallRecording item) async {
    final dir = await directory();
    if (!RegExp(r'^\d+-[a-f0-9]+$').hasMatch(item.id) || item.file.path != '${dir.path}/${item.id}.wav') throw StateError('Invalid recording.');
    // Hide metadata first; interrupted deletion cannot expose a broken entry.
    for (final suffix in ['json','wav']) {
      final file = File('${dir.path}/${item.id}.$suffix');
      if (await file.exists()) await file.delete();
    }
  }
}

/// Disk-backed, bounded two-track capture. The call never awaits recording I/O.
/// Output represents PCM accepted by the player; hardware playback latency can
/// differ and is qualified on a handset, not inferred from this observer.
class CallRecorder implements CallAudioObserver {
  CallRecorder({required this.store,required this.agentName,
    required this.isCurrentAccount,this.onChanged,this.maxDuration=const Duration(minutes:30),
    int Function()? elapsedMicroseconds}) : _elapsedOverride=elapsedMicroseconds;
  final CallRecordingStore store;
  final String agentName;
  final bool Function() isCurrentAccount;
  final void Function()? onChanged;
  final Duration maxDuration;
  final int Function()? _elapsedOverride;
  final Stopwatch _clock=Stopwatch();
  bool recording=false, saving=false, _starting=false, _closed=false;
  String? error;
  Future<void> _queue=Future.value();
  Future<CallRecording?>? _finishing;
  RandomAccessFile? _inputFile,_outputFile;
  String? _prefix;
  DateTime? _created;
  String? _id;
  int _inputEnd=0,_outputEnd=0,_queuedBytes=0,_outputPhase=0;
  Timer? _limit;
  int get _now => ((_elapsedOverride?.call() ?? _clock.elapsedMicroseconds)*16000)~/1000000;
  void _notify(){onChanged?.call();}
  Future<void> start() async {
    if(recording||saving||_starting||_closed||!isCurrentAccount())return;
    _starting=true;error=null;_notify();
    try {
      final dir=await store.directory();
      if(_closed||!isCurrentAccount())return;
      _created=DateTime.now().toUtc();
      _id='${_created!.microsecondsSinceEpoch}-${Random.secure().nextInt(0x7fffffff).toRadixString(16)}';
      _prefix='${dir.path}/$_id';
      _inputFile=await File('$_prefix.input').open(mode:FileMode.write);
      _outputFile=await File('$_prefix.output').open(mode:FileMode.write);
      if(_closed||!isCurrentAccount()){await _discard();return;}
      _inputEnd=0;_outputEnd=0;_outputPhase=0;_finishing=null;
      _clock..reset()..start();recording=true;
      _limit=Timer(maxDuration,(){unawaited(stop());});
    }catch(_){error='Recording could not start. Check device storage.';await _discard();}
    finally{_starting=false;_notify();}
  }
  void _write(bool outgoing,Uint8List pcm){
    if(!recording)return;
    if(!isCurrentAccount()){unawaited(stop());return;}
    if(_now>=maxDuration.inMilliseconds*16){unawaited(stop());return;}
    if(pcm.isEmpty)return;
    // PCM is signed 16-bit mono; output is 24 kHz, input 16 kHz.
    Uint8List bytes;
    if(outgoing){
      final source=ByteData.sublistView(pcm);final samples=<int>[];
      for(var i=0;i+1<pcm.length;i+=2){
        _outputPhase+=2;
        if(_outputPhase>=3){samples.add(source.getInt16(i,Endian.little));_outputPhase-=3;}
      }
      final converted=ByteData(samples.length*2);
      for(var i=0;i<samples.length;i++){converted.setInt16(i*2,samples[i],Endian.little);}
      bytes=converted.buffer.asUint8List();
    }else{bytes=Uint8List.fromList(pcm.sublist(0,pcm.length-pcm.length%2));}
    if(_queuedBytes+bytes.length>1024*1024){_fail();return;}
    final frames=bytes.length~/2;
    final offset=outgoing?max(_now,_outputEnd):max(max(0,_now-frames),_inputEnd);
    if(outgoing){_outputEnd=offset+frames;}else{_inputEnd=offset+frames;}
    final file=outgoing?_outputFile:_inputFile;
    _queuedBytes+=bytes.length;
    _queue=_queue.then((_)async{
      try{await file!.setPosition(offset*2);await file.writeFrom(bytes);}
      catch(_){_fail();}
      finally{_queuedBytes-=bytes.length;}
    });
  }
  void _fail(){
    if(error!=null)return;
    error='Recording stopped because device storage is unavailable.';
    unawaited(stop());_notify();
  }
  @override void input(Uint8List pcm)=>_write(false,pcm);
  @override void output(Uint8List pcm)=>_write(true,pcm);
  @override void interrupted(){
    if(!recording)return;
    final frame=_now;_outputEnd=min(_outputEnd,frame);_outputPhase=0;
    _queue=_queue.then((_)async{try{await _outputFile?.truncate(frame*2);}catch(_){_fail();}});
  }
  @override void ended(){_closed=true;unawaited(stop());}
  Future<CallRecording?> stop(){
    if(_finishing!=null)return _finishing!;
    if(!recording)return Future.value(null);
    recording=false;saving=true;_clock.stop();_limit?.cancel();
    final frames=min(_now,maxDuration.inMilliseconds*16);
    _notify();
    return _finishing=_finish(frames);
  }
  Future<CallRecording?> _finish(int frames)async{
    try{
      await _queue;
      await _inputFile?.close();_inputFile=null;
      await _outputFile?.close();_outputFile=null;
      if(error!=null||frames==0){await _discard();return null;}
      final prefix=_prefix!;
      await Isolate.run(()=>_mixRecording(prefix,frames));
      final item=CallRecording(id:_id!,agentName:agentName,createdAt:_created!,durationMs:frames~/16,file:File('$prefix.wav'));
      final metadata=File('$prefix.json.tmp');
      await metadata.writeAsString(jsonEncode({'id':item.id,'agentName':agentName,'createdAt':item.createdAt.toIso8601String(),'durationMs':item.durationMs}),flush:true);
      await metadata.rename('$prefix.json');
      return item;
    }catch(_){error='Recording could not be saved. Check device storage.';await _discard();return null;}
    finally{saving=false;_notify();}
  }
  Future<void> _discard()async{
    try{await _inputFile?.close();}catch(_){} _inputFile=null;
    try{await _outputFile?.close();}catch(_){} _outputFile=null;
    if(_prefix==null)return;
    for(final suffix in ['input','output','wav','json.tmp']){
      try{final f=File('$_prefix.$suffix');if(await f.exists())await f.delete();}catch(_){}
    }
  }
}

Future<void> _mixRecording(String prefix,int frames)async{
  final input=await File('$prefix.input').open();
  final output=await File('$prefix.output').open();
  final wav=await File('$prefix.wav').open(mode:FileMode.write);
  try{
    final header=ByteData(44);
    void tag(int at,String value){for(var i=0;i<value.length;i++){header.setUint8(at+i,value.codeUnitAt(i));}}
    tag(0,'RIFF');header.setUint32(4,36+frames*2,Endian.little);tag(8,'WAVE');tag(12,'fmt ');
    header.setUint32(16,16,Endian.little);header.setUint16(20,1,Endian.little);header.setUint16(22,1,Endian.little);
    header.setUint32(24,16000,Endian.little);header.setUint32(28,32000,Endian.little);header.setUint16(32,2,Endian.little);header.setUint16(34,16,Endian.little);
    tag(36,'data');header.setUint32(40,frames*2,Endian.little);await wav.writeFrom(header.buffer.asUint8List());
    for(var offset=0;offset<frames;offset+=4096){
      final count=min(4096,frames-offset);
      final a=ByteData.sublistView(await input.read(count*2));
      final b=ByteData.sublistView(await output.read(count*2));
      final mixed=ByteData(count*2);
      for(var i=0;i<count;i++){
        final x=i*2+1<a.lengthInBytes?a.getInt16(i*2,Endian.little):0;
        final y=i*2+1<b.lengthInBytes?b.getInt16(i*2,Endian.little):0;
        mixed.setInt16(i*2,(x+y).clamp(-32768,32767),Endian.little);
      }
      await wav.writeFrom(mixed.buffer.asUint8List());
    }
    await wav.flush();
  }finally{await input.close();await output.close();await wav.close();}
  await File('$prefix.input').delete();await File('$prefix.output').delete();
}
