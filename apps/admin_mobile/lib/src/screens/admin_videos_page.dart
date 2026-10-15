import 'package:flutter/material.dart';

import '../core/admin_api.dart';
import '../core/admin_video_curation_api.dart';

class AdminVideosPage extends StatefulWidget {
  const AdminVideosPage({super.key,required this.api});
  final AdminApi api;

  @override State<AdminVideosPage> createState()=>_AdminVideosPageState();
}

class _AdminVideosPageState extends State<AdminVideosPage> {
  late final AdminVideoCurationApi _api=AdminVideoCurationApi(session:widget.api);
  late Future<AdminVideoPage> _page=_api.list();
  late Future<List<AdminYouTubeSource>> _sources=_api.listYouTubeSources();
  final List<AdminVideoItem> _items=[];
  String? _provider;
  String? _cursor;
  bool _busy=false;

  void _notice(Object text){
    if(mounted)ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(text.toString())));
  }
  void _reload(){
    if(!mounted)return;
    setState((){
      _cursor=null;
      _items.clear();
      _page=_api.list(provider:_provider);
      _sources=_api.listYouTubeSources();
    });
  }

  Future<void> _more() async {
    if(_busy||_cursor==null)return;
    setState(()=>_busy=true);
    try{
      final next=await _api.list(provider:_provider,before:_cursor);
      if(!mounted)return;
      setState((){
        _items.addAll(next.items);
        _cursor=next.nextCursor;
      });
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  /// Separate controls for exact approved metadata: no arbitrary embed HTML.
  Future<Map<String,String>?> _form(String title,List<String> fields,
      {Map<String,String> defaults=const{}})async{
    final controllers={
      for(final field in fields)field:TextEditingController(text:defaults[field]??''),
    };
    try{
      return await showDialog<Map<String,String>>(context:context,builder:(context)=>
        AlertDialog(
          title:Text(title),
          content:SizedBox(width:490,child:SingleChildScrollView(
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              for(final field in fields)Padding(
                padding:const EdgeInsets.only(bottom:8),
                child:TextField(controller:controllers[field],
                  maxLength:field=='Title'?180:field=='Channel name'?100:250,
                  decoration:InputDecoration(labelText:field,
                    border:const OutlineInputBorder())),
              ),
            ]),
          )),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(context),
              child:const Text('Cancel')),
            FilledButton(onPressed:(){
              final values={for(final entry in controllers.entries)
                entry.key:entry.value.text.trim()};
              if(values.values.any((v)=>v.isEmpty))return;
              Navigator.pop(context,values);
            },child:const Text('Submit')),
          ],
        ));
    }finally{
      WidgetsBinding.instance.addPostFrameCallback((_) {
        for(final controller in controllers.values){controller.dispose();}
      });
    }
  }

  Future<void> _submitVideo()async{
    final values=await _form('Submit official video',
      ['Official URL','Title','Channel name']);
    if(values==null||!mounted)return;
    setState(()=>_busy=true);
    try{
      await _api.submit(
        url:values['Official URL']!,title:values['Title']!,
        channelName:values['Channel name']!);
      _reload();
      _notice('Video submitted for review. Not yet public.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  Future<void> _review(AdminVideoItem item,String state)async{
    if(_busy)return;
    String? evidence;
    if(state=='approved'){
      final value=await _form('Confirm official rights and playback',
        ['Verification reference']);
      evidence=value?['Verification reference'];
      if(evidence==null||evidence.trim().length<12)return;
    }else{
      final confirm=await showDialog<bool>(
        context:context,builder:(context)=>AlertDialog(
          title:Text(state=='hidden'?'Hide this video?':'Reopen for review?'),
          content:const Text('The Gateway will apply the server-side editorial transition.'),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(context,false),
              child:const Text('Cancel')),
            FilledButton(onPressed:()=>Navigator.pop(context,true),
              child:const Text('Confirm')),
          ]));
      if(confirm!=true)return;
    }
    if(!mounted)return;
    setState(()=>_busy=true);
    try{
      await _api.review(item,state,verificationReference:evidence);
      _reload();
      _notice('Video updated.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  Future<void> _addSource()async{
    final values=await _form('Register YouTube channel',
      ['Channel ID','Channel name','Region'],
      defaults:{'Region':'NG'});
    if(values==null||!mounted)return;
    setState(()=>_busy=true);
    try{
      await _api.createYouTubeSource(
        channelId:values['Channel ID']!,
        channelName:values['Channel name']!,
        targetRegion:values['Region']!);
      _reload();
      _notice('Source registered paused. API permission must be qualified before automatic sync.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  Future<void> _pause(AdminYouTubeSource source)async{
    if(_busy)return;
    setState(()=>_busy=true);
    try{
      await _api.pauseSource(source.id);
      _reload();
      _notice('YouTube source paused.');
    }catch(e){_notice(e);}
    finally{if(mounted)setState(()=>_busy=false);}
  }

  @override Widget build(BuildContext context)=>DefaultTabController(length:2,
    child:Column(children:[
      const TabBar(tabs:[
        Tab(text:'Video catalog',icon:Icon(Icons.ondemand_video_outlined)),
        Tab(text:'YouTube sources',icon:Icon(Icons.video_library_outlined)),
      ]),
      Expanded(child:TabBarView(children:[_videos(),_channels()])),
    ]));

  Widget _videos()=>Column(children:[
    Padding(padding:const EdgeInsets.all(12),child:Wrap(
      spacing:8,runSpacing:8,crossAxisAlignment:WrapCrossAlignment.center,
      children:[
        FilledButton.icon(onPressed:_busy?null:_submitVideo,
          icon:const Icon(Icons.add),label:const Text('Submit video')),
        DropdownButton<String>(
          value:_provider??'all',
          items:const[
            DropdownMenuItem(value:'all',child:Text('All platforms')),
            DropdownMenuItem(value:'youtube',child:Text('YouTube')),
            DropdownMenuItem(value:'tiktok',child:Text('TikTok')),
            DropdownMenuItem(value:'facebook',child:Text('Facebook')),
          ],
          onChanged:_busy?null:(value){
            _provider=value=='all'?null:value;
            _reload();
          },
        ),
        IconButton(onPressed:_busy?null:_reload,tooltip:'Refresh',
          icon:const Icon(Icons.refresh)),
      ],
    )),
    Expanded(child:FutureBuilder<AdminVideoPage>(
      future:_page,
      builder:(context,snapshot){
        if(snapshot.connectionState!=ConnectionState.done){
          return const Center(child:CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return _retry(snapshot.error);
        }
        // Materialize only the current stable Future; do not append during
        // every rebuild or regenerate the continuation cursor.
        final first=snapshot.requireData;
        final knownIds={for(final item in _items)item.id};
        final list=[...first.items,
          ..._items.where((item)=>!first.items.any((f)=>f.id==item.id))];
        if(list.isEmpty)return const Center(child:Text('No videos submitted.'));
        return RefreshIndicator(
          onRefresh:()async{_reload();await _page;},
          child:ListView(padding:const EdgeInsets.fromLTRB(12,0,12,20),
            children:[
              for(final video in list)Card(child:Padding(
                padding:const EdgeInsets.all(12),
                child:Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children:[
                    Text(video.title,style:Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height:4),
                    Text('${video.channelName} · ${video.provider} · ${video.reviewState}'),
                    SelectableText(video.sourceUrl,
                      style:Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height:8),
                    Wrap(spacing:8,children:[
                      if(video.reviewState=='pending')FilledButton(
                        onPressed:_busy?null:()=>_review(video,'approved'),
                        child:const Text('Approve with evidence')),
                      if(video.reviewState=='approved')OutlinedButton(
                        onPressed:_busy?null:()=>_review(video,'hidden'),
                        child:const Text('Hide')),
                      if(video.reviewState=='hidden'||video.reviewState=='unavailable')
                        OutlinedButton(
                          onPressed:_busy?null:()=>_review(video,'pending'),
                          child:const Text('Re-review')),
                    ]),
                  ],
                ),
              )),
              if(first.nextCursor!=null||_cursor!=null)TextButton.icon(
                onPressed:_busy?null:(){
                  if(_cursor==null)_cursor=first.nextCursor;
                  _more();
                },icon:const Icon(Icons.expand_more),
                label:const Text('Load more')),
              if(_busy)const Center(child:CircularProgressIndicator()),
            ],
          )),
        );
      },
    )),
  ]);

  Widget _channels()=>Column(children:[
    Padding(padding:const EdgeInsets.all(12),child:Wrap(
      spacing:8,runSpacing:8,children:[
        FilledButton.icon(onPressed:_busy?null:_addSource,
          icon:const Icon(Icons.add),label:const Text('Register channel')),
        IconButton(onPressed:_busy?null:_reload,
          icon:const Icon(Icons.refresh),tooltip:'Refresh sources'),
      ],
    )),
    const Padding(padding:EdgeInsets.symmetric(horizontal:16),
      child:Text('New sources start paused. Automatic sync requires approved API permission; this screen does not bypass eligibility.')),
    Expanded(child:FutureBuilder<List<AdminYouTubeSource>>(
      future:_sources,
      builder:(context,snapshot){
        if(snapshot.connectionState!=ConnectionState.done){
          return const Center(child:CircularProgressIndicator());
        }
        if(snapshot.hasError)return _retry(snapshot.error);
        final sources=snapshot.requireData;
        if(sources.isEmpty)return const Center(child:Text('No YouTube sources configured.'));
        return ListView(padding:const EdgeInsets.all(12),children:[
          for(final source in sources)Card(child:ListTile(
            title:Text(source.channelName),
            subtitle:Text('${source.channelId} · ${source.targetRegion} · ${source.syncMode}'),
            trailing:source.enabled
              ?OutlinedButton(onPressed:_busy?null:()=>_pause(source),
                child:const Text('Pause'))
              :const Text('Paused'),
          )),
        ]);
      },
    )),
  ]);

  Widget _retry(Object? error)=>Center(
    child:Padding(padding:const EdgeInsets.all(16),
      child:Column(mainAxisSize:MainAxisSize.min,children:[
        Text(error.toString(),textAlign:TextAlign.center),
        const SizedBox(height:8),
        OutlinedButton.icon(onPressed:_reload,
          icon:const Icon(Icons.refresh),label:const Text('Retry')),
      ]),
    ),
  );
}
