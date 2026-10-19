import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers.dart';
import '../state/session_state.dart';

/// Character-specific memory controls, scoped to the signed-in account.
class MasanaMemoryScreen extends ConsumerStatefulWidget {
  const MasanaMemoryScreen({super.key,required this.characterId,required this.characterName});
  final String characterId;
  final String characterName;
  @override
  ConsumerState<MasanaMemoryScreen> createState() => _MasanaMemoryScreenState();
}
class _MasanaMemoryScreenState extends ConsumerState<MasanaMemoryScreen> {
  List<Map<String,dynamic>> _items=const [];
  bool _learning=false, _loading=true, _busy=false;
  String? _error;
  int _epoch=0;
  ProviderSubscription<SessionState>? _sessionSubscription;
  String get _path => '/v1/agent/characters/' + Uri.encodeComponent(widget.characterId);
  @override
  void initState(){
    super.initState();
    _sessionSubscription=ref.listenManual(sessionProvider,(previous,next){
      final a=previous is SessionSignedIn?previous.user.id:null;
      final b=next is SessionSignedIn?next.user.id:null;
      if(a!=b){
        _epoch++;
        if(mounted)setState((){
          _items=const [];
          _loading=false;
          _error='Account changed. Reopen from your own chat.';
        });
      }
    });
    Future<void>.microtask(_load);
  }
  @override
  void dispose(){_epoch++;_sessionSubscription?.close();super.dispose();}
  Future<void> _load() async{
    final epoch=++_epoch;
    setState((){_loading=true;_error=null;});
    try{
      final response=await ref.read(apiClientProvider).dio.get<Map<String,dynamic>>(_path+'/memories');
      if(!mounted||epoch!=_epoch)return;
      final data=response.data;
      if(data==null||data['automaticLearning'] is! bool||data['items'] is! List)throw const FormatException('Invalid memory response');
      setState((){
        _learning=data['automaticLearning'] as bool;
        _items=(data['items'] as List).map((e)=>Map<String,dynamic>.from(e as Map)).toList(growable:false);
        _loading=false;
      });
    }catch(_){
      if(mounted&&epoch==_epoch)setState((){
        _loading=false;_error='Could not load memories. Check your connection and retry.';
      });
    }
  }
  void _notice(String message){
    if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }
  Future<void> _toggle(bool value)async{
    if(_busy)return;
    setState(()=>_busy=true);
    try{
      final response=await ref.read(apiClientProvider).dio.put<Map<String,dynamic>>(
        _path+'/memory-preferences',data:{'automaticLearning':value});
      if(mounted)setState(()=>_learning=response.data?['automaticLearning']==true);
    }catch(_){_notice('Could not save your preference.');}
    finally{if(mounted)setState(()=>_busy=false);}
  }
  Future<void> _edit(Map<String,dynamic> item)async{
    final field=TextEditingController(text:item['content'] as String? ?? '');
    final changed=await showDialog<String>(context:context,builder:(ctx)=>AlertDialog(
      title:const Text('Correct memory'),
      content:TextField(controller:field,minLines:2,maxLines:5,maxLength:1200,
        decoration:const InputDecoration(labelText:'Correct detail')),
      actions:[
        TextButton(onPressed:()=>Navigator.pop(ctx),child:const Text('Cancel')),
        FilledButton(onPressed:()=>Navigator.pop(ctx,field.text.trim()),child:const Text('Save')),
      ],
    ));
    field.dispose();
    if(changed==null||changed.length<3||_busy)return;
    setState(()=>_busy=true);
    try{
      await ref.read(apiClientProvider).dio.patch<Map<String,dynamic>>(
        _path+'/memories/'+Uri.encodeComponent(item['memoryRecordId'] as String),
        data:{'content':changed,'expectedRevision':item['revision']});
      if(mounted)await _load();
    }catch(_){_notice('Correction failed. Refresh and retry.');}
    finally{if(mounted)setState(()=>_busy=false);}
  }
  Future<void> _forget(Map<String,dynamic> item)async{
    final accepted=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
      title:const Text('Forget this detail?'),
      content:const Text('The Masana will stop actively recalling this detail. Historical chats and required audit records are separate.'),
      actions:[
        TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Cancel')),
        FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Forget')),
      ],
    ));
    if(accepted!=true||_busy)return;
    setState(()=>_busy=true);
    try{
      await ref.read(apiClientProvider).dio.delete<Map<String,dynamic>>(
        _path+'/memories/'+Uri.encodeComponent(item['memoryRecordId'] as String),
        data:{'expectedLifecycleRevision':item['lifecycleRevision']});
      if(mounted)await _load();
    }catch(_){_notice('Could not forget this detail. Refresh and retry.');}
    finally{if(mounted)setState(()=>_busy=false);}
  }
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(title:Text(widget.characterName+' memory')),
    body:_loading
      ?const Center(child:CircularProgressIndicator())
      :_error!=null
        ?Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
            Text(_error!,textAlign:TextAlign.center),
            FilledButton(onPressed:_load,child:const Text('Retry')),
          ]))
        :RefreshIndicator(onRefresh:_load,child:ListView(physics:const AlwaysScrollableScrollPhysics(),padding:const EdgeInsets.all(16),children:[
            Text('What '+widget.characterName+' remembers',style:Theme.of(context).textTheme.titleLarge),
            const SizedBox(height:8),
            const Text('Memories are private to your relationship with this Masana.'),
            SwitchListTile(
              contentPadding:EdgeInsets.zero,
              title:const Text('Automatically learn useful details'),
              subtitle:const Text('Off by default. You can also say "Remember that..." in chat.'),
              value:_learning,onChanged:_busy?null:_toggle,
            ),
            const Divider(height:24),
            if(_items.isEmpty)
              const Center(child:Padding(padding:EdgeInsets.all(36),child:Text('No saved memories yet.')))
            else
              for(final item in _items)
                Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,children:[
                    Text(item['content'] as String? ?? ''),
                    Wrap(spacing:8,children:[
                      TextButton.icon(onPressed:_busy?null:()=>_edit(item),
                        icon:const Icon(Icons.edit_outlined),label:const Text('Correct')),
                      TextButton.icon(onPressed:_busy?null:()=>_forget(item),
                        icon:const Icon(Icons.delete_outline),label:const Text('Forget')),
                    ]),
                  ],
                ))),
          ])),
  );
}
