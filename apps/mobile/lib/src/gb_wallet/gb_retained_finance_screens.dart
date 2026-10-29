import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_retained_finance_api.dart';
import 'gb_wallet_summary.dart';

String _t(BuildContext c, String en, String ha) =>
    Localizations.localeOf(c).languageCode == 'ha' ? ha : en;
String _categoryLabel(BuildContext c, String category) => switch (category) {
  'amount' => _t(c, 'Amount', 'Adadi'),
  'status' => _t(c, 'Status', 'Matsayi'),
  'missing' => _t(c, 'Missing outcome', 'Sakamakon da ba a gani ba'),
  _ => _t(c, 'Other', 'Wani dalili'),
};
String _caseState(BuildContext c, String state) => switch (state) {
  'open' => _t(c, 'Submitted', 'An aika'),
  'acknowledged' => _t(c, 'Under review', 'Ana dubawa'),
  'awaiting_provider' => _t(c, 'Awaiting provider', 'Jiran mai bayarwa'),
  _ => _t(c, 'Closed', 'An rufe'),
};
String _legacyTitle(BuildContext c, String kind) => switch (kind) {
  'reserve' => _t(c, 'MB reserved', 'An riƙe MB'),
  'spend' => _t(c, 'MB spent', 'An kashe MB'),
  'release' => _t(
    c,
    'Unused MB released',
    'An sake MB da ba a yi amfani da shi ba',
  ),
  _ => _t(c, 'Historical allocation · pending', 'Kason tarihi · ana jira'),
};
String _halfLabel(BuildContext c, int? amount) => amount == null
    ? _t(c, 'Amount unavailable', 'Ba a samun adadin')
    : financeHalfMb(amount);
String _dateLabel(BuildContext c, DateTime at) {
  final local = at.toLocal(), l = MaterialLocalizations.of(c);
  return '${l.formatMediumDate(local)} · ${l.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
}

abstract class _OwnedState<T extends ConsumerStatefulWidget>
    extends ConsumerState<T> {
  GbWalletOwner? owner;
  late final GbRetainedFinanceApi api;
  bool get current {
    if (!mounted || owner == null) return false;
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == owner!.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch ==
            owner!.authorizationEpoch;
  }

  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    if (session is SessionSignedIn) {
      owner = (
        accountId: session.user.id,
        authorizationEpoch: ref
            .read(sessionProvider.notifier)
            .authorizationEpoch,
      );
    }
    api = GbRetainedFinanceApi(ref.read(apiClientProvider).dio, () => current);
  }

  Widget guarded(Widget child) {
    ref.watch(sessionProvider);
    return current
        ? child
        : Center(
            child: Text(
              _t(
                context,
                'Session changed. Reopen this screen.',
                'An sauya zaman shiga. Sake buɗe wannan shafin.',
              ),
            ),
          );
  }

  bool accessDenied(Object error) =>
      error is DioException && [401, 403].contains(error.response?.statusCode);
  String failure(Object error) {
    if (error is DioException) {
      final data = error.response?.data;
      if (data is Map &&
          data['error'] is Map &&
          (data['error'] as Map)['code'] == 'history_group_changed') {
        return _t(
          context,
          'This group changed. Return to history and refresh before opening it again.',
          'Wannan rukuni ya sauya. Koma tarihi ka sabunta kafin sake buɗewa.',
        );
      }
      if (data is Map &&
          data['error'] is Map &&
          (data['error'] as Map)['code'] == 'fresh_auth_required') {
        return _t(
          context,
          'Sign in again before updating wallet inquiries.',
          'Sake shiga kafin sabunta tambayoyin walat.',
        );
      }
      if ([401, 403].contains(error.response?.statusCode)) {
        return _t(
          context,
          'Permission required. Reopen after signing in.',
          'Ana buƙatar izini. Sake buɗewa bayan shiga.',
        );
      }
    }
    return _t(
      context,
      'Could not confirm this request. Refresh or retry.',
      'Ba a tabbatar da buƙatar ba. Sabunta ko sake gwadawa.',
    );
  }
}

class GbLegacyFinanceHistoryScreen extends ConsumerStatefulWidget {
  const GbLegacyFinanceHistoryScreen({super.key});
  @override
  ConsumerState<GbLegacyFinanceHistoryScreen> createState() => _HistoryState();
}

class _HistoryState extends _OwnedState<GbLegacyFinanceHistoryScreen> {
  final rows = <LegacyFinanceGroup>[];
  final search = TextEditingController();
  String kind = 'all', campaign = '';
  String? cursor, error;
  bool busy = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) load();
    });
  }

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  void applyReference() {
    if (busy) return;
    final value = search.text.trim();
    if (value.isNotEmpty &&
        !RegExp(
          r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-8][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$',
        ).hasMatch(value)) {
      setState(
        () => error = _t(
          context,
          'Enter an exact campaign reference.',
          'Shigar da madaidaicin lambar tallace-tallace.',
        ),
      );
      return;
    }
    setState(() => campaign = value);
    load();
  }

  Future<void> load({bool more = false}) async {
    if (!current || busy || more && cursor == null) return;
    final after = more ? cursor : null;
    setState(() {
      busy = true;
      error = null;
      if (!more) {
        rows.clear();
        cursor = null;
      }
    });
    try {
      final page = await api.history(
        kind,
        cursor: after,
        campaignId: campaign.isEmpty ? null : campaign,
      );
      if (!current) return;
      setState(() {
        final ids = rows.map((r) => r.id).toSet();
        rows.addAll(page.items.where((r) => ids.add(r.id)));
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null
            : page.nextCursor;
      });
    } catch (e) {
      if (current) {
        setState(() {
          error = failure(e);
          if (accessDenied(e)) {
            rows.clear();
            cursor = null;
          }
        });
      }
    } finally {
      if (current) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        _t(context, 'Historical promotion records', 'Tarihin tallace-tallace'),
      ),
    ),
    body: guarded(
      ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            _t(
              context,
              'Paid promotions and sharing rewards are retired. These records preserve past holds, spending, releases and pending allocations.',
              'An daina tallace-tallace da ladan rabawa. Waɗannan bayanai tarihin riƙewa, kashewa, sakarwa da kason da ke jira ne.',
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: [
              for (final value in [
                'all',
                'reserve',
                'spend',
                'release',
                'pending',
              ])
                ChoiceChip(
                  selected: kind == value,
                  label: Text(switch (value) {
                    'all' => _t(context, 'All', 'Duka'),
                    'reserve' => _t(context, 'Reserved', 'An riƙe'),
                    'spend' => _t(context, 'Spent', 'An kashe'),
                    'release' => _t(context, 'Released', 'An sake'),
                    _ => _t(context, 'Pending', 'Ana jira'),
                  }),
                  onSelected: busy
                      ? null
                      : (_) {
                          setState(() => kind = value);
                          load();
                        },
                ),
            ],
          ),
          TextField(
            key: const Key('history-campaign-reference'),
            controller: search,
            enabled: !busy,
            decoration: InputDecoration(
              labelText: _t(
                context,
                'Campaign reference',
                'Lambar tallace-tallace',
              ),
            ),
            onSubmitted: (_) => applyReference(),
          ),
          Wrap(
            spacing: 8,
            children: [
              TextButton(
                onPressed: busy ? null : applyReference,
                child: Text(_t(context, 'Search', 'Bincika')),
              ),
              if (campaign.isNotEmpty)
                TextButton(
                  onPressed: busy
                      ? null
                      : () {
                          search.clear();
                          setState(() => campaign = '');
                          load();
                        },
                  child: Text(_t(context, 'Clear', 'Goge')),
                ),
            ],
          ),
          TextButton(
            onPressed: busy ? null : () => load(),
            child: Text(_t(context, 'Refresh', 'Sabunta')),
          ),
          if (busy) const LinearProgressIndicator(),
          if (error != null) Text(error!),
          if (!busy && error == null && rows.isEmpty)
            Text(
              _t(
                context,
                'No matching historical entries.',
                'Babu tarihin da ya dace.',
              ),
            ),
          for (final row in rows)
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                title: Text(
                  '${_legacyTitle(context, row.kind)} · ${_halfLabel(context, row.halfMb)}',
                ),
                subtitle: Text(
                  '${row.day} UTC · ${row.eventCount} ${_t(context, 'entries', 'bayanai')}\n${row.campaignId}',
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GbLegacyFinanceReceiptScreen(group: row),
                  ),
                ),
              ),
            ),
          if (cursor != null)
            TextButton(
              onPressed: busy ? null : () => load(more: true),
              child: Text(_t(context, 'Load more', 'Ƙara nunawa')),
            ),
        ],
      ),
    ),
  );
}

class GbLegacyFinanceReceiptScreen extends ConsumerStatefulWidget {
  const GbLegacyFinanceReceiptScreen({super.key, required this.group});
  final LegacyFinanceGroup group;
  @override
  ConsumerState<GbLegacyFinanceReceiptScreen> createState() =>
      _LegacyReceiptState();
}

class _LegacyReceiptState extends _OwnedState<GbLegacyFinanceReceiptScreen> {
  final rows = <LegacyFinanceEvent>[];
  String? cursor, error;
  bool busy = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) load();
    });
  }

  Future<void> load({bool more = false}) async {
    if (!current || busy || more && cursor == null) return;
    final after = more ? cursor : null;
    setState(() {
      busy = true;
      error = null;
      if (!more) {
        rows.clear();
        cursor = null;
      }
    });
    try {
      final page = await api.group(widget.group, cursor: after);
      if (!current) return;
      setState(() {
        final ids = rows.map((r) => r.key).toSet();
        rows.addAll(page.items.where((r) => ids.add(r.key)));
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null
            : page.nextCursor;
      });
    } catch (e) {
      if (current) {
        setState(() {
          error = failure(e);
          if (accessDenied(e)) {
            rows.clear();
            cursor = null;
          }
        });
      }
    } finally {
      if (current) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final g = widget.group;
    return Scaffold(
      appBar: AppBar(
        title: Text(_t(context, 'Historical receipt', 'Rasitin tarihi')),
      ),
      body: guarded(
        ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              _legacyTitle(context, g.kind),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('${g.day} UTC · ${_halfLabel(context, g.halfMb)}'),
            SelectableText(
              '${_t(context, 'Campaign', 'Tallace-tallace')}: ${g.campaignId}',
            ),
            Text(
              _t(
                context,
                'Reserved and released MB are holds, not income. Pending allocations are not released or redeemable.',
                'MB da aka riƙe ko aka sake ba kuɗin shiga ba ne. Kason da ke jira ba a sake shi ko fansa ba.',
              ),
            ),
            Text(
              '${rows.length} / ${g.eventCount} ${_t(context, 'receipt entries loaded', 'bayanan rasiti da aka ɗauko')}',
            ),
            if (busy) const LinearProgressIndicator(),
            if (error != null) Text(error!),
            TextButton(
              onPressed: busy ? null : () => load(),
              child: Text(_t(context, 'Refresh receipt', 'Sabunta rasiti')),
            ),
            for (final row in rows)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_halfLabel(context, row.halfMb)),
                      Text(_dateLabel(context, row.at)),
                      Text(
                        'UTC: ${row.at.toUtc().toIso8601String()}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SelectableText(row.reference),
                    ],
                  ),
                ),
              ),
            if (cursor != null)
              TextButton(
                onPressed: busy ? null : () => load(more: true),
                child: Text(_t(context, 'Load more', 'Ƙara nunawa')),
              ),
            if (rows.isNotEmpty)
              GbWalletInquiryButton(
                targetKind: 'legacy_group',
                reference: g.id,
              ),
          ],
        ),
      ),
    );
  }
}

/// Account keyed so an old pending inquiry cannot bind to a replacement login.
class GbWalletInquiryButton extends ConsumerWidget {
  const GbWalletInquiryButton({
    super.key,
    required this.targetKind,
    required this.reference,
  });
  final String targetKind, reference;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) return const SizedBox.shrink();
    return _InquiryButton(
      key: ValueKey((
        session.user.id,
        ref.read(sessionProvider.notifier).authorizationEpoch,
        targetKind,
        reference,
      )),
      targetKind: targetKind,
      reference: reference,
    );
  }
}

class _InquiryButton extends ConsumerStatefulWidget {
  const _InquiryButton({
    super.key,
    required this.targetKind,
    required this.reference,
  });
  final String targetKind, reference;
  @override
  ConsumerState<_InquiryButton> createState() => _InquiryButtonState();
}

class _InquiryButtonState extends _OwnedState<_InquiryButton> {
  bool busy = false;
  Future<void> submit() async {
    if (!current || busy) return;
    final category = await showDialog<String>(
      context: context,
      builder: (ctx) => SimpleDialog(
        title: Text(
          _t(ctx, 'Ask about this entry', 'Tambaya game da wannan bayanin'),
        ),
        children: [
          for (final category in const {
            'amount': 'Amount',
            'status': 'Status',
            'missing': 'Missing outcome',
            'other': 'Other',
          }.entries)
            SimpleDialogOption(
              onPressed: () => Navigator.pop(ctx, category.key),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(_categoryLabel(ctx, category.key)),
              ),
            ),
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(_t(ctx, 'Cancel', 'Soke')),
          ),
        ],
      ),
    );
    if (!current || category == null) return;
    setState(() => busy = true);
    try {
      final value = await api.submit(
        widget.targetKind,
        widget.reference,
        category,
      );
      if (!mounted || !current) return;
      final messenger = ScaffoldMessenger.of(context);
      messenger.hideCurrentSnackBar();
      messenger.showSnackBar(
        SnackBar(
          content: Text(
            '${_t(context, 'Inquiry received', 'An karɓi tambaya')} · ${value.id}',
          ),
          action: SnackBarAction(
            label: _t(context, 'View', 'Duba'),
            onPressed: () {
              if (current) {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GbWalletInquiriesScreen(caseId: value.id),
                  ),
                );
              }
            },
          ),
        ),
      );
    } catch (e) {
      if (mounted && current) {
        final messenger = ScaffoldMessenger.of(context);
        messenger.hideCurrentSnackBar();
        messenger.showSnackBar(SnackBar(content: Text(failure(e))));
      }
    } finally {
      if (current) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(sessionProvider);
    return !current
        ? const SizedBox.shrink()
        : OutlinedButton.icon(
            onPressed: busy ? null : submit,
            icon: const Icon(Icons.help_outline),
            label: Text(
              _t(
                context,
                'Ask about this entry',
                'Tambaya game da wannan bayanin',
              ),
            ),
          );
  }
}

class GbWalletInquiriesScreen extends ConsumerStatefulWidget {
  const GbWalletInquiriesScreen({super.key, this.admin = false, this.caseId});
  final bool admin;
  final String? caseId;
  @override
  ConsumerState<GbWalletInquiriesScreen> createState() => _InquiriesState();
}

class _InquiriesState extends _OwnedState<GbWalletInquiriesScreen> {
  final rows = <WalletInquiry>[];
  final pending = <String>{};
  String state = 'open';
  String? cursor, error;
  bool busy = false, denied = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) load();
    });
  }

  Future<void> load({bool more = false}) async {
    if (!current || busy || more && cursor == null) return;
    final after = more ? cursor : null;
    setState(() {
      busy = true;
      error = null;
      if (!more) {
        rows.clear();
        cursor = null;
      }
    });
    try {
      final page = widget.caseId == null
          ? await api.inquiries(
              cursor: after,
              admin: widget.admin,
              state: state,
            )
          : FinancePage([await api.inquiry(widget.caseId!)], null);
      if (!current) return;
      setState(() {
        final ids = rows.map((r) => r.id).toSet();
        rows.addAll(page.items.where((r) => ids.add(r.id)));
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null
            : page.nextCursor;
        denied = false;
      });
    } catch (e) {
      if (current) {
        setState(() {
          error = failure(e);
          denied =
              e is DioException && [401, 403].contains(e.response?.statusCode);
          if (denied) rows.clear();
        });
      }
    } finally {
      if (current) setState(() => busy = false);
    }
  }

  Future<void> review(WalletInquiry row, String next) async {
    if (!current || busy || pending.isNotEmpty) return;
    setState(() => pending.add(row.id));
    try {
      await api.review(row, next);
      if (current) await load();
    } catch (e) {
      if (current) {
        setState(() {
          error = failure(e);
          if (accessDenied(e)) {
            denied = true;
            rows.clear();
            cursor = null;
          }
        });
      }
    } finally {
      if (current) setState(() => pending.remove(row.id));
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        _t(
          context,
          widget.admin ? 'Review wallet inquiries' : 'Wallet inquiries',
          widget.admin ? 'Duba tambayoyin walat' : 'Tambayoyin walat',
        ),
      ),
    ),
    body: guarded(
      ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            _t(
              context,
              'Inquiry status is separate from transaction status. Submitting or reviewing an inquiry never changes your balance.',
              'Matsayin tambaya daban yake da na ciniki. Aika ko duba tambaya ba ya sauya ma’auni.',
            ),
          ),
          if (widget.admin)
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                for (final filter in [
                  'open',
                  'acknowledged',
                  'awaiting_provider',
                  'closed',
                ])
                  ChoiceChip(
                    selected: state == filter,
                    label: Text(_caseState(context, filter)),
                    onSelected: busy || pending.isNotEmpty
                        ? null
                        : (_) {
                            setState(() => state = filter);
                            load();
                          },
                  ),
              ],
            ),
          TextButton(
            onPressed: busy || pending.isNotEmpty ? null : () => load(),
            child: Text(_t(context, 'Refresh', 'Sabunta')),
          ),
          if (busy) const LinearProgressIndicator(),
          if (error != null) Text(error!),
          if (!busy && error == null && rows.isEmpty)
            Text(_t(context, 'No inquiries found.', 'Babu tambaya.')),
          if (!denied)
            for (final row in rows)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${_caseState(context, row.state)} · ${_categoryLabel(context, row.category)}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(_dateLabel(context, row.createdAt)),
                      SelectableText(
                        '${_t(context, 'Inquiry', 'Tambaya')}: ${row.id}',
                      ),
                      if (row.targetKind != 'legacy_group')
                        SelectableText(row.reference),
                      if (row.targetKind == 'legacy_group')
                        Text(
                          _t(
                            context,
                            'Original historical group retained with this inquiry.',
                            'An adana rukunin tarihin asali tare da wannan tambaya.',
                          ),
                        ),
                      if (row.targetKind == 'activity' && !widget.admin)
                        TextButton(
                          onPressed: () => context.push(
                            '/wallet/activity/${Uri.encodeComponent(row.reference)}',
                          ),
                          child: Text(
                            _t(
                              context,
                              'View original transaction',
                              'Duba cinikin asali',
                            ),
                          ),
                        ),
                      if (widget.admin)
                        TextButton(
                          onPressed: () => Navigator.push<void>(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  GbInquirySourceScreen(caseId: row.id),
                            ),
                          ),
                          child: Text(
                            _t(
                              context,
                              'Inspect original receipt',
                              'Duba rasitin asali',
                            ),
                          ),
                        ),
                      if (widget.admin)
                        Wrap(
                          spacing: 6,
                          runSpacing: 4,
                          children: [
                            for (final next in [
                              'acknowledged',
                              'awaiting_provider',
                              'closed',
                            ])
                              TextButton(
                                style: TextButton.styleFrom(
                                  minimumSize: const Size(0, 48),
                                ),
                                onPressed: busy || pending.isNotEmpty
                                    ? null
                                    : () => review(row, next),
                                child: Text(switch (next) {
                                  'acknowledged' => _t(
                                    context,
                                    'Acknowledge',
                                    'An karɓa',
                                  ),
                                  'awaiting_provider' => _t(
                                    context,
                                    'Await provider',
                                    'Jiran mai bayarwa',
                                  ),
                                  _ => _t(
                                    context,
                                    'Close inquiry',
                                    'Rufe tambaya',
                                  ),
                                }),
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
          if (cursor != null)
            TextButton(
              onPressed: busy || pending.isNotEmpty
                  ? null
                  : () => load(more: true),
              child: Text(_t(context, 'Load more', 'Ƙara nunawa')),
            ),
        ],
      ),
    ),
  );
}

final _financeReviewCapability = FutureProvider.autoDispose
    .family<bool, GbWalletOwner>((ref, owner) async {
      var alive = true;
      ref.onDispose(() => alive = false);
      ref.watch(sessionProvider);
      bool current() {
        if (!alive) return false;
        final session = ref.read(sessionProvider);
        return session is SessionSignedIn &&
            session.user.id == owner.accountId &&
            ref.read(sessionProvider.notifier).authorizationEpoch ==
                owner.authorizationEpoch;
      }

      if (!current()) return false;
      try {
        return await GbRetainedFinanceApi(
          ref.read(apiClientProvider).dio,
          current,
        ).canReview();
      } catch (_) {
        return false;
      }
    });

class GbFinanceReviewEntry extends ConsumerWidget {
  const GbFinanceReviewEntry({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider);
    if (session is! SessionSignedIn) return const SizedBox.shrink();
    final state = ref.watch(
      _financeReviewCapability((
        accountId: session.user.id,
        authorizationEpoch: ref
            .read(sessionProvider.notifier)
            .authorizationEpoch,
      )),
    );
    if (state.isLoading || state.valueOrNull != true) {
      return const SizedBox.shrink();
    }
    return ListTile(
      key: const Key('settings-wallet-inquiry-review'),
      leading: const Icon(Icons.receipt_long),
      title: Text(
        _t(context, 'Review wallet inquiries', 'Duba tambayoyin walat'),
      ),
      onTap: () => Navigator.push<void>(
        context,
        MaterialPageRoute(
          builder: (_) => const GbWalletInquiriesScreen(admin: true),
        ),
      ),
    );
  }
}

class GbInquirySourceScreen extends ConsumerStatefulWidget {
  const GbInquirySourceScreen({super.key, required this.caseId});
  final String caseId;
  @override
  ConsumerState<GbInquirySourceScreen> createState() => _InquirySourceState();
}

class _InquirySourceState extends _OwnedState<GbInquirySourceScreen> {
  final rows = <LegacyFinanceEvent>[];
  List<Map<String, String>> fields = [];
  String? cursor, error;
  bool busy = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) load();
    });
  }

  Future<void> load({bool more = false}) async {
    if (!current || busy || more && cursor == null) return;
    final after = more ? cursor : null;
    setState(() {
      busy = true;
      error = null;
      if (!more) {
        rows.clear();
        fields = [];
        cursor = null;
      }
    });
    try {
      final raw = await api.reviewSource(widget.caseId, cursor: after);
      if (!current) return;
      final page = FinancePage<LegacyFinanceEvent>.read(
        raw,
        LegacyFinanceEvent.read,
      );
      setState(() {
        fields = (raw['fields'] as List)
            .map(
              (r) => {
                'label': (r as Map)['label'] as String,
                'value': r['value'] as String,
              },
            )
            .toList();
        final ids = rows.map((r) => r.key).toSet();
        rows.addAll(page.items.where((r) => ids.add(r.key)));
        cursor = page.items.isEmpty || page.nextCursor == after
            ? null
            : page.nextCursor;
      });
    } catch (e) {
      if (current) {
        setState(() {
          error = failure(e);
          if (accessDenied(e)) {
            rows.clear();
            fields = [];
            cursor = null;
          }
        });
      }
    } finally {
      if (current) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        _t(context, 'Original inquiry evidence', 'Hujjar tambaya ta asali'),
      ),
    ),
    body: guarded(
      ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            _t(
              context,
              'Read-only original records. Reviewing an inquiry cannot change a balance or declare a provider outcome.',
              'Bayanan asali na dubawa ne. Duba tambaya ba ya sauya ma’auni ko tabbatar da sakamakon mai bayarwa.',
            ),
          ),
          if (busy) const LinearProgressIndicator(),
          if (error != null) Text(error!),
          TextButton(
            onPressed: busy ? null : () => load(),
            child: Text(_t(context, 'Refresh', 'Sabunta')),
          ),
          for (final field in fields)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    field['label']!,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  SelectableText(field['value']!),
                ],
              ),
            ),
          for (final row in rows)
            ListTile(
              title: Text(_halfLabel(context, row.halfMb)),
              subtitle: Text('${row.at.toLocal()}\n${row.reference}'),
            ),
          if (cursor != null)
            TextButton(
              onPressed: busy ? null : () => load(more: true),
              child: Text(_t(context, 'Load more', 'Ƙara nunawa')),
            ),
        ],
      ),
    ),
  );
}
