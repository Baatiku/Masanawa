import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../calls/call_history.dart';
import '../../calls/call_details_screen.dart';
import '../../calls/call_lifecycle_reporter.dart';
import '../../calls/masana_voice_route.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../chat/masana_list_screen.dart';
import '../../state/agent_directory_state.dart';
import '../../state/session_state.dart';
import '../../ui/components/masanawa_main_header.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import '../../theme/masanawa_theme.dart';

/// Refactor-only Masana call history. Never mounts user-to-user, Rooms or
/// group-call transports. This is intentionally not a paid-call entry point:
/// it cannot rely on the retired Credits admission until MB admission exists.
class MasanaOnlyCallsScreen extends ConsumerStatefulWidget {
  const MasanaOnlyCallsScreen({super.key});

  @override
  ConsumerState<MasanaOnlyCallsScreen> createState() =>
      _MasanaOnlyCallsScreenState();
}

class _MasanaOnlyCallsScreenState extends ConsumerState<MasanaOnlyCallsScreen> {
  bool _searchOpen = false;

  void _openCallPicker() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) =>
          const MasanaListScreen(callPicker: true)),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(callLifecycleReporterProvider);
    final session = ref.watch(sessionProvider);
    return Scaffold(
      backgroundColor: context.masanawa.surfaceBg,
      appBar: masanawaMainHeader(context, actions: [
        IconButton(
          tooltip: _searchOpen ? 'Close calls search' : 'Search calls',
          icon: Icon(_searchOpen ? Icons.close_rounded : Icons.search_rounded),
          onPressed: () => setState(() => _searchOpen = !_searchOpen),
        ),
      ]),
      body: session is SessionSignedIn
          ? _PrivateMasanaCallHistory(
              key: ValueKey('masana-call-history-${session.user.id}'),
              accountId: session.user.id,
              credentials: session.tokens,
              searchOpen: _searchOpen,
            )
          : session is SessionRestoring
              ? const MasanawaListSkeleton(semanticLabel: 'Restoring calls')
              : const Center(child: Text('Sign in to see your calls.')),
      floatingActionButton: session is SessionSignedIn
          ? FloatingActionButton(
              key: const ValueKey('masana-new-call'),
              tooltip: 'New call',
              backgroundColor: context.masanawa.brand,
              foregroundColor: context.masanawa.textPrimary,
              onPressed: _openCallPicker,
              child: const Icon(Icons.add_ic_call_rounded),
            )
          : null,
    );
  }
}

class _PrivateMasanaCallHistory extends ConsumerStatefulWidget {
  const _PrivateMasanaCallHistory({
    super.key,
    required this.accountId,
    required this.credentials,
    required this.searchOpen,
  });

  final String accountId;
  final Object credentials;
  final bool searchOpen;

  @override
  ConsumerState<_PrivateMasanaCallHistory> createState() =>
      _PrivateMasanaCallHistoryState();
}

class _PrivateMasanaCallHistoryState
    extends ConsumerState<_PrivateMasanaCallHistory> {
  final _search = TextEditingController();
  Timer? _debounce;
  CancelToken? _cancel;
  int _generation = 0;
  String _query = '';
  List<CallHistoryItem> _history = [];
  String? _next;
  bool _loading = true, _failed = false, _pageFailed = false;

  bool get _isCurrent {
    final state = ref.read(sessionProvider);
    return state is SessionSignedIn &&
        state.user.id == widget.accountId &&
        identical(state.tokens, widget.credentials);
  }

  @override
  void initState() {
    super.initState();
    Future<void>.microtask(() => _load(reset: true));
  }

  @override
  void didUpdateWidget(covariant _PrivateMasanaCallHistory oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.searchOpen && !widget.searchOpen) {
      _search.clear();
      _onQuery('');
    }
    if (!identical(oldWidget.credentials, widget.credentials)) {
      _generation++;
      _cancel?.cancel();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) unawaited(_load(reset: true));
      });
    }
  }

  @override
  void dispose() {
    _generation++;
    _debounce?.cancel();
    _cancel?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _onQuery(String value) {
    _generation++;
    _cancel?.cancel();
    _debounce?.cancel();
    setState(() {
      _query = value.trim();
      _history = [];
      _next = null;
      _failed = false;
      _pageFailed = false;
      _loading = true;
    });
    if (_query.length > 80) {
      setState(() => _loading = false);
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 350),
        () => unawaited(_load(reset: true)));
  }

  Future<void> _load({required bool reset}) async {
    if (!_isCurrent || (!reset && (_loading || _next == null))) return;
    final after = reset ? null : _next;
    _cancel?.cancel();
    final token = CancelToken();
    _cancel = token;
    final generation = ++_generation;
    setState(() {
      _loading = true;
      _failed = false;
      _pageFailed = false;
    });
    try {
      final page = await ref.read(callHistoryTransportProvider).loadPage(
        cursor: after,
        query: _query,
        cancelToken: token,
      );
      if (!mounted || generation != _generation || !_isCurrent) return;
      setState(() {
        final incoming = page.calls.where((call) => !call.isGroupCall);
        final found = <String>{};
        _history = [
          if (!reset) ..._history,
          ...incoming,
        ].where((call) => found.add(call.callId)).toList(growable: false)
          ..sort((a, b) {
            final chronology = b.createdAt.compareTo(a.createdAt);
            return chronology == 0
                ? a.callId.compareTo(b.callId) : chronology;
          });
        _next = page.calls.isEmpty || page.nextCursor == after
            ? null : page.nextCursor;
        _loading = false;
      });
    } catch (error) {
      if (!mounted || generation != _generation || !_isCurrent) return;
      setState(() {
        _loading = false;
        if (error is DioException &&
            const [401, 403, 410].contains(error.response?.statusCode)) {
          _history = [];
          _next = null;
        }
        _failed = reset || _history.isEmpty;
        _pageFailed = !reset && _history.isNotEmpty;
      });
    }
  }

  String _date(DateTime time) {
    final local = time.toLocal();
    return MaterialLocalizations.of(context).formatMediumDate(local);
  }

  String _time(DateTime time) => MaterialLocalizations.of(context)
      .formatTimeOfDay(TimeOfDay.fromDateTime(time.toLocal()));

  List<Widget> _historyRows() {
    final entries = <Widget>[];
    final directory = ref.watch(agentDirectoryProvider);
    String? previousDay;
    for (final call in _history) {
      final local = call.createdAt.toLocal();
      final day = '${local.year}-${local.month}-${local.day}';
      if (day != previousDay) {
        entries.add(Padding(
          key: ValueKey('masana-call-day-$day'),
          padding: const EdgeInsetsDirectional.fromSTEB(4, 16, 4, 6),
          child: Text(_date(call.createdAt),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700)),
        ));
        previousDay = day;
      }
      entries.add(ListTile(
        key: ValueKey('masana-call-${call.callId}'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        leading: MasanaPortraitAvatar(
          characterId: call.characterId,
          agent: directory.find(call.characterId),
          displayName: call.displayName,
          size: 48,
        ),
        title: Text(call.displayName,
          maxLines: 1, overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Row(children: [
          Icon(call.missed
              ? Icons.call_missed_outgoing_rounded : Icons.call_made_rounded,
            size: 15,
            color: call.missed
                ? Theme.of(context).colorScheme.error
                : context.masanawa.brand),
          const SizedBox(width: 5),
          Expanded(child: Text('${call.outcomeLabel} · ${_time(call.createdAt)}',
            maxLines: 1, overflow: TextOverflow.ellipsis)),
        ]),
        onTap: () {
          if (!_isCurrent) return;
          Navigator.of(context).push(MaterialPageRoute<void>(
            builder: (_) => CallDetailsScreen(
              ownerId: widget.accountId, initial: call),
          ));
        },
        trailing: IconButton(
          tooltip: 'Call ${call.displayName}',
          icon: Icon(Icons.call_rounded, color: context.masanawa.brand),
          onPressed: directory.find(call.characterId) == null
              ? null : () {
                  if (_isCurrent) {
                    context.push(masanaLiveVoiceRoute(call.characterId));
                  }
                },
        ),
      ));
      entries.add(Divider(height: 1, indent: 65,
        color: context.masanawa.structuralBorder));
    }
    return entries;
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(callHistoryRevisionProvider, (previous, next) {
      if (previous != next && _isCurrent) unawaited(_load(reset: true));
    });
    return RefreshIndicator(
      onRefresh: () => _load(reset: true),
      child: ListView(
        key: PageStorageKey('masana-only-calls-${widget.accountId}'),
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 12),
            child: Text('Calls',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700)),
          ),
          if (widget.searchOpen) Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: TextField(
              controller: _search,
              autofocus: true,
              onChanged: _onQuery,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: const Icon(Icons.search_rounded),
                hintText: 'Search calls',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24)),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(
                        tooltip: 'Clear calls search',
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () {
                          _search.clear();
                          _onQuery('');
                        },
                      )
                    : null,
              ),
            ),
          ),
          if (_query.length > 80)
            const ListTile(title: Text('Search must be 80 characters or fewer')),
          if (_loading) const LinearProgressIndicator(),
          if (_history.isEmpty && !_loading && !_failed && _query.length <= 80)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 65),
              child: Column(children: [
                Icon(Icons.call_outlined, size: 44,
                    color: context.masanawa.textMuted),
                const SizedBox(height: 12),
                Text(_query.isEmpty ? 'No calls yet' : 'No matching calls',
                    style: Theme.of(context).textTheme.titleMedium),
              ]),
            ),
          ..._historyRows(),
          if (_failed)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(children: [
                Icon(Icons.wifi_off_rounded, size: 34,
                    color: context.masanawa.textMuted),
                const SizedBox(height: 12),
                Text('Calls unavailable',
                    style: Theme.of(context).textTheme.titleMedium),
                TextButton(
                  onPressed: () => _load(reset: true),
                  child: const Text('Try again'),
                ),
              ]),
            ),
          if (!_loading && !_failed && _next != null)
            OutlinedButton(
              onPressed: () => _load(reset: false),
              child: Text(_pageFailed ? 'Could not load older calls · Retry'
                  : 'Load more'),
            ),
        ],
      ),
    );
  }
}
