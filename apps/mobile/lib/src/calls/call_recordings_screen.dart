import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:share_plus/share_plus.dart';
import '../core/call_recording.dart';
import '../core/live_call_foreground.dart';
import '../state/session_state.dart';

String _duration(int ms) => '${(ms~/60000).toString().padLeft(2,'0')}:${(ms~/1000%60).toString().padLeft(2,'0')}';
String _date(BuildContext context,DateTime value){
  final local=value.toLocal(), strings=MaterialLocalizations.of(context);
  return '${strings.formatMediumDate(local)} · ${strings.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
}
bool _active(WidgetRef ref,String owner){final s=ref.read(sessionProvider);return s is SessionSignedIn&&s.user.id==owner;}

class CallRecordingsScreen extends ConsumerStatefulWidget {
  const CallRecordingsScreen({super.key,required this.ownerId,this.store});
  final String ownerId;
  final CallRecordingStore? store;
  @override ConsumerState<CallRecordingsScreen> createState()=>_RecordingsState();
}
class _RecordingsState extends ConsumerState<CallRecordingsScreen>{
  late final store=widget.store??CallRecordingStore(widget.ownerId);
  List<CallRecording> rows=[];bool loading=true;String? error;int generation=0;
  @override void initState(){super.initState();load();}
  @override void dispose(){generation++;super.dispose();}
  Future<void> load()async{
    final version=++generation;setState((){loading=true;error=null;});
    if(!_active(ref,widget.ownerId))return;
    try{final result=await store.list();if(!mounted||version!=generation||!_active(ref,widget.ownerId))return;setState((){rows=result;loading=false;});}
    catch(_){if(mounted&&version==generation)setState((){loading=false;error='Could not load recordings. Check device storage.';});}
  }
  @override Widget build(BuildContext context){
    final s=ref.watch(sessionProvider);
    if(s is! SessionSignedIn||s.user.id!=widget.ownerId){
      return Scaffold(appBar:AppBar(title:const Text('Call recordings')),body:const Center(child:Text('Sign in to view your recordings.')));
    }
    return Scaffold(appBar:AppBar(title:const Text('Call recordings')),
      body:loading?const Center(child:CircularProgressIndicator()):error!=null?Center(child:Column(mainAxisSize:MainAxisSize.min,children:[Text(error!,textAlign:TextAlign.center),TextButton(onPressed:load,child:const Text('Retry'))])):
      rows.isEmpty?const Center(child:Padding(padding:EdgeInsets.all(24),child:Text('No recordings yet. Use Record call during a one-to-one call. Recordings stay on this device.',textAlign:TextAlign.center))):
      RefreshIndicator(onRefresh:load,child:ListView.separated(itemCount:rows.length,separatorBuilder:(_,__)=>const Divider(height:1),itemBuilder:(context,index){
        final item=rows[index];return ListTile(leading:const Icon(Icons.graphic_eq),title:Text(item.agentName),subtitle:Text('${_date(context,item.createdAt)} · ${_duration(item.durationMs)}'),trailing:const Icon(Icons.chevron_right),onTap:()async{
          await Navigator.push<void>(context,MaterialPageRoute(builder:(_)=>_RecordingDetail(owner:widget.ownerId,store:store,item:item)));
          if(mounted&&_active(ref,widget.ownerId))await load();
        });
      })));
  }
}
class _RecordingDetail extends ConsumerStatefulWidget{
  const _RecordingDetail({required this.owner,required this.store,required this.item});
  final String owner;final CallRecordingStore store;final CallRecording item;
  @override ConsumerState<_RecordingDetail> createState()=>_RecordingDetailState();
}
class _RecordingDetailState extends ConsumerState<_RecordingDetail>{
  AudioPlayer? player;StreamSubscription<PlayerState>? states;StreamSubscription<Duration>? positions;
  bool playing=false,busy=false;Duration position=Duration.zero;String? error;double speed=1;
  @override void dispose(){states?.cancel();positions?.cancel();player?.dispose();super.dispose();}
  Future<void> toggle()async{
    if(busy||!_active(ref,widget.owner))return;
    if(LiveCallForeground.active){setState(()=>error='End the current call before playing a recording.');return;}
    setState((){busy=true;error=null;});
    try{
      if(player==null){
        final p=AudioPlayer();player=p;await p.setLoopMode(LoopMode.off);
        states=p.playerStateStream.listen((state){
          if(!mounted)return;
          if(state.processingState==ProcessingState.completed){
            setState((){playing=false;position=Duration.zero;});
            unawaited(p.pause().then((_)=>p.seek(Duration.zero)));
          }
        });
        positions=p.positionStream.listen((value){if(mounted)setState(()=>position=value);});
        await p.setFilePath(widget.item.file.path);
      }
      if(!mounted||!_active(ref,widget.owner)||LiveCallForeground.active)return;
      if(playing){await player!.pause();if(mounted)setState(()=>playing=false);}
      else{await player!.setSpeed(speed);if(mounted)setState(()=>playing=true);unawaited(player!.play().catchError((Object _){if(mounted)setState((){playing=false;error='Could not play this recording.';});}));}
    }catch(_){if(mounted)setState(()=>error='Could not play this recording.');}
    finally{if(mounted)setState(()=>busy=false);}
  }
  Future<void> share()async{
    if(!_active(ref,widget.owner))return;
    try{
      final box=context.findRenderObject() as RenderBox?;
      await SharePlus.instance.share(ShareParams(files:[XFile(widget.item.file.path,mimeType:'audio/wav')],subject:'Call with ${widget.item.agentName}',sharePositionOrigin:box==null?null:box.localToGlobal(Offset.zero)&box.size));
    }catch(_){if(mounted)setState(()=>error='Could not share this recording.');}
  }
  Future<void> delete()async{
    await player?.pause();if(mounted)setState(()=>playing=false);
    if(!mounted||!_active(ref,widget.owner))return;
    final confirmed=await Navigator.push<bool>(context,MaterialPageRoute(builder:(_)=>Consumer(builder:(context,ref,_){
      final session=ref.watch(sessionProvider);
      final current=session is SessionSignedIn&&session.user.id==widget.owner;
      return Scaffold(appBar:AppBar(title:const Text('Delete recording')),body:Padding(padding:const EdgeInsets.all(24),child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
        Text(widget.item.agentName,style:Theme.of(context).textTheme.titleLarge),const SizedBox(height:16),
        const Text('This recording will be permanently removed from this device.'),const SizedBox(height:24),
        FilledButton(onPressed:current?()=>Navigator.pop(context,true):null,child:const Text('Delete recording')),
      ])));
    })));
    if(confirmed!=true||!mounted||!_active(ref,widget.owner))return;
    try{await player?.stop();await widget.store.delete(widget.item);if(mounted)Navigator.pop(context);}
    catch(_){if(mounted)setState(()=>error='Could not delete the recording. Retry.');}
  }
  @override Widget build(BuildContext context){
    final session=ref.watch(sessionProvider);
    if(session is! SessionSignedIn||session.user.id!=widget.owner){
      unawaited(player?.stop()??Future.value());
      return Scaffold(appBar:AppBar(title:const Text('Recording')),body:const Center(child:Text('Sign in to view your recording.')));
    }
    final maximum=widget.item.durationMs.toDouble().clamp(1,double.infinity).toDouble();
    return Scaffold(appBar:AppBar(title:const Text('Recording'),actions:[IconButton(tooltip:'Share recording',onPressed:share,icon:const Icon(Icons.share_outlined))]),
      body:ListView(padding:const EdgeInsets.all(24),children:[
        const Icon(Icons.graphic_eq,size:72),const SizedBox(height:24),Text(widget.item.agentName,textAlign:TextAlign.center,style:Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height:8),Text(_date(context,widget.item.createdAt),textAlign:TextAlign.center),
        const SizedBox(height:24),Slider(label:_duration(position.inMilliseconds),min:0,max:maximum,value:position.inMilliseconds.toDouble().clamp(0,maximum).toDouble(),onChanged:player==null?null:(value){unawaited(player!.seek(Duration(milliseconds:value.toInt())));}),
        Text('${_duration(position.inMilliseconds)} / ${_duration(widget.item.durationMs)}',textAlign:TextAlign.center),
        const SizedBox(height:12),Row(mainAxisAlignment:MainAxisAlignment.center,children:[
          IconButton(tooltip:'Back 10 seconds',onPressed:player==null?null:()=>player!.seek(Duration(milliseconds:(position.inMilliseconds-10000).clamp(0,widget.item.durationMs))),icon:const Icon(Icons.replay_10)),
          IconButton(tooltip:playing?'Pause':'Play',onPressed:busy?null:toggle,iconSize:56,icon:Icon(playing?Icons.pause_circle_outline:Icons.play_circle_outline)),
          IconButton(tooltip:'Forward 10 seconds',onPressed:player==null?null:()=>player!.seek(Duration(milliseconds:(position.inMilliseconds+10000).clamp(0,widget.item.durationMs))),icon:const Icon(Icons.forward_10)),
        ]),
        Center(child:TextButton(onPressed:(){setState(()=>speed=speed==1?1.5:speed==1.5?2:1);unawaited(player?.setSpeed(speed)??Future.value());},child:Text('${speed}×'))),
        if(error!=null)Text(error!,textAlign:TextAlign.center),const SizedBox(height:24),
        OutlinedButton.icon(onPressed:delete,icon:const Icon(Icons.delete_outline),label:const Text('Delete recording')),
      ]));
  }
}
