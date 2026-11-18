import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_masana_api.dart';
import 'admin_masana_forms.dart';
import 'admin_creator_policy_page.dart';

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

  Future<void> _edit(AdminMasanaRevision current) async {
    if (_busy) return;
    final saved = await Navigator.of(context).push<bool>(
      MaterialPageRoute<bool>(
        settings: const RouteSettings(name: '/admin/masana/revision'),
        builder: (_) => AdminMasanaRevisionForm(
          current: current,
          onSave: (profile) async {
            await _api.draft(current, profile);
          },
        ),
      ),
    );
    if (!mounted || saved != true) return;
    _refresh();
    _notice('New immutable draft saved. Approve when rights and details are ready.');
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
  Future<void> _attach(AdminMasanaRevision entry) async {
    if (_busy) return;
    final saved = await Navigator.of(context).push<bool>(
      MaterialPageRoute<bool>(
        settings: const RouteSettings(name: '/admin/masana/media'),
        builder: (_) => AdminMasanaMediaForm(
          onSave: (kind, mediaId, rightsNote) async {
            await _api.attachExistingMedia(
              entry,
              mediaId: mediaId,
              kind: kind,
              rightsNote: rightsNote,
            );
          },
        ),
      ),
    );
    if (!mounted || saved != true) return;
    _refresh();
    _notice('Verified media added in a new profile revision.');
  }

  @override Widget build(BuildContext context)=>Column(children:[
    Padding(padding:const EdgeInsets.all(12),child:Row(children:[
      Expanded(child:Text('Professional Masana profiles',
        style:Theme.of(context).textTheme.titleLarge)),
      IconButton(
        tooltip:'Creator fee and earnings settings',
        icon:const Icon(Icons.tune_outlined),
        onPressed:()=>Navigator.of(context).push(
          MaterialPageRoute<void>(builder:(_)=>AdminCreatorPolicyPage(api:_api)),
        ),
      ),
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
