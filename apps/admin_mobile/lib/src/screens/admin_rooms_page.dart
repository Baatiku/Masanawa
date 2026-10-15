import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_rooms_api.dart';

/// Editorial controls for the existing 26-profession Rooms and any additional
/// platform-approved teacher. Uses one Gateway tenant and staff role contract.
class AdminRoomsPage extends StatefulWidget {
  const AdminRoomsPage({super.key,required this.api});
  final AdminApi api;
  @override State<AdminRoomsPage> createState()=>_AdminRoomsPageState();
}

class _AdminRoomsPageState extends State<AdminRoomsPage> {
  late final AdminRoomApi _api=AdminRoomApi(session:widget.api);
  late Future<List<AdminRoom>> _rooms=_api.list();
  bool _working=false;

  Future<void> _refresh()async{
    final future=_api.list();
    setState(()=>_rooms=future);
    await future;
  }
  void _notice(Object message){
    if(mounted)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message.toString())));
  }

  Future<Map<String,String>?> _ask({
    required String title,
    required List<String> fields,
    Map<String,String> initial=const{},
  })async{
    final inputs={
      for(final field in fields)field:TextEditingController(text:initial[field]??''),
    };
    try{
      return await showDialog<Map<String,String>>(
        context:context,
        builder:(dialogContext)=>AlertDialog(
          title:Text(title),
          content:SizedBox(width:480,child:SingleChildScrollView(
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              for(final field in fields)Padding(
                padding:const EdgeInsets.only(bottom:12),
                child:TextField(
                  controller:inputs[field],
                  autofocus:field==fields.first,
                  maxLines:field=='Lesson or announcement'?6:1,
                  maxLength:field=='Lesson or announcement'?10000:140,
                  decoration:InputDecoration(
                    border:const OutlineInputBorder(),labelText:field,
                  ),
                ),
              ),
            ]),
          )),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(dialogContext),
              child:const Text('Cancel')),
            FilledButton(onPressed:(){
              final result={for(final e in inputs.entries)e.key:e.value.text.trim()};
              if(result.values.any((x)=>x.isEmpty))return;
              Navigator.pop(dialogContext,result);
            },child:const Text('Continue')),
          ],
        ),
      );
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_){
        for(final input in inputs.values){input.dispose();}
      });
    }
  }

  Future<void> _create()async{
    if(_working)return;
    try{
      final characters=await widget.api.agents();
      if(!mounted)return;
      final visible=characters.where((c)=>c.visibleInUserApp).toList();
      if(visible.isEmpty){_notice('No approved Masana is available.');return;}
      final chosen=await showDialog<AgentPresentation>(
        context:context,
        builder:(context)=>SimpleDialog(
          title:const Text('Choose Room teacher'),
          children:[
            for(final c in visible)SimpleDialogOption(
              onPressed:()=>Navigator.pop(context,c),
              child:Text('${c.displayName} · ${c.roleLabel}'),
            ),
          ],
        ),
      );
      if(chosen==null||!mounted)return;
      final defaultSlug=chosen.roleLabel.toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'),'-')
        .replaceAll(RegExp(r'^-|-$'),'');
      final entered=await _ask(
        title:'Create professional Room',
        fields:['Profession title','Slug','Language code'],
        initial:{
          'Profession title':chosen.roleLabel,
          'Slug':'room-${defaultSlug.isEmpty?'profession':defaultSlug}',
          'Language code':'en',
        },
      );
      if(entered==null||!mounted)return;
      setState(()=>_working=true);
      await _api.create(
        professionTitle:entered['Profession title']!,
        teacherCharacterId:chosen.characterId,
        slug:entered['Slug']!,
        language:entered['Language code']!,
      );
      await _refresh();
      _notice('Room draft created. Publish once the Masana is approved.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_working=false);}
  }

  Future<void> _publish(AdminRoom room)async{
    if(_working)return;
    final approved=await showDialog<bool>(
      context:context,
      builder:(dialog)=>AlertDialog(
        title:const Text('Publish Room?'),
        content:Text('Publish ${room.professionTitle} for customers. Only a verified platform Masana can teach this Room.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(dialog,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(dialog,true),
            child:const Text('Publish')),
        ],
      ),
    );
    if(approved!=true||!mounted)return;
    setState(()=>_working=true);
    try{
      await _api.publish(room.roomId);
      await _refresh();
      _notice('Room published.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_working=false);}
  }

  Future<void> _lesson(AdminRoom room,{required bool announcement})async{
    if(_working)return;
    final result=await _ask(
      title:announcement?'Post Room announcement':'Publish Room lesson',
      fields:['Lesson or announcement'],
    );
    if(result==null||!mounted)return;
    setState(()=>_working=true);
    try{
      await _api.addLesson(
        roomId:room.roomId,
        body:result['Lesson or announcement']!,
        announcement:announcement,
      );
      _notice('Content saved to the Room.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_working=false);}
  }

  @override Widget build(BuildContext context)=>Column(children:[
    Padding(
      padding:const EdgeInsets.fromLTRB(16,12,16,8),
      child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
        Text('Professional Masana Rooms',
          style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:4),
        const Text('Manage Room drafts and publish lessons or announcements through the authenticated Gateway. Learners ask questions directly to the Room teacher.'),
        const SizedBox(height:8),
        Wrap(spacing:8,crossAxisAlignment:WrapCrossAlignment.center,children:[
          FilledButton.icon(onPressed:_working?null:_create,
            icon:const Icon(Icons.add),label:const Text('New Room')),
          IconButton(onPressed:_working?null:(){_refresh();},
            icon:const Icon(Icons.refresh),tooltip:'Refresh Rooms'),
          if(_working)const SizedBox(height:20,width:20,
            child:CircularProgressIndicator(strokeWidth:2)),
        ]),
      ]),
    ),
    Expanded(child:FutureBuilder<List<AdminRoom>>(
      future:_rooms,
      builder:(context,snapshot){
        if(snapshot.connectionState!=ConnectionState.done){
          return const Center(child:CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Center(child:Padding(
            padding:const EdgeInsets.all(20),
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              Text(snapshot.error.toString(),textAlign:TextAlign.center),
              const SizedBox(height:8),
              OutlinedButton(onPressed:(){_refresh();},
                child:const Text('Retry')),
            ]),
          ));
        }
        final rooms=snapshot.data??const <AdminRoom>[];
        if(rooms.isEmpty)return const Center(child:Text(
          'No platform Rooms yet. Check the 26-Masana seed, then refresh.'));
        return RefreshIndicator(onRefresh:_refresh,
          child:ListView.builder(
            padding:const EdgeInsets.fromLTRB(12,0,12,24),
            itemCount:rooms.length,
            itemBuilder:(context,index){
              final room=rooms[index];
              return Card(child:Padding(padding:const EdgeInsets.all(12),
                child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                  Text(room.professionTitle,
                    style:Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height:4),
                  Text('${room.slug} · ${room.language} · ${room.state} · ${room.planMode}'),
                  const SizedBox(height:4),
                  SelectableText('Teacher: ${room.teacherCharacterId}',
                    style:Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height:8),
                  Wrap(spacing:8,runSpacing:4,children:[
                    if(room.state=='draft')FilledButton.tonal(
                      onPressed:_working?null:()=>_publish(room),
                      child:const Text('Publish Room')),
                    OutlinedButton.icon(
                      onPressed:_working?null:()=>_lesson(room,announcement:false),
                      icon:const Icon(Icons.menu_book_outlined),
                      label:const Text('New lesson')),
                    OutlinedButton.icon(
                      onPressed:_working?null:()=>_lesson(room,announcement:true),
                      icon:const Icon(Icons.campaign_outlined),
                      label:const Text('Announcement')),
                  ]),
                ]),
              ));
            },
          ),
        );
      },
    )),
  ]);
}
