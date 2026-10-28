import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_promotion_journal.dart';
import 'gb_promotion_activity_panel.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_summary.dart';
import 'gb_wallet_holds_panel.dart';

String _balanceStatus(GbActivityReconciliation? check){
  if(check==null)return 'Balance check unavailable';
  if(check.mb.state=='mismatch'||check.ngn.state=='mismatch')return 'Needs reconciliation';
  if(check.mb.state=='uninitialized'&&check.ngn.state=='uninitialized')return 'Wallets not initialized';
  return 'Recorded balances checked';
}

Widget _balanceCheck(BuildContext context,String unit,GbActivityBalanceReconciliation? check){
  String amount(int n){
    final sign=n<0?'−':'';
    return unit=='MB'?'$sign${_groupActivity(n.abs())} MB':'$sign${_ngnActivity(n.abs())}';
  }
  if(check==null)return Text('$unit balance check unavailable. Refresh totals to retry.');
  if(check.state=='uninitialized')return Text('No $unit wallet has been initialized.');
  return Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
    Text('$unit: ${check.state=='matched'?'Reconciled balance':'Balance needs reconciliation'}',
      style:Theme.of(context).textTheme.titleSmall),
    Wrap(spacing:18,runSpacing:8,children:[
      Text('Opening: ${amount(check.opening)}'),Text('Posted closing: ${amount(check.closing)}'),
      if(check.state=='matched')...[
        Text('Available: ${amount(check.available!)}'),
        if(unit=='MB')Text('Reserved: ${amount(check.reserved!)}'),
        if(unit=='NGN'&&check.debt!>0)Text('Reversal debt: ${amount(check.debt!)}'),
      ],
    ]),
    if(check.state=='mismatch')const Text('Available funds are not verified here. Check again or contact support.'),
  ]);
}

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
  const GbActivityTile({super.key, required this.item});
  final GbActivityItem item;
  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final positive = item.amount > 0;
    final date = MaterialLocalizations.of(
      context,
    ).formatMediumDate(item.createdAt.toLocal());
    final time = TimeOfDay.fromDateTime(
      item.createdAt.toLocal(),
    ).format(context);
    final status = item.status == 'reversed' ? 'Reversed' : 'Successful';
    final counterparty =
        item.details?.counterpartyName ?? item.details?.counterpartyHandle;
    final title = counterparty == null
        ? item.title
        : '${item.title} · $counterparty';
    final icon = switch (item.kind) {
      'deposit' || 'verified_deposit' => Icons.south_west_rounded,
      'exchange' || 'ngn_exchange' => Icons.swap_horiz_rounded,
      'redeem' => Icons.sim_card_outlined,
      'tip' => Icons.favorite_border_rounded,
      'reply' => Icons.chat_bubble_outline_rounded,
      'connected_call' => Icons.call_outlined,
      'reversal' || 'deposit_reversal' => Icons.undo_rounded,
      _ => positive ? Icons.south_west_rounded : Icons.north_east_rounded,
    };
    final badge = Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        color:
            (item.status == 'reversed'
                    ? Theme.of(context).colorScheme.error
                    : colors.brand)
                .withValues(alpha: .08),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        status,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: item.status == 'reversed'
              ? Theme.of(context).colorScheme.error
              : colors.brandStrong,
        ),
      ),
    );
    final amount = Text(
      _amountText(item),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.end,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: positive ? colors.brandStrong : colors.textPrimary,
        fontWeight: FontWeight.w700,
      ),
    );
    return Material(
      color: Colors.transparent,
      child: InkWell(
        key: ValueKey('activity-${item.id}'),
        onTap: () =>
            context.push('/wallet/activity/${Uri.encodeComponent(item.id)}'),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 13),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final stacked =
                  constraints.maxWidth < 300 ||
                  MediaQuery.textScalerOf(context).scale(1) > 1.3;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: colors.brand.withValues(alpha: .09),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(icon, color: colors.brand, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '$date · $time',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: colors.textMuted),
                        ),
                        if (stacked) ...[
                          const SizedBox(height: 8),
                          amount,
                          const SizedBox(height: 4),
                          badge,
                        ],
                      ],
                    ),
                  ),
                  if (!stacked) ...[
                    const SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [amount, const SizedBox(height: 5), badge],
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ),
      ),
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
        Expanded(child:Text('Recent transactions',style:Theme.of(context).textTheme.titleMedium?.copyWith(
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
  ConsumerState<GbWalletActivityScreen> createState() =>
      _GbWalletActivityScreenState();
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
  bool _badReference=false,_showFacets=false,_showPromotionHistory=false;
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
    final owner = _ownerFor(ref);
    if (owner != _owner) {
      _reset();
      _owner = owner;
      _unit = 'all';
      _days = 7;
      _purpose = 'all';
      _status = 'all';
      _direction = 'all';
      _period = 'all';
      _reference = '';
      _badReference = false;
      _showFacets = false;
      _showPromotionHistory = false;
      _referenceInput.clear();
    }
    final request = owner == null
        ? null
        : (owner: owner, limit: 20, unit: _unit, filters: _facets);
    final first = request == null
        ? null
        : ref.watch(gbActivityPageProvider(request));
    final summaryRequest = owner == null ? null : (owner: owner, days: _days);
    final summary = summaryRequest == null
        ? null
        : ref.watch(gbActivitySummaryProvider(summaryRequest));
    final promotion = owner == null || !_showPromotionHistory
        ? null
        : ref.watch(gbPromotionJournalProvider(owner));
    final promotionJournal = promotion?.valueOrNull;
    final totals = summary?.valueOrNull;
    final initial = first?.valueOrNull;
    final entries = <GbActivityItem>[
      ...?initial?.items,
      if (initial != null) ..._more,
    ];
    final byId = <String, GbActivityItem>{};
    for (final entry in entries) byId.putIfAbsent(entry.id, () => entry);
    final cursor = _loadedMore ? _next : initial?.nextCursor;
    return Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: owner == null
          ? const Center(child: Text('Sign in to view wallet activity.'))
          : RefreshIndicator(
              onRefresh: () async {
                setState(_reset);
                ref.invalidate(gbActivityPageProvider(request!));
                ref.invalidate(gbActivitySummaryProvider(summaryRequest!));
                ref.invalidate(gbPromotionJournalProvider(owner));
                try {
                  await ref.read(gbActivityPageProvider(request).future);
                } catch (_) {
                  /* retry state below */
                }
              },
              child: ListView(
                key: const PageStorageKey('gb-wallet-activity-all'),
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final category = _HistoryFilter(
                        value: _purpose,
                        label: 'Category',
                        choices: const {
                          'all': 'All categories',
                          'funding': 'Funding',
                          'transfers': 'Transfers',
                          'masana': 'Masana usage',
                          'data': 'Data',
                          'reversals': 'Reversals',
                          'other': 'Other',
                        },
                        onChanged: (value) => setState(() {
                          _reset();
                          _purpose = value;
                        }),
                      );
                      final status = _HistoryFilter(
                        value: _status,
                        label: 'Status',
                        choices: const {
                          'all': 'All status',
                          'completed': 'Successful',
                          'reversed': 'Reversed',
                        },
                        onChanged: (value) => setState(() {
                          _reset();
                          _status = value;
                        }),
                      );
                      return MediaQuery.textScalerOf(context).scale(1) > 1.3
                          ? Column(
                              children: [
                                category,
                                const SizedBox(height: 8),
                                status,
                              ],
                            )
                          : Row(
                              children: [
                                Expanded(child: category),
                                const SizedBox(width: 10),
                                Expanded(child: status),
                              ],
                            );
                    },
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    key: const ValueKey('wallet-activity-unit-filters'),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final choice in const <String, String>{
                          'all': 'All activity',
                          'MB': 'Data MB',
                          'NGN': 'Naira NGN',
                        }.entries)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 8),
                            child: ChoiceChip(
                              key: ValueKey('activity-unit-${choice.key}'),
                              showCheckmark: false,
                              visualDensity: VisualDensity.compact,
                              label: Text(choice.value),
                              selected: _unit == choice.key,
                              onSelected: (_) {
                                if (_unit == choice.key) return;
                                setState(() {
                                  _reset();
                                  _unit = choice.key;
                                });
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      TextButton.icon(
                        key: const ValueKey('activity-toggle-more-filters'),
                        onPressed: () =>
                            setState(() => _showFacets = !_showFacets),
                        icon: Icon(
                          _showFacets ? Icons.keyboard_arrow_up : Icons.tune,
                        ),
                        label: Text(
                          _showFacets ? 'Hide filters' : 'More filters',
                        ),
                      ),
                      if (_filtered)
                        const Padding(
                          padding: EdgeInsetsDirectional.only(start: 8),
                          child: Text(
                            'Filtered',
                            semanticsLabel: 'History filters are active',
                          ),
                        ),
                    ],
                  ),
                  if (_showFacets) ...[
                    const SizedBox(height: 8),
                    Text(
                      'Direction',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (final choice in const <String, String>{
                            'all': 'In & out',
                            'incoming': 'Received',
                            'outgoing': 'Spent',
                          }.entries)
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6),
                              child: ChoiceChip(
                                key: ValueKey(
                                  'activity-direction-${choice.key}',
                                ),
                                label: Text(choice.value),
                                selected: _direction == choice.key,
                                onSelected: (_) {
                                  if (_direction != choice.key)
                                    setState(() {
                                      _reset();
                                      _direction = choice.key;
                                    });
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'History period',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (final choice in const <String, String>{
                            'all': 'All dates',
                            '7': 'Last 7 days',
                            '30': 'Last 30 days',
                          }.entries)
                            Padding(
                              padding: const EdgeInsetsDirectional.only(end: 6),
                              child: ChoiceChip(
                                key: ValueKey('activity-history-${choice.key}'),
                                label: Text(choice.value),
                                selected: _period == choice.key,
                                onSelected: (_) {
                                  if (_period != choice.key)
                                    setState(() {
                                      _reset();
                                      _period = choice.key;
                                    });
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextField(
                            key: const ValueKey('activity-reference-input'),
                            controller: _referenceInput,
                            maxLength: 160,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              labelText: 'Exact operation reference',
                              hintText: 'Paste original reference',
                              errorText: _badReference
                                  ? 'Use letters, numbers, _, ., : or -'
                                  : null,
                              border: const OutlineInputBorder(),
                              isDense: true,
                            ),
                            onChanged: (_) {
                              if (_badReference)
                                setState(() => _badReference = false);
                            },
                            onSubmitted: (_) => _submitReference(),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: IconButton.filledTonal(
                            key: const ValueKey('activity-reference-submit'),
                            tooltip: 'Find exact operation',
                            onPressed: _submitReference,
                            icon: const Icon(Icons.search),
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (_filtered)
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton.icon(
                        onPressed: _clearFilters,
                        icon: const Icon(Icons.filter_alt_off),
                        label: const Text('Clear filters'),
                      ),
                    ),
                  const SizedBox(height: 12),
                  _ActivityOverview(
                    owner: owner,
                    days: _days,
                    totals: totals,
                    loading: summary?.isLoading == true,
                    onPeriod: (days) {
                      if (_days != days) setState(() => _days = days);
                    },
                    onRetry: () => ref.invalidate(
                      gbActivitySummaryProvider(summaryRequest!),
                    ),
                  ),
                  const SizedBox(height: 16),
                  if (initial == null && first?.isLoading == true)
                    const ListTile(
                      title: Text('Loading verified activity…'),
                      leading: CircularProgressIndicator(),
                    ),
                  if (initial == null && first?.hasError == true)
                    ListTile(
                      title: const Text('Could not verify wallet activity.'),
                      subtitle: const Text(
                        'Previous balances and funds are unchanged.',
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.refresh),
                        tooltip: 'Retry wallet activity',
                        onPressed: () =>
                            ref.invalidate(gbActivityPageProvider(request!)),
                      ),
                    ),
                  if (initial != null && byId.isEmpty)
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Text(
                            _filtered
                                ? 'No posted activity matches these filters.'
                                : 'No posted MB or NGN activity yet.',
                          ),
                          if (_filtered)
                            TextButton(
                              onPressed: _clearFilters,
                              child: const Text('Clear filters and show all'),
                            ),
                        ],
                      ),
                    ),
                  ..._datedActivityTiles(context, byId.values),
                  if (_pageError && initial != null)
                    ListTile(
                      title: const Text(
                        'Could not load more activity. Previous rows are retained.',
                      ),
                      trailing: IconButton(
                        tooltip: 'Retry loading activity',
                        icon: const Icon(Icons.refresh),
                        onPressed: cursor == null
                            ? null
                            : () => _loadMore(owner, cursor),
                      ),
                    ),
                  if (_loadingMore && initial != null)
                    const LinearProgressIndicator(
                      semanticsLabel: 'Loading more wallet activity',
                    ),
                  if (!_loadingMore &&
                      !_pageError &&
                      cursor != null &&
                      initial != null)
                    Center(
                      child: TextButton.icon(
                        onPressed: () => _loadMore(owner, cursor),
                        icon: const Icon(Icons.expand_more),
                        label: const Text('Load more activity'),
                      ),
                    ),
                  const SizedBox(height: 20),
                  GbWalletHoldsPanel(
                    key: ValueKey(('wallet-holds', owner)),
                    owner: owner,
                  ),
                  const Divider(height: 24),
                  ListTile(
                    key: const ValueKey('wallet-promotion-history-toggle'),
                    title: const Text('Promotions & Share earnings'),
                    subtitle: const Text(
                      'Review reserved, spent and pending MB separately from posted activity.',
                    ),
                    trailing: Icon(
                      _showPromotionHistory
                          ? Icons.expand_less
                          : Icons.expand_more,
                    ),
                    onTap: () => setState(
                      () => _showPromotionHistory = !_showPromotionHistory,
                    ),
                  ),
                  if (_showPromotionHistory && promotion?.isLoading == true)
                    const ListTile(
                      title: Text('Loading private promotion history…'),
                    ),
                  if (promotionJournal != null &&
                      (promotionJournal.campaigns.isNotEmpty ||
                          promotionJournal.earnings.isNotEmpty))
                    GbPromotionActivityPanel(
                      key: ValueKey(
                        'promotion-history-${owner.accountId}-${owner.authorizationEpoch}',
                      ),
                      journal: promotionJournal,
                    ),
                  if (_showPromotionHistory &&
                      promotionJournal != null &&
                      promotionJournal.campaigns.isEmpty &&
                      promotionJournal.earnings.isEmpty)
                    const ListTile(
                      title: Text(
                        'No funded campaigns or referral allocations yet.',
                      ),
                    ),
                  if (_showPromotionHistory && promotion?.hasError == true)
                    ListTile(
                      title: const Text('Promotion history unavailable.'),
                      subtitle: const Text(
                        'Posted MB and NGN activity remains available.',
                      ),
                      trailing: TextButton(
                        onPressed: () =>
                            ref.invalidate(gbPromotionJournalProvider(owner)),
                        child: const Text('Retry promotion history'),
                      ),
                    ),
                ],
              ),
            ),
    );
  }
}

class _HistoryFilter extends StatelessWidget {
  const _HistoryFilter({
    required this.value,
    required this.label,
    required this.choices,
    required this.onChanged,
  });
  final String value, label;
  final Map<String, String> choices;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) => DropdownButtonFormField<String>(
    key: ValueKey('activity-filter-$label-$value'),
    initialValue: value,
    isExpanded: true,
    decoration: InputDecoration(
      filled: true,
      fillColor: context.masanawa.surfaceMuted,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 20),
    items: [
      for (final entry in choices.entries)
        DropdownMenuItem(
          value: entry.key,
          child: Text(
            entry.value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
    ],
    onChanged: (next) {
      if (next != null && next != value) onChanged(next);
    },
  );
}

class _ActivityOverview extends StatelessWidget {
  const _ActivityOverview({
    required this.owner,
    required this.days,
    required this.totals,
    required this.loading,
    required this.onPeriod,
    required this.onRetry,
  });
  final GbWalletOwner owner;
  final int days;
  final GbActivityPeriodSummary? totals;
  final bool loading;
  final ValueChanged<int> onPeriod;
  final VoidCallback onRetry;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context), colors = context.masanawa;
    return Container(
      key: const ValueKey('activity-overview'),
      padding: const EdgeInsets.fromLTRB(14, 6, 14, 4),
      decoration: BoxDecoration(
        color: colors.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.structuralBorder),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Overview',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                PopupMenuButton<int>(
                  tooltip: 'Choose totals period',
                  onSelected: onPeriod,
                  itemBuilder: (_) => [
                    for (final period in const [7, 30])
                      PopupMenuItem(
                        key: ValueKey('activity-period-$period'),
                        value: period,
                        child: Text('Last $period days'),
                      ),
                  ],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'Last $days days',
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: colors.brandStrong,
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded, size: 18),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (totals == null && loading)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: LinearProgressIndicator(
                  semanticsLabel: 'Loading period totals',
                ),
              ),
            if (totals == null && !loading)
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Period totals unavailable. No zero balance is assumed.',
                    ),
                  ),
                  TextButton(
                    onPressed: onRetry,
                    child: const Text('Retry totals'),
                  ),
                ],
              ),
            if (totals != null) ...[
              _OverviewAmounts(
                label: 'Data · MB',
                incoming:
                    'Received: ${totals!.mb.received > 0 ? '+' : ''}${_groupActivity(totals!.mb.received)} MB',
                outgoing:
                    'Used: ${totals!.mb.spent > 0 ? '−' : ''}${_groupActivity(totals!.mb.spent)} MB',
              ),
              const Divider(height: 16),
              _OverviewAmounts(
                label: 'Naira · NGN',
                incoming:
                    'Received: ${totals!.ngn.received > 0 ? '+' : ''}${_ngnActivity(totals!.ngn.received)}',
                outgoing:
                    'Spent: ${totals!.ngn.spent > 0 ? '−' : ''}${_ngnActivity(totals!.ngn.spent)}',
              ),
              Theme(
                data: theme.copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  key: PageStorageKey((
                    'activity-balance-details',
                    owner,
                    days,
                  )),
                  tilePadding: EdgeInsets.zero,
                  minTileHeight: 44,
                  title: Text(
                    'Analysis',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colors.brandStrong,
                    ),
                  ),
                  childrenPadding: const EdgeInsets.only(bottom: 12),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Totals cover all posted activity in this period, independently of history filters. MB and NGN stay separate.',
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'UTC ${totals!.fromAt.toIso8601String()} – ${totals!.toAt.toIso8601String()}',
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 8),
                    Text(_balanceStatus(totals!.reconciliation)),
                    const SizedBox(height: 8),
                    _balanceCheck(context, 'MB', totals!.reconciliation?.mb),
                    const SizedBox(height: 10),
                    _balanceCheck(context, 'NGN', totals!.reconciliation?.ngn),
                    const SizedBox(height: 8),
                    const Text(
                      'This checks internal posted balances, not external bank settlement or data delivery. Account and welcome-credit restrictions still apply.',
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _OverviewAmounts extends StatelessWidget {
  const _OverviewAmounts({
    required this.label,
    required this.incoming,
    required this.outgoing,
  });
  final String label, incoming, outgoing;
  @override
  Widget build(BuildContext context) => Wrap(
    spacing: 12,
    runSpacing: 5,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.labelMedium?.copyWith(color: context.masanawa.textMuted),
      ),
      Text(
        incoming,
        textDirection: TextDirection.ltr,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
      ),
      Text(
        outgoing,
        textDirection: TextDirection.ltr,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    ],
  );
}
