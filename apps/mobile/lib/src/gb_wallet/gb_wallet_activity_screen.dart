import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import '../ui/components/masanawa_section_heading.dart';
import 'gb_wallet_activity.dart';
import 'gb_wallet_summary.dart';
import 'gb_wallet_flow_components.dart';

GbWalletOwner? _ownerFor(WidgetRef ref) {
  final session = ref.watch(sessionProvider);
  return session is SessionSignedIn
      ? (
          accountId: session.user.id,
          authorizationEpoch: ref
              .read(sessionProvider.notifier)
              .authorizationEpoch,
        )
      : null;
}

String _amountText(GbActivityItem row) {
  final sign = row.amount > 0 ? '+' : '−';
  final absolute = row.amount.abs();
  String group(int n) => n.toString().replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (_) => ',',
  );
  if (row.unit == 'NGN')
    return '$sign₦${group(absolute ~/ 100)}.${(absolute % 100).toString().padLeft(2, '0')}';
  return '$sign${group(absolute)} MB';
}

List<Widget> _datedActivitySlivers(Iterable<GbActivityItem> items) {
  final days = <DateTime, List<GbActivityItem>>{};
  for (final item in items) {
    final day = DateUtils.dateOnly(item.createdAt.toLocal());
    days.putIfAbsent(day, () => []).add(item);
  }
  return [
    for (final entry in days.entries) ...[
      SliverPersistentHeader(
        pinned: true,
        delegate: _ActivityDateHeader(entry.key),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => GbActivityTile(
            key: ValueKey('activity-row-${entry.value[index].id}'),
            item: entry.value[index],
          ),
          childCount: entry.value.length,
        ),
      ),
    ],
  ];
}

class _ActivityDateHeader extends SliverPersistentHeaderDelegate {
  const _ActivityDateHeader(this.day);
  final DateTime day;
  @override
  double get minExtent => 44;
  @override
  double get maxExtent => 44;
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) => DecoratedBox(
    decoration: BoxDecoration(
      color: Theme.of(context).scaffoldBackgroundColor,
      border: Border(
        bottom: BorderSide(color: context.masanawa.structuralBorder),
      ),
    ),
    child: Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 4),
        child: Text(
          MaterialLocalizations.of(context).formatMediumDate(day),
          key: ValueKey('activity-date-${day.toIso8601String()}'),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    ),
  );
  @override
  bool shouldRebuild(covariant _ActivityDateHeader oldDelegate) =>
      oldDelegate.day != day;
}

class GbActivityTile extends StatelessWidget {
  const GbActivityTile({super.key, required this.item});
  final GbActivityItem item;
  @override
  Widget build(BuildContext context) {
    final colors = context.masanawa;
    final positive = item.amount > 0;
    final time = TimeOfDay.fromDateTime(
      item.createdAt.toLocal(),
    ).format(context);
    final status = item.status == 'reversed' ? 'Reversed' : 'Posted';
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
      softWrap: true,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: positive ? colors.brandStrong : colors.textPrimary,
        fontWeight: FontWeight.w700,
      ),
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: colors.structuralBorder.withValues(alpha: .55),
          ),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          key: ValueKey('activity-${item.id}'),
          onTap: () =>
              context.push('/wallet/activity/${Uri.encodeComponent(item.id)}'),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final stacked =
                    constraints.maxWidth < 300 ||
                    MediaQuery.textScalerOf(context).scale(1) > 1.3;
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: colors.brand.withValues(alpha: .09),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(icon, color: colors.brand, size: 19),
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
                            time,
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: colors.textMuted),
                          ),
                          if (stacked) ...[
                            const SizedBox(height: 8),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  amount,
                                  const SizedBox(height: 4),
                                  badge,
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    if (!stacked) ...[
                      const SizedBox(width: 12),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: constraints.maxWidth * .46,
                        ),
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
      ),
    );
  }
}

/// Small authoritative preview in Wallet; no invented empty activity state.
class GbWalletActivitySection extends ConsumerStatefulWidget {
  const GbWalletActivitySection({super.key, this.previewCount = 5});
  final int previewCount;

  @override
  ConsumerState<GbWalletActivitySection> createState() =>
      _GbWalletActivitySectionState();
}

class _GbWalletActivitySectionState
    extends ConsumerState<GbWalletActivitySection> {
  GbWalletOwner? _lastOwner;
  GbActivityPage? _lastVerified;

  @override
  Widget build(BuildContext context) {
    final owner = _ownerFor(ref);
    final page = owner == null
        ? null
        : ref.watch(
            gbActivityPageProvider((
              owner: owner,
              limit: 5,
              unit: 'all',
              filters: gbActivityAllFilters,
            )),
          );
    if (owner != _lastOwner) {
      _lastOwner = owner;
      _lastVerified = null;
    }
    final denied =
        page?.error is DioException &&
        const {
          401,
          403,
          410,
        }.contains((page!.error as DioException).response?.statusCode);
    if (denied) _lastVerified = null;
    final fresh = denied ? null : page?.valueOrNull;
    if (fresh != null) _lastVerified = fresh;
    final visible = fresh ?? _lastVerified;
    final offline =
        page?.hasError == true || (page?.isLoading == true && visible != null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MasanawaSectionHeading(
          'Recent transactions',
          trailing: TextButton.icon(
            onPressed: owner == null
                ? null
                : () => context.push('/wallet/activity'),
            label: const Text('See all'),
            icon: const Icon(Icons.chevron_right),
          ),
        ),
        const SizedBox(height: 8),
        if (owner == null)
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Sign in to see wallet activity.'),
          )
        else if (page!.isLoading && visible == null)
          const ListTile(
            leading: CircularProgressIndicator(),
            title: Text('Loading wallet activity…'),
          )
        else if (visible?.items.isEmpty == true)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 22),
            child: Center(child: Text('No posted MB or NGN activity yet.')),
          )
        else
          for (final item
              in visible?.items.take(widget.previewCount) ??
                  const <GbActivityItem>[])
            GbActivityTile(
              key: ValueKey('wallet-preview-${item.id}'),
              item: item,
            ),
        if (owner != null && (offline || visible == null))
          Center(
            child: Column(
              children: [
                const Text(
                  'Check your connection',
                  textAlign: TextAlign.center,
                ),
                TextButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  onPressed: () => ref.invalidate(
                    gbActivityPageProvider((
                      owner: owner,
                      limit: 5,
                      unit: 'all',
                      filters: gbActivityAllFilters,
                    )),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Same-account paged journal, explicitly separate from detailed receipts.
class GbWalletActivityScreen extends ConsumerStatefulWidget {
  const GbWalletActivityScreen({super.key});
  @override
  ConsumerState<GbWalletActivityScreen> createState() =>
      _GbWalletActivityScreenState();
}

class _GbWalletActivityScreenState
    extends ConsumerState<GbWalletActivityScreen> {
  GbWalletOwner? _owner;
  GbActivityPage? _lastVerifiedPage;
  final _more = <GbActivityItem>[];
  final _seen = <String>{};
  String? _next;
  bool _loadedMore = false, _loadingMore = false, _pageError = false;
  CancelToken? _cancel;
  int _request = 0;
  String _unit = 'all';
  String _purpose = 'all',
      _status = 'all',
      _direction = 'all',
      _period = 'all',
      _reference = '';
  bool _badReference = false, _exporting = false;
  final _referenceInput = TextEditingController();

  GbActivityFilters get _facets => (
    purpose: _purpose,
    status: _status,
    direction: _direction,
    days: _period,
    reference: _reference,
  );
  bool get _filtered =>
      _unit != 'all' ||
      _purpose != 'all' ||
      _status != 'all' ||
      _direction != 'all' ||
      _period != 'all' ||
      _reference.isNotEmpty;

  void _clearFilters() {
    setState(() {
      _reset();
      _unit = 'all';
      _purpose = 'all';
      _status = 'all';
      _direction = 'all';
      _period = 'all';
      _reference = '';
      _badReference = false;
      _referenceInput.clear();
    });
  }

  void _submitReference() {
    final text = _referenceInput.text.trim();
    if (!validGbActivityReference(text)) {
      setState(() => _badReference = true);
      return;
    }
    if (text == _reference) return;
    setState(() {
      _reset();
      _badReference = false;
      _reference = text;
    });
  }

  void _reset() {
    ++_request;
    _cancel?.cancel();
    _cancel = null;
    _more.clear();
    _seen.clear();
    _next = null;
    _lastVerifiedPage = null;
    _loadedMore = _loadingMore = _pageError = false;
  }

  @override
  void dispose() {
    _reset();
    _referenceInput.dispose();
    super.dispose();
  }

  bool _same(GbWalletOwner owner, int ticket) {
    final session = ref.read(sessionProvider);
    return mounted &&
        ticket == _request &&
        _owner == owner &&
        session is SessionSignedIn &&
        session.user.id == owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner.authorizationEpoch;
  }

  Future<void> _loadMore(GbWalletOwner owner, String cursor) async {
    if (_loadingMore || _seen.contains(cursor)) return;
    final ticket = ++_request;
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() {
      _loadingMore = true;
      _pageError = false;
    });
    try {
      final page = await ref
          .read(gbActivityTransportProvider)
          .page(
            limit: 20,
            cursor: cursor,
            unit: _unit,
            filters: _facets,
            cancellation: cancel,
          );
      if (!_same(owner, ticket)) return;
      setState(() {
        _loadingMore = false;
        _loadedMore = true;
        _seen.add(cursor);
        _more.addAll(page.items);
        _next =
            page.items.isEmpty ||
                page.nextCursor == cursor ||
                (page.nextCursor != null && _seen.contains(page.nextCursor))
            ? null
            : page.nextCursor;
      });
    } catch (_) {
      if (!_same(owner, ticket)) return;
      setState(() {
        _loadingMore = false;
        _pageError = true;
      });
    }
  }

  /// Export the complete selected result, not merely the visible first page.
  /// A bounded export fails closed if a result is too large or ownership changes.
  Future<void> _export(GbWalletOwner owner) async {
    if (_exporting) return;
    setState(() => _exporting = true);
    File? temporary;
    bool sameOwner() {
      final current = ref.read(sessionProvider);
      return mounted &&
          _owner == owner &&
          current is SessionSignedIn &&
          current.user.id == owner.accountId &&
          ref.read(sessionProvider.notifier).authorizationEpoch ==
              owner.authorizationEpoch;
    }

    String cell(String input) {
      final safe = input.replaceAll(RegExp(r'[\r\n]'), ' ');
      final guarded = RegExp(r'^[=+@\-]').hasMatch(safe) ? "'$safe" : safe;
      return '"${guarded.replaceAll('"', '""')}"';
    }

    try {
      final rows = <GbActivityItem>[];
      final cursors = <String>{};
      String? cursor;
      do {
        if (!sameOwner()) return;
        final page = await ref
            .read(gbActivityTransportProvider)
            .page(limit: 30, cursor: cursor, unit: _unit, filters: _facets);
        rows.addAll(page.items);
        if (rows.length > 5000) throw StateError('Export exceeds 5000 rows');
        cursor = page.nextCursor;
        if (cursor != null && !cursors.add(cursor)) {
          throw StateError('Repeated transaction cursor');
        }
      } while (cursor != null);
      if (!sameOwner()) return;
      final csv = StringBuffer(
        'Timestamp UTC,Transaction,Amount,Unit,Status,Reference\r\n',
      );
      for (final row in rows) {
        csv.writeln(
          [
            row.createdAt.toUtc().toIso8601String(),
            row.title,
            row.amount.toString(),
            row.unit,
            row.status,
            row.operationId,
          ].map(cell).join(','),
        );
      }
      final dir = await getTemporaryDirectory();
      temporary = File(
        '${dir.path}/masanawa-transactions-${DateTime.now().microsecondsSinceEpoch}.csv',
      );
      await temporary.writeAsString(csv.toString(), flush: true);
      if (!sameOwner()) return;
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(temporary.path, mimeType: 'text/csv')],
          subject: 'Masanawa transactions',
        ),
      );
    } catch (_) {
      if (sameOwner())
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Could not export transactions. Check your connection and retry.',
            ),
          ),
        );
    } finally {
      if (temporary != null) {
        try {
          await temporary.delete();
        } on FileSystemException catch (_) {}
      }
      if (mounted) setState(() => _exporting = false);
    }
  }

  Widget _sheetChoices(
    String heading,
    String value,
    Map<String, String> choices,
    ValueChanged<String> onChanged,
  ) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: Text(heading, style: Theme.of(context).textTheme.labelLarge),
      ),
      Wrap(
        spacing: 6,
        runSpacing: 5,
        children: [
          for (final choice in choices.entries)
            ChoiceChip(
              key: ValueKey(switch (heading) {
                'Balance' => 'activity-unit-${choice.key}',
                'Direction' => 'activity-direction-${choice.key}',
                _ => 'activity-history-${choice.key}',
              }),
              label: Text(choice.value),
              selected: value == choice.key,
              onSelected: (_) {
                if (value != choice.key) onChanged(choice.key);
              },
            ),
        ],
      ),
    ],
  );

  Future<void> _openFilterSheet() => showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (sheetContext) => StatefulBuilder(
      builder: (sheetContext, refreshSheet) {
        void change(VoidCallback update) {
          setState(() {
            _reset();
            update();
          });
          refreshSheet(() {});
        }

        return GbWalletReviewSheet(
          title: 'Filter transactions',
          onClose: () => Navigator.pop(sheetContext),
          children: [
            _sheetChoices('Balance', _unit, const {
              'all': 'All',
              'MB': 'Data MB',
              'NGN': 'Naira NGN',
            }, (v) => change(() => _unit = v)),
            const SizedBox(height: 16),
            _sheetChoices('Direction', _direction, const {
              'all': 'In & out',
              'incoming': 'Received',
              'outgoing': 'Spent',
            }, (v) => change(() => _direction = v)),
            const SizedBox(height: 16),
            _sheetChoices('History period', _period, const {
              'all': 'All dates',
              '7': 'Last 7 days',
              '30': 'Last 30 days',
            }, (v) => change(() => _period = v)),
            const SizedBox(height: 16),
            TextField(
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
                suffixIcon: IconButton.filledTonal(
                  key: const ValueKey('activity-reference-submit'),
                  tooltip: 'Find exact operation',
                  onPressed: () {
                    _submitReference();
                    refreshSheet(() {});
                  },
                  icon: const Icon(Icons.search_rounded),
                ),
              ),
              onChanged: (_) {
                if (_badReference) {
                  setState(() => _badReference = false);
                  refreshSheet(() {});
                }
              },
              onSubmitted: (_) {
                _submitReference();
                refreshSheet(() {});
              },
            ),
            if (_filtered)
              TextButton.icon(
                onPressed: () {
                  _clearFilters();
                  refreshSheet(() {});
                },
                icon: const Icon(Icons.filter_alt_off_rounded),
                label: const Text('Clear filters'),
              ),
          ],
          action: FilledButton(
            onPressed: () {
              if (_referenceInput.text.trim() != _reference) _submitReference();
              refreshSheet(() {});
              if (!_badReference) Navigator.pop(sheetContext);
            },
            child: const Text('Show transactions'),
          ),
        );
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    final owner = _ownerFor(ref);
    if (owner != _owner) {
      _reset();
      _owner = owner;
      _unit = 'all';
      _purpose = 'all';
      _status = 'all';
      _direction = 'all';
      _period = 'all';
      _reference = '';
      _badReference = false;
      _referenceInput.clear();
    }
    final request = owner == null
        ? null
        : (owner: owner, limit: 20, unit: _unit, filters: _facets);
    final first = request == null
        ? null
        : ref.watch(gbActivityPageProvider(request));
    final failure = first?.error;
    final authorizationRejected =
        failure is DioException &&
        const {401, 403, 410}.contains(failure.response?.statusCode);
    if (authorizationRejected) {
      _lastVerifiedPage =
          null; // Invalid authorization cannot display old rows.
      _more.clear();
      _next = null;
    }
    // Riverpod may retain the previous value while a refresh is loading or
    // after it fails. Render those verified rows, but never call them fresh:
    // the centered offline notice must remain visible alongside the list.
    final currentPage =
        authorizationRejected ||
            first?.isLoading == true ||
            first?.hasError == true
        ? null
        : first?.valueOrNull;
    if (currentPage != null) _lastVerifiedPage = currentPage;
    final initial = currentPage ?? _lastVerifiedPage;
    final stale = currentPage == null && initial != null;
    final entries = <GbActivityItem>[
      ...?initial?.items,
      if (initial != null) ..._more,
    ];
    final byId = <String, GbActivityItem>{};
    for (final entry in entries) byId.putIfAbsent(entry.id, () => entry);
    final cursor = _loadedMore ? _next : initial?.nextCursor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        actions: [
          TextButton.icon(
            key: const ValueKey('activity-export'),
            onPressed: _exporting || owner == null
                ? null
                : () => _export(owner),
            icon: _exporting
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.ios_share_rounded),
            label: const Text('Export'),
          ),
        ],
      ),
      body: owner == null
          ? const Center(child: Text('Sign in to view wallet activity.'))
          : RefreshIndicator(
              onRefresh: () async {
                final previous = _lastVerifiedPage;
                setState(() {
                  _reset();
                  _lastVerifiedPage = previous;
                });
                ref.invalidate(gbActivityPageProvider(request!));
                try {
                  await ref.read(gbActivityPageProvider(request).future);
                } catch (_) {
                  // Verified same-account rows remain available with an offline notice.
                }
              },
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  if (notification.metrics.extentAfter < 320 &&
                      initial != null &&
                      cursor != null &&
                      !_loadingMore &&
                      !_pageError) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted &&
                          _owner == owner &&
                          !_loadingMore &&
                          !_pageError &&
                          !_seen.contains(cursor)) {
                        _loadMore(owner, cursor);
                      }
                    });
                  }
                  return false;
                },
                child: CustomScrollView(
                  key: const PageStorageKey('gb-wallet-activity-all'),
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            LayoutBuilder(
                              builder: (context, size) {
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
                                  onChanged: (v) => setState(() {
                                    _reset();
                                    _purpose = v;
                                  }),
                                );
                                final status = _HistoryFilter(
                                  value: _status,
                                  label: 'Status',
                                  choices: const {
                                    'all': 'All statuses',
                                    'completed': 'Successful',
                                    'reversed': 'Reversed',
                                  },
                                  onChanged: (v) => setState(() {
                                    _reset();
                                    _status = v;
                                  }),
                                );
                                final narrow =
                                    size.maxWidth < 300 ||
                                    MediaQuery.textScalerOf(context).scale(1) >
                                        1.4;
                                return narrow
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
                                          const SizedBox(width: 8),
                                          Expanded(child: status),
                                        ],
                                      );
                              },
                            ),
                            const SizedBox(height: 8),
                            Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: OutlinedButton.icon(
                                key: const ValueKey(
                                  'activity-toggle-more-filters',
                                ),
                                onPressed: _openFilterSheet,
                                icon: const Icon(Icons.tune_rounded),
                                label: Text(
                                  _filtered ? 'Filter · Active' : 'Filter',
                                ),
                              ),
                            ),
                            if (_filtered)
                              Wrap(
                                spacing: 6,
                                runSpacing: 4,
                                children: [
                                  if (_unit != 'all')
                                    Chip(label: Text('Balance: $_unit')),
                                  if (_direction != 'all')
                                    Chip(
                                      label: Text(
                                        _direction == 'incoming'
                                            ? 'Received'
                                            : 'Spent',
                                      ),
                                    ),
                                  if (_period != 'all')
                                    Chip(
                                      label: Text(
                                        _period == '7'
                                            ? 'Last 7 days'
                                            : 'Last 30 days',
                                      ),
                                    ),
                                  if (_reference.isNotEmpty)
                                    Chip(
                                      label: Text(
                                        'Ref: $_reference',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  TextButton.icon(
                                    onPressed: _clearFilters,
                                    icon: const Icon(
                                      Icons.close_rounded,
                                      size: 16,
                                    ),
                                    label: const Text('Clear filters'),
                                  ),
                                ],
                              ),
                            if (stale ||
                                (initial == null && first?.hasError == true))
                              GbWalletInlineNotice(
                                message: stale
                                    ? 'Showing previously verified transactions. Check your connection.'
                                    : 'Transactions could not be loaded.',
                                actionLabel: 'Retry',
                                onAction: () => ref.invalidate(
                                  gbActivityPageProvider(request!),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (initial == null && first?.isLoading == true)
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor:
                                        context.masanawa.fieldSurface,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 130,
                                          color: context.masanawa.fieldSurface,
                                        ),
                                        const SizedBox(height: 8),
                                        Container(
                                          height: 10,
                                          width: 90,
                                          color: context.masanawa.fieldSurface,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 14,
                                    width: 84,
                                    color: context.masanawa.fieldSurface,
                                  ),
                                ],
                              ),
                            ),
                            childCount: 5,
                          ),
                        ),
                      ),
                    if (initial != null && byId.isEmpty)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 42,
                            horizontal: 24,
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.receipt_long_outlined,
                                size: 38,
                                color: context.masanawa.textMuted,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                _filtered
                                    ? 'No posted activity matches these filters.'
                                    : 'No posted MB or NGN activity yet.',
                                textAlign: TextAlign.center,
                              ),
                              if (_filtered)
                                TextButton(
                                  onPressed: _clearFilters,
                                  child: const Text(
                                    'Clear filters and show all',
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ..._datedActivitySlivers(byId.values),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
                        child: Column(
                          children: [
                            if (_pageError && initial != null)
                              GbWalletInlineNotice(
                                message:
                                    'Could not load more activity. Previous rows are retained.',
                                actionLabel: 'Retry',
                                onAction: cursor == null
                                    ? null
                                    : () => _loadMore(owner, cursor),
                              ),
                            if (_loadingMore && initial != null)
                              const LinearProgressIndicator(
                                semanticsLabel: 'Loading more wallet activity',
                              ),
                            if (!_loadingMore &&
                                !_pageError &&
                                cursor != null &&
                                initial != null)
                              TextButton.icon(
                                onPressed: () => _loadMore(owner, cursor),
                                icon: const Icon(Icons.expand_more_rounded),
                                label: const Text('Load more activity'),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
      fillColor: context.masanawa.fieldSurface,
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
