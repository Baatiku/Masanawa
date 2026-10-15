import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_rooms_api.dart';

class AdminRoomsPage extends StatefulWidget {
  const AdminRoomsPage({super.key,required this.api});
  final AdminApi api;
  @override State<AdminRoomsPage> createState()=>_AdminRoomsPageState();
}

class _AdminRoomsPageState extends State<AdminRoomsPage> {
  late final AdminRoomsApi _api=AdminRoomsApi(session:widget.api);
  late Future<List<AdminRoom>> _rooms=_api.rooms();
  bool _busy=false;

  void _refresh(){if(mounted)setState(()=>_rooms=_api.rooms());}
  void _notice(Object message){
    if(mounted)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message.toString())));
  }

  Future<void> _newRoom()async {
    if(_busy)return;
    List<AgentPresentation> available;
    try{
      available=(await widget.api.agents()).where((a)=>a.visibleInUserApp).toList();
    }catch(e){_notice(e);return;}
    if(available.isEmpty){_notice('Configure a visible Masana first.');return;}
    if(!mounted)return;
    final title=TextEditingController();
    final slug=TextEditingController();
    final language=TextEditingController(text:'en');
    String characterId=available.first.characterId;
    try{
      final values=await showDialog<Map<String,String>>(context:context,
        builder:(context)=>StatefulBuilder(builder:(context,setDialogState)=>
          AlertDialog(
            title:const Text('Create profession Room'),
            content:SizedBox(width:500,child:SingleChildScrollView(
              child:Column(mainAxisSize:MainAxisSize.min,children:[
                TextField(controller:title,maxLength:140,
                  decoration:const InputDecoration(labelText:'Profession-based Room title')),
                TextField(controller:slug,maxLength:90,
                  decoration:const InputDecoration(labelText:'Unique Room slug',
                    helperText:'Lowercase letters, numbers and hyphens')),
                DropdownButtonFormField<String>(
                  initialValue:characterId,
                  decoration:const InputDecoration(labelText:'Masana teacher'),
                  isExpanded:true,
                  items:available.map((a)=>DropdownMenuItem(
                    value:a.characterId,child:Text(a.displayName,
                    overflow:TextOverflow.ellipsis))).toList(),
                  onChanged:(value){if(value!=null)setDialogState(()=>characterId=value);},
                ),
                TextField(controller:language,maxLength:16,
                  decoration:const InputDecoration(labelText:'Language (en, ha, ar...)')),
              ]),
            )),
            actions:[
              TextButton(onPressed:()=>Navigator.pop(context),
                child:const Text('Cancel')),
              FilledButton(onPressed:(){
                final t=title.text.trim(),s=slug.text.trim().toLowerCase(),l=language.text.trim();
                if(t.length<3||!RegExp(r'^[a-z0-9-]{3,90}$').hasMatch(s)||l.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content:Text('Enter a valid profession, slug and language.')));
                  return;
                }
                Navigator.pop(context,{'title':t,'slug':s,
                  'teacher':characterId,'language':l});
              },child:const Text('Create draft')),
            ],
          ),
        ));
      if(values==null||!mounted)return;
      setState(()=>_busy=true);
      try{
        await _api.create(
          title:values['title']!,slug:values['slug']!,
          teacherCharacterId:values['teacher']!,
          language:values['language']!);
        if(!mounted)return;
        _refresh();_notice('Room draft created. Publish after teacher approval.');
      }catch(e){_notice(e);}
      finally{if(mounted)setState(()=>_busy=false);}
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_){
        title.dispose();slug.dispose();language.dispose();
      });
    }
  }

  Future<void> _publish(AdminRoom room)async{
    if(_busy)return;
    final confirmed=await showDialog<bool>(context:context,
      builder:(context)=>AlertDialog(
        title:Text('Publish ${room.professionTitle}?'),
        content:const Text('Only an approved platform Masana can publish a Room. '
          'Existing lessons and membership records are preserved.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(context,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(context,true),
            child:const Text('Publish')),
        ],
      ));
    if(confirmed!=true||!mounted)return;
    setState(()=>_busy=true);
    try{await _api.publish(room.roomId);_refresh();_notice('Room published.');}
    catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  Future<void> _lesson(AdminRoom room)async{
    if(_busy)return;
    final controller=TextEditingController();
    bool announcement=false;
    try{
      final body=await showDialog<Map<String,Object>>(context:context,
        builder:(context)=>StatefulBuilder(builder:(context,setDialogState)=>
          AlertDialog(
            title:Text('New lesson · ${room.professionTitle}'),
            content:SizedBox(width:500,child:Column(
              mainAxisSize:MainAxisSize.min,children:[
                TextField(controller:controller,maxLines:6,minLines:3,maxLength:10000,
                  decoration:const InputDecoration(labelText:'Lesson content',
                    border:OutlineInputBorder())),
                SwitchListTile(
                  title:const Text('Announcement instead of lesson'),
                  value:announcement,
                  onChanged:(value)=>setDialogState(()=>announcement=value)),
              ],
            )),
            actions:[
              TextButton(onPressed:()=>Navigator.pop(context),
                child:const Text('Cancel')),
              FilledButton(onPressed:(){
                final text=controller.text.trim();
                if(text.isNotEmpty)Navigator.pop(context,
                  {'body':text,'announcement':announcement});
              },child:const Text('Publish lesson')),
            ],
          )));
      if(body==null||!mounted)return;
      setState(()=>_busy=true);
      try{
        await _api.addLesson(room.roomId,
          body:body['body']! as String,
          announcement:body['announcement']! as bool);
        _notice('Lesson published for Room members.');
      }catch(e){_notice(e);}
      finally{if(mounted)setState(()=>_busy=false);}
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_)=>controller.dispose());
    }
  }

  @override Widget build(BuildContext context)=>Column(children:[
    Padding(padding:const EdgeInsets.fromLTRB(16,12,16,8),
      child:Wrap(spacing:8,runSpacing:8,
        crossAxisAlignment:WrapCrossAlignment.center,children:[
          FilledButton.icon(
            onPressed:_busy?null:_newRoom,
            icon:const Icon(Icons.add_circle_outline),label:const Text('New Room')),
          IconButton(onPressed:_busy?null:_refresh,
            tooltip:'Refresh Rooms',icon:const Icon(Icons.refresh)),
          if(_busy)const SizedBox(width:18,height:18,
            child:CircularProgressIndicator(strokeWidth:2)),
        ])),
    Expanded(child:FutureBuilder<List<AdminRoom>>(
      future:_rooms,builder:(context,snapshot){
        if(snapshot.connectionState!=ConnectionState.done)
          return const Center(child:CircularProgressIndicator());
        if(snapshot.hasError)return Center(child:Padding(
          padding:const EdgeInsets.all(20),child:Column(
            mainAxisSize:MainAxisSize.min,children:[
              Text(snapshot.error.toString(),textAlign:TextAlign.center),
              const SizedBox(height:8),
              OutlinedButton(onPressed:_refresh,child:const Text('Retry')),
            ])));
        final rooms=snapshot.requireData;
        if(rooms.isEmpty)return const Center(child:Text(
          'No professional Rooms yet. Create one for an approved Masana.'));
        return RefreshIndicator(onRefresh:()async{_refresh();await _rooms;},
          child:ListView.builder(
            padding:const EdgeInsets.fromLTRB(12,0,12,24),
            itemCount:rooms.length,
            itemBuilder:(context,i){
              final room=rooms[i];
              return Card(child:Padding(padding:const EdgeInsets.all(12),
                child:Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children:[
                    Text(room.professionTitle,
                      style:Theme.of(context).textTheme.titleMedium),
                    Text('${room.slug} · ${room.language} · ${room.state} · ${room.planMode}'),
                    Text('Masana: ${room.teacherCharacterId}  ·  Members: ${room.memberCount}'),
                    const SizedBox(height:8),
                    Wrap(spacing:8,runSpacing:8,children:[
                      if(room.state=='draft')FilledButton.tonal(
                        onPressed:_busy?null:()=>_publish(room),
                        child:const Text('Publish Room')),
                      if(room.state=='published')FilledButton.tonal(
                        onPressed:_busy?null:()=>_lesson(room),
                        child:const Text('Add lesson')),
                    ]),
                  ],
                ),
              ));
            },
          ));
      },
    )),
  ]);
}
