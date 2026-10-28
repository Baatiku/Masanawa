import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_promotion_journal.dart';
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

String _groupActivity(int n)=>n.toString().replaceAllMapped(
  RegExp(r'\B(?=(\d{3})+(?!\d))'),(_)=>',');
String _ngnActivity(int kobo)=>'₦${_groupActivity(kobo~/100)}.'
  '${(kobo%100).toString().padLeft(2,'0')}';

List<Widget> _datedActivityTiles(BuildContext context,Iterable<GbActivityItem> items) {
  final children=<Widget>[];
  DateTime? previousDay;
  for(final item in items){
    final local=item.createdAt.toLocal();
    final day=DateUtils.dateOnly(local);
    if(day!=previousDay){
      children.add(Padding(
        key:ValueKey('activity-date-${day.toIso8601String()}'),
        padding:const EdgeInsetsDirectional.fromSTEB(4,20,4,6),
        child:Text(MaterialLocalizations.of(context).formatMediumDate(day),
          style:Theme.of(context).textTheme.labelLarge)));
      previousDay=day;
    }
    children.add(GbActivityTile(key:ValueKey('activity-row-${item.id}'),item:item));
  }
  return children;
}

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
    final title=item.title;
    return ListTile(
      key:ValueKey('activity-${item.id}'),
      onTap:()=>context.push('/wallet/activity/${Uri.encodeComponent(item.id)}'),
      contentPadding:const EdgeInsets.symmetric(horizontal:4,vertical:3),
      leading:CircleAvatar(
        backgroundColor:(positive?colors.brand:colors.textMuted).withValues(alpha:.12),
        child:Icon(positive?Icons.south_west_rounded:Icons.north_east_rounded,
          color:positive?colors.brand:colors.textPrimary,size:21)),
      title:Text(title,maxLines:2,overflow:TextOverflow.ellipsis),
      subtitle:Text('$date · $time · ${item.status == 'reversed'?'Reversed':'Posted'}\n'
        '${item.details?.counterpartyLabel==null?'':'${item.details!.counterpartyLabel}\n'}'
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
  const GbWalletActivitySection({super.key,this.previewCount=5});
  final int previewCount;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final owner=_ownerFor(ref);
    final page=owner==null?null:ref.watch(gbActivityPageProvider((owner:owner,limit:5,
      unit:'all',filters:gbActivityAllFilters)));
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
      else if(page!.isLoading && page.valueOrNull==null)
        const ListTile(leading:CircularProgressIndicator(),title:Text('Loading wallet activity…'))
      else if(page.hasError || page.valueOrNull==null)
        ListTile(
          title:const Text('Wallet activity is unavailable right now.'),
          subtitle:const Text('No transaction has been assumed or changed.'),
          trailing:IconButton(tooltip:'Retry wallet activity',
            icon:const Icon(Icons.refresh),
            onPressed:()=>ref.invalidate(gbActivityPageProvider((owner:owner,limit:5,
              unit:'all',filters:gbActivityAllFilters)))),
        )
      else if(page.valueOrNull!.items.isEmpty)
        const Padding(padding:EdgeInsets.symmetric(vertical:22),
          child:Center(child:Text('No posted MB or NGN activity yet.')))
      else
        for(final item in page.valueOrNull!.items.take(previewCount))
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
  String _unit='all';
  int _days=7;
  String _purpose='all',_status='all',_direction='all',_period='all',_reference='';
  bool _badReference=false,_showFacets=false;
  final _referenceInput=TextEditingController();

  GbActivityFilters get _facets=>(purpose:_purpose,status:_status,
    direction:_direction,days:_period,reference:_reference);
  bool get _filtered=>_unit!='all'||_purpose!='all'||_status!='all'||
    _direction!='all'||_period!='all'||_reference.isNotEmpty;

  void _clearFilters(){
    setState((){
      _reset();_unit='all';_purpose='all';_status='all';
      _direction='all';_period='all';_reference='';_badReference=false;
      _showFacets=false;
      _referenceInput.clear();
    });
  }
  void _submitReference(){
    final text=_referenceInput.text.trim();
    if(!validGbActivityReference(text)){
      setState(()=>_badReference=true);return;
    }
    if(text==_reference)return;
    setState((){_reset();_badReference=false;_reference=text;});
  }

  void _reset() {
    ++_request;_cancel?.cancel();_cancel=null;
    _more.clear();_seen.clear();_next=null;
    _loadedMore=_loadingMore=_pageError=false;
  }
  @override
  void dispose(){_reset();_referenceInput.dispose();super.dispose();}

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
        .page(limit:20,cursor:cursor,unit:_unit,filters:_facets,cancellation:cancel);
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
    if(owner!=_owner){
      _reset();_owner=owner;_unit='all';_days=7;_purpose='all';
      _status='all';_direction='all';_period='all';_reference='';
      _badReference=false;_showFacets=false;_referenceInput.clear();
    }
    final request=owner==null?null:(owner:owner,limit:20,unit:_unit,filters:_facets);
    final first=request==null?null:ref.watch(gbActivityPageProvider(request));
    final summaryRequest=owner==null?null:(owner:owner,days:_days);
    final summary=summaryRequest==null?null:ref.watch(gbActivitySummaryProvider(summaryRequest));
    final promotion=owner==null?null:ref.watch(gbPromotionJournalProvider(owner));
    final promotionJournal=promotion?.valueOrNull;
    final totals=summary?.valueOrNull;
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
        ref.invalidate(gbPromotionJournalProvider(owner));
        try{await ref.read(gbActivityPageProvider(request).future);}catch(_){/* retry state below */}
      },child:ListView(
        key:const PageStorageKey('gb-wallet-activity-all'),
        physics:const AlwaysScrollableScrollPhysics(),
        padding:const EdgeInsets.fromLTRB(16,12,16,32),
        children:[
          const Padding(padding:EdgeInsets.only(bottom:12),
            child:Text('Posted MB and NGN movements. Pending authorizations and '
              'reservations are not counted as completed payments.')),
          if(promotionJournal!=null &&
              (promotionJournal.campaigns.isNotEmpty ||
                promotionJournal.earnings.isNotEmpty))
          Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,children:[
            Text('Promotions & Share earnings',
              style:Theme.of(context).textTheme.titleMedium),
            const SizedBox(height:4),
            const Text('Review-only campaign activity. Reserved MB is not spent; '
              'pending referral earnings are not redeemable or included in your balance.'),
            ...[
              for(final c in promotionJournal.campaigns.take(5))
                ListTile(
                  key:ValueKey('wallet-promotion-${c.id}'),
                  leading:const Icon(Icons.campaign_outlined),
                  title:Text('${c.isBoost?'Boost':'Promotion'} · ${c.state}'),
                  subtitle:Text('${c.deliveredViews}/${c.targetViews} qualified views · '
                    '${c.spentMb} MB delivered\n'
                    '${c.reservedMb} MB still reserved · '
                    '${c.refundedUnusedMb} MB released\n'
                    'Campaign: ${c.id}'),
                  isThreeLine:true),
              for(final e in promotionJournal.earnings.take(5))
                ListTile(key:ValueKey('wallet-referral-${e.postId}'),
                  leading:const Icon(Icons.hourglass_bottom_outlined),
                  title:Text('${e.views} referred qualified views'),
                  subtitle:Text('${e.pendingMbLabel}\nPost: ${e.postId}'),
                  isThreeLine:true),
              if(promotionJournal.campaigns.length>5||
                  promotionJournal.earnings.length>5)
                const ListTile(title:Text('More campaign details are available in Home → My promotions.')),
            ],
          ]))),
          const SizedBox(height:8),
          SingleChildScrollView(
            key:const ValueKey('wallet-activity-unit-filters'),
            scrollDirection:Axis.horizontal,
            child:Row(children:[
              for(final choice in const <String,String>{
                'all':'All activity','MB':'Data MB','NGN':'Naira NGN',
              }.entries)
                Padding(padding:const EdgeInsetsDirectional.only(end:8),
                  child:ChoiceChip(
                    key:ValueKey('activity-unit-${choice.key}'),
                    label:Text(choice.value),selected:_unit==choice.key,
                    onSelected:(_){if(_unit==choice.key)return;
                      setState((){_reset();_unit=choice.key;});},
                  )),
            ])),
          Wrap(crossAxisAlignment:WrapCrossAlignment.center,children:[
            TextButton.icon(
              key:const ValueKey('activity-toggle-more-filters'),
              onPressed:()=>setState(()=>_showFacets=!_showFacets),
              icon:Icon(_showFacets?Icons.keyboard_arrow_up:Icons.tune),
              label:Text(_showFacets?'Hide filters':'More filters')),
            if(_filtered)const Padding(padding:EdgeInsetsDirectional.only(start:8),
              child:Text('Filtered',semanticsLabel:'History filters are active')),
          ]),
          if(_showFacets)...[
          const SizedBox(height:8),
          Text('Purpose',style:Theme.of(context).textTheme.labelLarge),
          SingleChildScrollView(scrollDirection:Axis.horizontal,
            key:const ValueKey('activity-purpose-filters'),
            child:Row(children:[
              for(final choice in const <String,String>{
                'all':'Any purpose','funding':'Funding','transfers':'Transfers',
                'masana':'Masana usage','data':'Data','reversals':'Reversals',
                'other':'Other',
              }.entries)
                Padding(padding:const EdgeInsetsDirectional.only(end:6),
                  child:ChoiceChip(key:ValueKey('activity-purpose-${choice.key}'),
                    label:Text(choice.value),selected:_purpose==choice.key,
                    onSelected:(_){if(_purpose!=choice.key)setState((){
                      _reset();_purpose=choice.key;
                    });})),
            ])),
          const SizedBox(height:10),
          Text('Posting status',style:Theme.of(context).textTheme.labelLarge),
          SingleChildScrollView(scrollDirection:Axis.horizontal,
            child:Row(children:[
              for(final choice in const <String,String>{
                'all':'Any status','completed':'Posted','reversed':'Reversed',
              }.entries)
                Padding(padding:const EdgeInsetsDirectional.only(end:6),
                  child:ChoiceChip(key:ValueKey('activity-status-${choice.key}'),
                    label:Text(choice.value),selected:_status==choice.key,
                    onSelected:(_){if(_status!=choice.key)setState((){
                      _reset();_status=choice.key;
                    });})),
            ])),
          const SizedBox(height:10),
          Text('Direction',style:Theme.of(context).textTheme.labelLarge),
          SingleChildScrollView(scrollDirection:Axis.horizontal,
            child:Row(children:[
              for(final choice in const <String,String>{
                'all':'In & out','incoming':'Received','outgoing':'Spent',
              }.entries)
                Padding(padding:const EdgeInsetsDirectional.only(end:6),
                  child:ChoiceChip(key:ValueKey('activity-direction-${choice.key}'),
                    label:Text(choice.value),selected:_direction==choice.key,
                    onSelected:(_){if(_direction!=choice.key)setState((){
                      _reset();_direction=choice.key;
                    });})),
            ])),
          const SizedBox(height:10),
          Text('History period',style:Theme.of(context).textTheme.labelLarge),
          SingleChildScrollView(scrollDirection:Axis.horizontal,
            child:Row(children:[
              for(final choice in const <String,String>{
                'all':'All dates','7':'Last 7 days','30':'Last 30 days',
              }.entries)
                Padding(padding:const EdgeInsetsDirectional.only(end:6),
                  child:ChoiceChip(key:ValueKey('activity-history-${choice.key}'),
                    label:Text(choice.value),selected:_period==choice.key,
                    onSelected:(_){if(_period!=choice.key)setState((){
                      _reset();_period=choice.key;
                    });})),
            ])),
          const SizedBox(height:10),
          Row(crossAxisAlignment:CrossAxisAlignment.start,children:[
            Expanded(child:TextField(
              key:const ValueKey('activity-reference-input'),
              controller:_referenceInput,maxLength:160,
              textInputAction:TextInputAction.search,
              decoration:InputDecoration(
                labelText:'Exact operation reference',
                hintText:'Paste original reference',
                errorText:_badReference?'Use letters, numbers, _, ., : or -':null,
                border:const OutlineInputBorder(),
                isDense:true),
              onChanged:(_){if(_badReference)setState(()=>_badReference=false);},
              onSubmitted:(_)=>_submitReference())),
            const SizedBox(width:8),
            Padding(padding:const EdgeInsets.only(top:4),
              child:IconButton.filledTonal(
                key:const ValueKey('activity-reference-submit'),
                tooltip:'Find exact operation',onPressed:_submitReference,
                icon:const Icon(Icons.search))),
          ]),
          ],
          if(_filtered)Align(alignment:AlignmentDirectional.centerEnd,
            child:TextButton.icon(onPressed:_clearFilters,
              icon:const Icon(Icons.filter_alt_off),label:const Text('Clear filters'))),
          const SizedBox(height:12),
          Card(child:Padding(padding:const EdgeInsets.all(14),
            child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
              Text('Posted activity totals',style:Theme.of(context).textTheme.titleMedium),
              const Text('These totals cover all purposes and statuses for the selected totals period, '
                'independently of history filters. MB and NGN are never combined.'),
              const SizedBox(height:8),
              Wrap(spacing:8,runSpacing:4,children:[
                for(final days in const [7,30])
                  ChoiceChip(key:ValueKey('activity-period-$days'),
                    label:Text('Last $days days'),selected:_days==days,
                    onSelected:(_){if(_days!=days)setState(()=>_days=days);}),
              ]),
              if(totals==null && summary?.isLoading==true)
                const Padding(padding:EdgeInsets.all(12),
                  child:LinearProgressIndicator(semanticsLabel:'Loading period totals')),
              if(totals==null && summary?.isLoading!=true)
                Row(children:[
                  const Expanded(child:Text('Period totals unavailable. No zero balance is assumed.')),
                  TextButton(onPressed:()=>ref.invalidate(gbActivitySummaryProvider(summaryRequest!)),
                    child:const Text('Retry totals')),
                ]),
              if(totals!=null)...[
                Text('UTC ${totals.fromAt.toIso8601String()} – '
                  '${totals.toAt.toIso8601String()}',
                  style:Theme.of(context).textTheme.bodySmall),
                const SizedBox(height:12),
                Text('Data MB',style:Theme.of(context).textTheme.titleSmall),
                Wrap(spacing:18,runSpacing:8,children:[
                  Text('Received: +${_groupActivity(totals.mb.received)} MB'),
                  Text('Used: −${_groupActivity(totals.mb.spent)} MB'),
                ]),
                const SizedBox(height:10),
                Text('Naira NGN',style:Theme.of(context).textTheme.titleSmall),
                Wrap(spacing:18,runSpacing:8,children:[
                  Text('Received: +${_ngnActivity(totals.ngn.received)}'),
                  Text('Spent: −${_ngnActivity(totals.ngn.spent)}'),
                ]),
              ],
            ]))),
          const SizedBox(height:12),
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
            Padding(padding:const EdgeInsets.all(24),
              child:Column(children:[
                Text(_filtered?'No posted activity matches these filters.':
                  'No posted MB or NGN activity yet.'),
                if(_filtered)TextButton(onPressed:_clearFilters,
                  child:const Text('Clear filters and show all')),
              ])),
          if(byId.isNotEmpty)Padding(padding:const EdgeInsetsDirectional.fromSTEB(4,10,4,0),
            child:Text('${byId.length} verified ${byId.length==1?'entry':'entries'} loaded'
              '${cursor!=null?' · more available':''}',
              style:Theme.of(context).textTheme.bodySmall)),
          ..._datedActivityTiles(context,byId.values),
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
          if(promotion?.hasError==true)
            ListTile(title:const Text('Promotion history unavailable.'),
              subtitle:const Text('Posted MB and NGN activity remains available.'),
              trailing:TextButton(onPressed:()=>ref.invalidate(gbPromotionJournalProvider(owner)),
                child:const Text('Retry promotion history'))),
        ],
      )),
    );
  }
}
