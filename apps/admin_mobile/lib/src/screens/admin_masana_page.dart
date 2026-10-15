import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_masana_api.dart';

class AdminMasanaPage extends StatefulWidget {
  const AdminMasanaPage({super.key,required this.api});
  final AdminApi api;
  @override State<AdminMasanaPage> createState()=>_AdminMasanaPageState();
}

class _AdminMasanaPageState extends State<AdminMasanaPage> {
  late final AdminMasanaApi _api=AdminMasanaApi(session:widget.api);
  late Future<List<AdminMasanaRevision>> _revisions=_api.list();
  bool _busy=false;

  void _refresh(){if(mounted)setState(()=>_revisions=_api.list());}
  void _notice(Object message){
    if(mounted)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message.toString())));
  }

  Future<void> _edit(AdminMasanaRevision current)async{
    if(_busy)return;
    final fields=<String,String>{
      'displayName':'Display name','handle':'Handle',
      'profession':'Profession','biography':'Biography',
      'lifeStory':'Life story','languages':'Languages (comma-separated)',
      'talents':'Skills / talents (comma-separated)',
      'goals':'Goals (comma-separated)',
    };
    final p=current.profile;
    final controllers=<String,TextEditingController>{
      for(final entry in fields.entries)
        entry.key:TextEditingController(
          text:entry.key=='languages'||entry.key=='talents'||entry.key=='goals'
            ?(p[entry.key] as List<dynamic>? ?? const [])
                .map((x)=>x.toString()).join(', ')
            :p[entry.key]?.toString()??'',
        ),
    };
    try{
      final form=await showDialog<Map<String,String>>(
        context:context,
        builder:(dialog)=>AlertDialog(
          title:Text('New revision · ${p['displayName']??current.characterId}'),
          content:SizedBox(width:540,child:SingleChildScrollView(
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              for(final field in fields.entries)Padding(
                padding:const EdgeInsets.only(bottom:10),
                child:TextField(controller:controllers[field.key],
                  maxLines:field.key=='lifeStory'?5:field.key=='biography'?3:1,
                  maxLength:field.key=='lifeStory'?8000:
                    field.key=='biography'?800:field.key=='displayName'?100:
                    field.key=='profession'?100:field.key=='handle'?40:500,
                  decoration:InputDecoration(labelText:field.value,
                    border:const OutlineInputBorder())),
              ),
              const Text('Current rights-cleared portrait, banner and Room link '
                'are preserved unless changed through an authenticated media revision.'),
            ]),
          )),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(dialog),
              child:const Text('Cancel')),
            FilledButton(onPressed:(){
              final data={for(final item in controllers.entries)
                item.key:item.value.text.trim()};
              if(['displayName','handle','profession','biography','lifeStory']
                  .any((k)=>data[k]!.isEmpty))return;
              Navigator.pop(dialog,data);
            },child:const Text('Create draft')),
          ],
        ));
      if(form==null||!mounted)return;
      final profile=Map<String,dynamic>.from(p);
      for(final field in fields.keys){
        final value=form[field]!;
        if(field=='languages'||field=='talents'||field=='goals'){
          profile[field]=value.split(',')
            .map((x)=>x.trim()).where((x)=>x.isNotEmpty).toList();
        }else{profile[field]=value;}
      }
      setState(()=>_busy=true);
      try{
        await _api.draft(current,profile);
        _refresh();
        _notice('New immutable draft saved. Approve when rights and details are ready.');
      }catch(e){_notice(e);}
      finally{if(mounted)setState(()=>_busy=false);}
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_){
        for(final controller in controllers.values){controller.dispose();}
      });
    }
  }

  Future<void> _approve(AdminMasanaRevision entry)async{
    if(_busy)return;
    final confirm=await showDialog<bool>(context:context,builder:(dialog)=>
      AlertDialog(
        title:Text('Approve Masana revision ${entry.revision}?'),
        content:const Text('Publishing requires a verified portrait and banner. '
          'Earlier revisions are preserved in the audit history.'),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(dialog,false),
            child:const Text('Cancel')),
          FilledButton(onPressed:()=>Navigator.pop(dialog,true),
            child:const Text('Approve')),
        ]));
    if(confirm!=true||!mounted)return;
    setState(()=>_busy=true);
    try{
      await _api.approve(entry);
      _refresh();_notice('Masana profile approved.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  /// Link only an already tenant-owned, rights-cleared media catalogue ID.
  /// No fabricated image URL or arbitrary object-key upload.
  Future<void> _attach(AdminMasanaRevision entry)async{
    if(_busy)return;
    final ref=TextEditingController();
    final rights=TextEditingController();
    String kind='portrait';
    try{
      final input=await showDialog<Map<String,String>>(context:context,
        builder:(context)=>StatefulBuilder(builder:(context,setDialogState)=>
          AlertDialog(
            title:const Text('Attach existing verified media'),
            content:SizedBox(width:500,child:Column(
              mainAxisSize:MainAxisSize.min,children:[
                const Text('The media must already exist in the private '
                  'Masana storage catalogue with approved rights.'),
                DropdownButtonFormField<String>(
                  initialValue:kind,
                  items:const[
                    DropdownMenuItem(value:'portrait',child:Text('Portrait')),
                    DropdownMenuItem(value:'banner',child:Text('Banner')),
                  ],
                  onChanged:(value){if(value!=null)setDialogState(()=>kind=value);},
                ),
                TextField(controller:ref,maxLength:150,
                  decoration:const InputDecoration(labelText:'Verified media ID')),
                TextField(controller:rights,maxLength:1024,
                  decoration:const InputDecoration(labelText:'Rights / license reference')),
              ],
            )),
            actions:[
              TextButton(onPressed:()=>Navigator.pop(context),
                child:const Text('Cancel')),
              FilledButton(onPressed:(){
                if(ref.text.trim().isEmpty||rights.text.trim().length<5)return;
                Navigator.pop(context,{
                  'kind':kind,'mediaId':ref.text.trim(),'rightsNote':rights.text.trim(),
                });
              },child:const Text('Attach')),
            ],
          )));
      if(input==null||!mounted)return;
      setState(()=>_busy=true);
      try{
        await _api.attachExistingMedia(entry,
          mediaId:input['mediaId']!,kind:input['kind']!,
          rightsNote:input['rightsNote']!);
        _refresh();_notice('Verified media added in a new profile revision.');
      }catch(e){_notice(e);}
      finally{if(mounted)setState(()=>_busy=false);}
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_){
        ref.dispose();rights.dispose();
      });
    }
  }

  @override Widget build(BuildContext context)=>Column(children:[
    Padding(padding:const EdgeInsets.all(12),child:Row(children:[
      Expanded(child:Text('Professional Masana profiles',
        style:Theme.of(context).textTheme.titleLarge)),
      IconButton(onPressed:_busy?null:_refresh,tooltip:'Refresh profiles',
        icon:const Icon(Icons.refresh)),
      if(_busy)const SizedBox(width:16,height:16,
        child:CircularProgressIndicator(strokeWidth:2)),
    ])),
    Expanded(child:FutureBuilder<List<AdminMasanaRevision>>(
      future:_revisions,builder:(context,snapshot){
        if(snapshot.connectionState!=ConnectionState.done){
          return const Center(child:CircularProgressIndicator());
        }
        if(snapshot.hasError)return Center(child:Padding(
          padding:const EdgeInsets.all(16),child:Column(
            mainAxisSize:MainAxisSize.min,children:[
              Text(snapshot.error.toString(),textAlign:TextAlign.center),
              OutlinedButton(onPressed:_refresh,child:const Text('Retry')),
            ])));
        final latest=<String,AdminMasanaRevision>{};
        for(final item in snapshot.requireData){
          if(!latest.containsKey(item.characterId)||
              item.revision>latest[item.characterId]!.revision){
            latest[item.characterId]=item;
          }
        }
        final list=latest.values.toList()
          ..sort((a,b)=>a.characterId.compareTo(b.characterId));
        if(list.isEmpty){
          return const Center(child:Text('No Masana profiles available.'));
        }
        return RefreshIndicator(onRefresh:()async{_refresh();await _revisions;},
          child:ListView.builder(
            padding:const EdgeInsets.fromLTRB(12,0,12,24),
            itemCount:list.length,
            itemBuilder:(context,i){
              final entry=list[i],profile=entry.profile;
              final label=profile['displayName']?.toString()??entry.characterId;
              return Card(child:Padding(
                padding:const EdgeInsets.all(12),
                child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                  Text(label,style:Theme.of(context).textTheme.titleMedium),
                  Text('${profile['profession']??''} · ${entry.state} · Revision ${entry.revision}'),
                  const SizedBox(height:4),
                  Text(profile['biography']?.toString()??'',maxLines:3,
                    overflow:TextOverflow.ellipsis),
                  const SizedBox(height:8),
                  Wrap(spacing:8,runSpacing:8,children:[
                    OutlinedButton(onPressed:_busy?null:()=>_edit(entry),
                      child:const Text('New revision')),
                    if(entry.state=='draft')OutlinedButton(
                      onPressed:_busy?null:()=>_attach(entry),
                      child:const Text('Attach verified image')),
                    if(entry.state=='draft')FilledButton.tonal(
                      onPressed:_busy?null:()=>_approve(entry),
                      child:const Text('Approve revision')),
                  ]),
                ]),
              ));
            },
          ));
      },
    )),
  ]);
}
