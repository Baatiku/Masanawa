import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_summary.dart';

GbWalletOwner? _ownerFor(WidgetRef ref) {
  final session=ref.watch(sessionProvider);
  return session is SessionSignedIn
      ? (accountId:session.user.id,
         authorizationEpoch:ref.read(sessionProvider.notifier).authorizationEpoch)
      : null;
}

String _amountText(GbActivityItem row) {
  final sign=row.amount>0?'+':'−';
  final absolute=row.amount.abs();
  String group(int n)=>n.toString().replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),(_)=>',');
  if(row.unit=='NGN')return '$sign₦${group(absolute~/100)}.${(absolute%100).toString().padLeft(2,'0')}';
  return '$sign${group(absolute)} MB';
}

String _kindText(String kind) => switch(kind) {
  'welcome_grant'=>'Welcome data',
  'verified_deposit'=>'Verified data credit',
  'ngn_exchange'=>'Data exchange credit',
  'send'=>'Send / receive',
  'request_pay'=>'Paid request',
  'tip'=>'Masana tip',
  'reply'=>'Masana reply usage',
  'connected_call'=>'Masana call usage',
  'redeem'=>'Data redemption',
  'reversal'=>'Reversal',
  'deposit'=>'NGN deposit',
  'exchange'=>'NGN data exchange',
  'deposit_reversal'=>'Deposit reversal',
  _=>'Wallet movement',
};

class GbActivityTile extends StatelessWidget {
  const GbActivityTile({super.key,required this.item});
  final GbActivityItem item;
  @override
  Widget build(BuildContext context) {
    final colors=context.masanawa;
    final positive=item.amount>0;
    final date=MaterialLocalizations.of(context)
      .formatMediumDate(item.createdAt.toLocal());
    final time=TimeOfDay.fromDateTime(item.createdAt.toLocal()).format(context);
    final title=_kindText(item.kind);
    return ListTile(
      key:ValueKey('activity-${item.id}'),
      contentPadding:const EdgeInsets.symmetric(horizontal:4,vertical:3),
      leading:CircleAvatar(
        backgroundColor:(positive?colors.brand:colors.textMuted).withValues(alpha:.12),
        child:Icon(positive?Icons.south_west_rounded:Icons.north_east_rounded,
          color:positive?colors.brand:colors.textPrimary,size:21)),
      title:Text(title,maxLines:2,overflow:TextOverflow.ellipsis),
      subtitle:Text('$date · $time · ${item.status == 'reversed'?'Reversed':'Posted'}\n'
        'Ref: ${item.operationId}',maxLines:3,overflow:TextOverflow.ellipsis),
      isThreeLine:true,
      trailing:ConstrainedBox(
        constraints:const BoxConstraints(maxWidth:140),
        child:Text(_amountText(item),textAlign:TextAlign.end,
          softWrap:true,style:Theme.of(context).textTheme.titleSmall?.copyWith(
            color:positive?colors.brandStrong:colors.textPrimary,
            fontWeight:FontWeight.w700))),
    );
  }
}

/// Small authoritative preview in Wallet; no invented empty activity state.
class GbWalletActivitySection extends ConsumerWidget {
  const GbWalletActivitySection({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final owner=_ownerFor(ref);
    final page=owner==null?null:ref.watch(gbActivityPageProvider((owner:owner,limit:5)));
    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      Row(children:[
        Expanded(child:Text('Activity',style:Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight:FontWeight.w700))),
        TextButton.icon(
          onPressed:owner==null?null:()=>context.push('/wallet/activity'),
          label:const Text('See all'),icon:const Icon(Icons.chevron_right)),
      ]),
      const SizedBox(height:8),
      if(owner==null)
        const Padding(padding:EdgeInsets.all(16),child:Text('Sign in to see wallet activity.'))
      else if(page!.isLoading && page!.valueOrNull==null)
        const ListTile(leading:CircularProgressIndicator(),title:Text('Loading wallet activity…'))
      else if(page!.hasError || page!.valueOrNull==null)
        ListTile(
          title:const Text('Wallet activity is unavailable right now.'),
          subtitle:const Text('No transaction has been assumed or changed.'),
          trailing:IconButton(tooltip:'Retry wallet activity',
            icon:const Icon(Icons.refresh),
            onPressed:()=>ref.invalidate(gbActivityPageProvider((owner:owner,limit:5)))),
        )
      else if(page!.valueOrNull!.items.isEmpty)
        const Padding(padding:EdgeInsets.symmetric(vertical:22),
          child:Center(child:Text('No posted MB or NGN activity yet.')))
      else
        for(final item in page!.valueOrNull!.items)
          GbActivityTile(key:ValueKey('wallet-preview-${item.id}'),item:item),
    ]);
  }
}

/// Same-account paged journal, explicitly separate from detailed receipts.
class GbWalletActivityScreen extends ConsumerStatefulWidget {
  const GbWalletActivityScreen({super.key});
  @override
  ConsumerState<GbWalletActivityScreen> createState()=>_GbWalletActivityScreenState();
}

class _GbWalletActivityScreenState extends ConsumerState<GbWalletActivityScreen> {
  GbWalletOwner? _owner;
  final _more=<GbActivityItem>[];
  final _seen=<String>{};
  String? _next;
  bool _loadedMore=false,_loadingMore=false,_pageError=false;
  CancelToken? _cancel;
  int _request=0;

  void _reset() {
    ++_request;_cancel?.cancel();_cancel=null;
    _more.clear();_seen.clear();_next=null;
    _loadedMore=_loadingMore=_pageError=false;
  }
  @override
  void dispose(){_reset();super.dispose();}

  bool _same(GbWalletOwner owner,int ticket) {
    final session=ref.read(sessionProvider);
    return mounted && ticket==_request && _owner==owner &&
      session is SessionSignedIn && session.user.id==owner.accountId &&
      ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;
  }

  Future<void> _loadMore(GbWalletOwner owner,String cursor) async {
    if(_loadingMore || _seen.contains(cursor))return;
    final ticket=++_request;
    final cancel=CancelToken();_cancel=cancel;
    setState((){_loadingMore=true;_pageError=false;});
    try {
      final page=await ref.read(gbActivityTransportProvider)
        .page(limit:20,cursor:cursor,cancellation:cancel);
      if(!_same(owner,ticket))return;
      setState((){
        _loadingMore=false;_loadedMore=true;_seen.add(cursor);
        _more.addAll(page.items);
        _next=page.items.isEmpty || page.nextCursor==cursor ||
          (page.nextCursor!=null && _seen.contains(page.nextCursor))
          ? null : page.nextCursor;
      });
    } catch (_) {
      if(!_same(owner,ticket))return;
      setState((){_loadingMore=false;_pageError=true;});
    }
  }

  @override
  Widget build(BuildContext context) {
    final owner=_ownerFor(ref);
    if(owner!=_owner){_reset();_owner=owner;}
    final request=owner==null?null:(owner:owner,limit:20);
    final first=request==null?null:ref.watch(gbActivityPageProvider(request));
    final initial=first?.valueOrNull;
    final entries=<GbActivityItem>[
      ...?initial?.items,
      if(initial!=null)..._more,
    ];
    final byId=<String,GbActivityItem>{};
    for(final entry in entries)byId.putIfAbsent(entry.id,()=>entry);
    final cursor=_loadedMore?_next:initial?.nextCursor;
    return Scaffold(
      appBar:AppBar(title:const Text('Wallet activity')),
      body:owner==null?const Center(child:Text('Sign in to view wallet activity.')):
      RefreshIndicator(onRefresh:() async {
        setState(_reset);
        ref.invalidate(gbActivityPageProvider(request!));
        try{await ref.read(gbActivityPageProvider(request!).future);}catch(_){/* retry state below */}
      },child:ListView(
        key:const PageStorageKey('gb-wallet-activity-all'),
        physics:const AlwaysScrollableScrollPhysics(),
        padding:const EdgeInsets.fromLTRB(16,12,16,32),
        children:[
          const Padding(padding:EdgeInsets.only(bottom:12),
            child:Text('Posted MB and NGN movements. Pending authorizations and '
              'reservations are not counted as completed payments.')),
          if(initial==null && first?.isLoading==true)
            const ListTile(title:Text('Loading verified activity…'),
              leading:CircularProgressIndicator()),
          if(initial==null && first?.hasError==true)
            ListTile(title:const Text('Could not verify wallet activity.'),
              subtitle:const Text('Previous balances and funds are unchanged.'),
              trailing:IconButton(icon:const Icon(Icons.refresh),
                tooltip:'Retry wallet activity',onPressed:()=>
                  ref.invalidate(gbActivityPageProvider(request!)))),
          if(initial!=null && byId.isEmpty)
            const Padding(padding:EdgeInsets.all(32),
              child:Center(child:Text('No posted MB or NGN activity yet.'))),
          for(final item in byId.values)GbActivityTile(
            key:ValueKey('activity-row-${item.id}'),item:item),
          if(_pageError && initial!=null)ListTile(
            title:const Text('Could not load more activity. Previous rows are retained.'),
            trailing:IconButton(tooltip:'Retry loading activity',
              icon:const Icon(Icons.refresh),onPressed:cursor==null?null:()=>_loadMore(owner,cursor))),
          if(_loadingMore && initial!=null)
            const LinearProgressIndicator(semanticsLabel:'Loading more wallet activity'),
          if(!_loadingMore && !_pageError && cursor!=null && initial!=null)
            Center(child:TextButton.icon(
              onPressed:()=>_loadMore(owner,cursor),
              icon:const Icon(Icons.expand_more),label:const Text('Load more activity'))),
        ],
      )),
    );
  }
}
