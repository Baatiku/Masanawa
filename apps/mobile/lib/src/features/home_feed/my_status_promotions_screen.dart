import 'dart:async';

import 'package:flutter/material.dart';

import 'status_promotion_api.dart';

/// The owner's reviewable campaign ledger is separate from public Home.
/// Inactive content is shown only by this signed-in session until server purge.
class MyStatusPromotionsScreen extends StatefulWidget {
  const MyStatusPromotionsScreen({super.key,required this.api,
    required this.onBoostAgain,this.canBoost=true,
    this.draftStore,this.onCreatePromotion});
  final StatusPromotionApi api;
  final Future<void> Function(String postId) onBoostAgain;
  final Future<void> Function()? onCreatePromotion;
  final StatusPromotionDraftStore? draftStore;
  /// Read-only receipts and deletion remain available if live spending pauses.
  final bool canBoost;
  @override State<MyStatusPromotionsScreen> createState()=>_MyStatusPromotionsScreenState();
}
class _MyStatusPromotionsScreenState extends State<MyStatusPromotionsScreen>{
  Map<String,dynamic>? data;
  String? error;
  bool loading=false;
  Timer? _clockTicker;
  Stopwatch? _serverElapsed;
  DateTime? _serverNow;
  final Set<String> pending={};
  String campaignFilter='all';
  late final StatusPromotionDraftStore _draftStore;
  StatusPromotionDraft? draft;
  @override void initState(){super.initState();
    _draftStore=widget.draftStore??SecureStatusPromotionDraftStore(widget.api.ownerAccount);
    _clockTicker=Timer.periodic(const Duration(minutes:1),(_){if(mounted)setState((){});});
    WidgetsBinding.instance.addPostFrameCallback((_){if(mounted){refresh();_loadDraft();}});}
  @override void dispose(){_clockTicker?.cancel();super.dispose();}
  Duration? _remaining(Object? deadline){
    final end=deadline is String?DateTime.tryParse(deadline):null;
    final now=_serverNow;
    if(end==null||now==null)return null;
    return end.difference(now)-(_serverElapsed?.elapsed??Duration.zero);
  }
  String _remainingText(Object? deadline){
    final left=_remaining(deadline);
    if(left==null)return 'Expiry time unavailable';
    if(left<=Duration.zero)return 'Retention ended · refresh for deletion';
    final wholeMinutes=(left.inSeconds+59)~/60;
    return 'Expires in ${wholeMinutes~/60}h ${wholeMinutes.remainder(60)}m';
  }
  Future<void> _loadDraft() async {
    try{
      if(widget.api.currentAccount()!=widget.api.ownerAccount)return;
      final saved=await _draftStore.read(null);
      if(mounted&&widget.api.currentAccount()==widget.api.ownerAccount)
        setState(()=>draft=saved);
    }catch(_){/* The owner still has server-authoritative campaign history. */}
  }
  Future<void> refresh() async {
    if(loading)return;setState((){loading=true;error=null;});
    try {final fresh=await widget.api.mine();if(mounted)setState((){
      data=fresh;_serverNow=fresh['serverNow'] is String
        ?DateTime.tryParse(fresh['serverNow'] as String):null;
      _serverElapsed=Stopwatch()..start();
    });}
    catch(_){if(mounted)setState(()=>error='Could not load your promotions.');}
    finally{if(mounted)setState(()=>loading=false);}
  }
  Future<void> cancel(String id) async {
    if(pending.contains(id))return;
    setState(()=>pending.add(id));
    try{await widget.api.cancel(id);await refresh();}
    catch(_){if(mounted)setState(()=>error='Cancellation was not confirmed. Refresh the receipt.');}
    finally{if(mounted)setState(()=>pending.remove(id));}
  }
  Future<void> changePause(String id,{required bool resume}) async {
    if(pending.contains(id))return;
    setState(()=>pending.add(id));
    try{
      if(resume)await widget.api.resume(id);else await widget.api.pause(id);
      await refresh();
    }catch(_){if(mounted)setState(()=>error='The campaign change was not confirmed. Refresh its receipt.');}
    finally{if(mounted)setState(()=>pending.remove(id));}
  }
  Future<void> delete(String postId) async {
    final ok=await showDialog<bool>(context:context,builder:(ctx)=>AlertDialog(
      title:const Text('Delete this post?'),
      content:const Text('This removes the public content and refunds unused budget. Financial receipts remain.'),
      actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Keep')),
        FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Delete'))]));
    if(ok!=true||!mounted||pending.contains(postId))return;
    setState(()=>pending.add(postId));
    try{await widget.api.deleteOwnPost(postId);await refresh();}
    catch(_){if(mounted)setState(()=>error='Deletion was not confirmed. Refresh the post state.');}
    finally{if(mounted)setState(()=>pending.remove(postId));}
  }
  List<Map<String,dynamic>> rows(String key){
    final raw=data?[key];if(raw is! List)return [];
    return raw.whereType<Map>().map((row)=>Map<String,dynamic>.from(row)).toList();
  }
  bool matchesCampaign(Map<String,dynamic> campaign){
    if(campaignFilter=='all')return true;
    return campaign['state']==campaignFilter;
  }
  int activeRemainingViews(Map<String,dynamic> campaign)=>
    const {'active','paused','pending_review'}.contains(campaign['state'])&&
      campaign['remainingViews'] is int
        ?campaign['remainingViews'] as int:0;
  Future<void> campaignDetails(String id) async {
    if(pending.contains(id))return;
    setState(()=>pending.add(id));
    try{
      // Refresh the authenticated owner's original projection before opening
      // a receipt; an older list row must not become spend authority.
      final fresh=await widget.api.mine();
      if(!mounted)return;
      final list=fresh['campaigns'];
      final current=list is List?list.whereType<Map>().where((e)=>e['id']==id)
        .toList():<Map>[];
      if(current.isEmpty)throw const FormatException('Campaign no longer available');
      final c=Map<String,dynamic>.from(current.first);
      await showModalBottomSheet<void>(context:context,isScrollControlled:true,
        builder:(sheetContext)=>SafeArea(child:ConstrainedBox(
          constraints:BoxConstraints(maxHeight:MediaQuery.sizeOf(sheetContext).height*0.8),
          child:SingleChildScrollView(child:Padding(
          padding:const EdgeInsets.all(20),child:Column(
            mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text('Original campaign receipt',
                style:Theme.of(sheetContext).textTheme.titleLarge),
              const SizedBox(height:10),
              Text('${c['kind']=='boost'?'Boost':'Promotion'} · ${c['state']??'Unknown'}'),
              Text('Qualified views: ${c['deliveredViews']??0} / ${c['targetViews']??0}'),
              Text('Remaining funded views: ${activeRemainingViews(c)}'),
              Text('Direct: ${c['directViews']??0} · Referred: ${c['referredViews']??0}'),
              Text('Actually spent: ${c['spentMb']??c['deliveredViews']??0} MB'),
              Text('Still reserved: ${c['reservedMb']??0} MB'),
              Text('Unused budget released: ${c['refundedUnusedMb']??0} MB'),
              if(c['reviewReason'] is String && (c['reviewReason'] as String).isNotEmpty)
                Text('Review reason: ${c['reviewReason']}'),
              const SizedBox(height:12),
              SelectableText('Campaign reference: ${c['id']}'),
              SelectableText('Quote reference: ${c['quoteId']??'Unavailable'}'),
              SelectableText('Price version: ${c['priceVersion']??'Unavailable'}'),
              const SizedBox(height:10),
              Align(alignment:AlignmentDirectional.centerEnd,
                child:TextButton(onPressed:()=>Navigator.pop(sheetContext),
                  child:const Text('Close'))),
            ],
          ),
        )))));
    }catch(_){if(mounted)setState(()=>error=
      'Could not refresh the original campaign receipt. Please retry.');}
    finally{if(mounted)setState(()=>pending.remove(id));}
  }
  Future<void> continueDraft() async {
    final open=widget.onCreatePromotion;
    if(!widget.canBoost||open==null)return;
    await open();
    if(mounted){await _loadDraft();await refresh();}
  }
  @override Widget build(BuildContext context){
    final campaigns=rows('campaigns'),inactive=rows('inactivePosts'),
      earnings=rows('sharingEarnings'),notices=rows('lifecycleNotifications');
    final visibleCampaigns=campaigns.where(matchesCampaign).toList();
    return Scaffold(appBar:AppBar(title:const Text('My promotions & earnings')),
      body:RefreshIndicator(onRefresh:refresh,child:ListView(
        padding:const EdgeInsets.all(16),children:[
        if(loading&&data==null)const Center(child:CircularProgressIndicator()),
        if(error!=null)Card(child:Padding(padding:const EdgeInsets.all(12),
          child:Text(error!))),
        if(!widget.canBoost)const ListTile(
          leading:Icon(Icons.info_outline),
          title:Text('New promotion spending is temporarily unavailable.'),
          subtitle:Text('Your existing receipts and post deletion are still available.')),
        Text('My campaigns',style:Theme.of(context).textTheme.titleLarge),
        if(draft!=null)Card(child:ListTile(
          leading:const Icon(Icons.edit_note_outlined),
          title:const Text('Draft · Promotion'),
          subtitle:Text('${draft!.body.isEmpty?'Untitled promotion':draft!.body}\n'
            '${draft!.targetViews} selected views · no budget reserved yet',
            maxLines:3,overflow:TextOverflow.ellipsis),
          trailing:TextButton(onPressed:widget.canBoost&&
              widget.onCreatePromotion!=null?continueDraft:null,
            child:const Text('Continue')))),
        SingleChildScrollView(scrollDirection:Axis.horizontal,
          child:Row(children:[
            for(final filter in const <(String,String)>[
              ('all','All'),('pending_review','In review'),('active','Active'),
              ('paused','Paused'),('completed','Completed'),
              ('rejected','Rejected'),('cancelled','Cancelled')])
              Padding(padding:const EdgeInsetsDirectional.only(end:6),
                child:ChoiceChip(label:Text(filter.$2),
                  selected:campaignFilter==filter.$1,
                  onSelected:(_)=>setState(()=>campaignFilter=filter.$1))),
          ])),
        if(campaigns.isEmpty&&!loading)const ListTile(title:Text('No campaigns yet')),
        if(campaigns.isNotEmpty&&visibleCampaigns.isEmpty)
          const ListTile(title:Text('No campaigns in this status')),
        for(final c in visibleCampaigns)
          Card(child:Column(children:[ListTile(
            title:Text('${c['kind']=='boost'?'Boost':'Promotion'} · ${c['state']??'Unknown'}'),
            subtitle:Text('${c['deliveredViews']??0}/${c['targetViews']??0} qualified views · '
              '${activeRemainingViews(c)} still funded · '
              '${c['directViews']??0} direct / ${c['referredViews']??0} referred\n'
              '${c['spentMb']??c['deliveredViews']??0} MB spent · '
              '${c['reservedMb']??0} MB still reserved'
              '${(c['refundedUnusedMb'] is num && c['refundedUnusedMb']>0)?
                ' · ${c['refundedUnusedMb']} MB released':''}\n'
              '${c['reviewReason'] is String && (c['reviewReason'] as String).isNotEmpty?
                'Review reason: ${c['reviewReason']}\n':''}'
              'Reference: ${c['id']??''}'),
            isThreeLine:true,
            trailing:c['state']=='active' && c['remainingViews'] is int &&
              c['remainingViews']<=10
              ?const Icon(Icons.notifications_active_outlined,
                semanticLabel:'Budget nearly exhausted'):null,
          ),Padding(padding:const EdgeInsets.only(right:8,bottom:6),
            child:Align(alignment:AlignmentDirectional.centerEnd,
              child:TextButton(onPressed:pending.contains(c['id'])?null:
                ()=>campaignDetails('${c['id']}'),
                child:const Text('Details')))),
          if(const {'active','pending_review','paused'}.contains(c['state']))
            Padding(padding:const EdgeInsets.only(right:8,bottom:6),child:Row(
              mainAxisAlignment:MainAxisAlignment.end,children:[
              if(c['state']=='active')TextButton(
                onPressed:pending.contains(c['id'])?null:()=>changePause('${c['id']}',resume:false),
                child:const Text('Pause')),
              if(c['state']=='paused')TextButton(
                onPressed:pending.contains(c['id'])||!widget.canBoost?null:
                  ()=>changePause('${c['id']}',resume:true),
                child:const Text('Resume')),
              TextButton(onPressed:pending.contains(c['id'])?null:
                ()=>cancel('${c['id']}'),child:const Text('Cancel')),
            ]))])),
        const SizedBox(height:16),
        Text('Promotion updates',style:Theme.of(context).textTheme.titleLarge),
        if(notices.isEmpty&&!loading)const ListTile(title:Text('No updates yet')),
        for(final n in notices.take(20))ListTile(
          leading:const Icon(Icons.notifications_none),
          title:Text(_eventTitle('${n['kind']??''}')),
          subtitle:Text('${n['reason'] is String?'Reason: ${n['reason']}\n':''}'
            'Post: ${n['postId']??''}'),
          isThreeLine:n['reason'] is String),
        const SizedBox(height:16),
        Text('Inactive posts',style:Theme.of(context).textTheme.titleLarge),
        if(inactive.isEmpty&&!loading)const ListTile(title:Text('No posts awaiting expiry')),
        for(final p in inactive)
          Card(child:Column(children:[ListTile(
            title:const Text('Out of budget · not visible on Home'),
            subtitle:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
              const SizedBox(height:6),
              Text('${p['body']??''}',maxLines:3,overflow:TextOverflow.ellipsis),
              const SizedBox(height:4),
              Text('${p['historicalVerifiedViews']??0} historical verified views'),
              Text(_remainingText(p['purgeAt'])),
              Text('Post: ${p['postId']??''}'),
            ]),isThreeLine:true),
            Row(mainAxisAlignment:MainAxisAlignment.end,children:[
              TextButton(onPressed:pending.contains(p['postId'])?null:
                ()=>delete('${p['postId']}'),child:const Text('Delete')),
              TextButton(onPressed:pending.contains(p['postId'])||
                !widget.canBoost||
                (_remaining(p['purgeAt'])??Duration.zero)<=Duration.zero?null:() async {
                await widget.onBoostAgain('${p['postId']}');
                if(mounted)await refresh();
              },child:const Text('Boost again')),
            ]),
          ])),
        const SizedBox(height:16),
        Text('Sharing earnings',style:Theme.of(context).textTheme.titleLarge),
        if(earnings.isEmpty&&!loading)const ListTile(title:Text('No referred qualified views yet')),
        for(final e in earnings)ListTile(
          leading:const Icon(Icons.verified_outlined),
          title:Text('${e['referredQualifiedViews']??0} referred views'),
          subtitle:Text('${e['pendingHalfMb']??0} half-MB pending · not redeemable\n'
            'Post: ${e['postId']??''}'),isThreeLine:true),
        const SizedBox(height:24),
        Text('Each verified paid view costs its sponsor 1 MB. Referred views '
          'allocate 0.5 MB to the sharer, pending fraud review and settlement. '
          'Pending rewards cannot be redeemed.',
          style:Theme.of(context).textTheme.bodySmall),
      ])));
  }
  String _eventTitle(String kind)=>switch(kind){
    'budget_reserved'=>'Promotion submitted for review',
    'approved'=>'Promotion approved',
    'rejected'=>'Promotion rejected · budget released',
    'cancelled'=>'Promotion cancelled · unused budget released',
    'paused'=>'Promotion paused',
    'resumed'=>'Promotion resumed',
    'campaign_completed'=>'Promotion budget finished',
    'post_disabled'=>'Post hidden · 72-hour retention started',
    'paid_post_purged'=>'Expired post deleted',
    'owner_deleted'=>'Post deleted by owner',
    'moderation_takedown'=>'Post removed by moderation',
    _=>'Promotion updated',
  };
}
