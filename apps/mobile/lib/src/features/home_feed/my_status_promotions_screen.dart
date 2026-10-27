import 'dart:async';

import 'package:flutter/material.dart';

import 'status_promotion_api.dart';

/// The owner's reviewable campaign ledger is separate from public Home.
/// Inactive content is shown only by this signed-in session until server purge.
class MyStatusPromotionsScreen extends StatefulWidget {
  const MyStatusPromotionsScreen({super.key,required this.api,
    required this.onBoostAgain});
  final StatusPromotionApi api;
  final Future<void> Function(String postId) onBoostAgain;
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
  @override void initState(){super.initState();
    _clockTicker=Timer.periodic(const Duration(minutes:1),(_){if(mounted)setState((){});});
    WidgetsBinding.instance.addPostFrameCallback((_){if(mounted)refresh();});}
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
  @override Widget build(BuildContext context){
    final campaigns=rows('campaigns'),inactive=rows('inactivePosts'),
      earnings=rows('sharingEarnings');
    return Scaffold(appBar:AppBar(title:const Text('My promotions & earnings')),
      body:RefreshIndicator(onRefresh:refresh,child:ListView(
        padding:const EdgeInsets.all(16),children:[
        if(loading&&data==null)const Center(child:CircularProgressIndicator()),
        if(error!=null)Card(child:Padding(padding:const EdgeInsets.all(12),
          child:Text(error!))),
        Text('My campaigns',style:Theme.of(context).textTheme.titleLarge),
        if(campaigns.isEmpty&&!loading)const ListTile(title:Text('No campaigns yet')),
        for(final c in campaigns)
          Card(child:ListTile(
            title:Text('${c['kind']=='boost'?'Boost':'Promotion'} · ${c['state']??'Unknown'}'),
            subtitle:Text('${c['deliveredViews']??0}/${c['targetViews']??0} qualified views · '
              '${c['directViews']??0} direct / ${c['referredViews']??0} referred\n'
              '${c['spentMb']??c['deliveredViews']??0} MB spent · '
              '${c['reservedMb']??0} MB still reserved'
              '${(c['refundedUnusedMb'] is num && c['refundedUnusedMb']>0)?
                ' · ${c['refundedUnusedMb']} MB released':''}\n'
              '${c['reviewReason'] is String && (c['reviewReason'] as String).isNotEmpty?
                'Review reason: ${c['reviewReason']}\n':''}'
              'Reference: ${c['id']??''}'),
            isThreeLine:true,
            trailing:const {'active','pending_review','paused'}.contains(c['state'])
              ?TextButton(onPressed:pending.contains(c['id'])?null:
                  ()=>cancel('${c['id']}'),child:const Text('Cancel')):null,
          )),
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
}
