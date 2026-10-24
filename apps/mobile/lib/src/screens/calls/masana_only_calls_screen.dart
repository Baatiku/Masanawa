import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../calls/call_history.dart';
import '../../calls/call_lifecycle_reporter.dart';
import '../../state/session_state.dart';
import '../../ui/components/masanawa_main_header.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import '../../theme/masanawa_theme.dart';

/// Refactor-only Masana call history. Never mounts user-to-user, Rooms or
/// group-call transports. This is intentionally not a paid-call entry point:
/// it cannot rely on the retired Credits admission until MB admission exists.
class MasanaOnlyCallsScreen extends ConsumerWidget {
  const MasanaOnlyCallsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(callLifecycleReporterProvider);
    final session = ref.watch(sessionProvider);
    return Scaffold(
      backgroundColor: context.masanawa.surfaceBg,
      appBar: masanawaMainHeader(context),
      body: session is SessionSignedIn
          ? _PrivateMasanaCallHistory(
              key: ValueKey('masana-call-history-${session.user.id}'),
              accountId: session.user.id,
              credentials: session.tokens,
            )
          : session is SessionRestoring
              ? const MasanawaListSkeleton(semanticLabel: 'Restoring calls')
              : const Center(child: Text('Sign in to see your calls.')),
    );
  }
}

class _PrivateMasanaCallHistory extends ConsumerStatefulWidget {
  const _PrivateMasanaCallHistory({
    super.key,
    required this.accountId,
    required this.credentials,
  });

  final String accountId;
  final Object credentials;

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
  bool _loading = true, _failed = false;

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
    _cancel?.cancel();
    final token = CancelToken();
    _cancel = token;
    final generation = ++_generation;
    setState(() {
      _loading = true;
      _failed = false;
    });
    try {
      final page = await ref.read(callHistoryTransportProvider).loadPage(
        cursor: reset ? null : _next,
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
        ].where((call) => found.add(call.callId)).toList(growable: false);
        _next = page.nextCursor;
        _loading = false;
      });
    } catch (_) {
      if (!mounted || generation != _generation || !_isCurrent) return;
      setState(() {
        _loading = false;
        _failed = true;
      });
    }
  }

  String _date(DateTime time) {
    final local = time.toLocal();
    return MaterialLocalizations.of(context).formatMediumDate(local);
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
          Text('Calls with Masana',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          const Text('Individual audio only. Call admission will resume once '
              'MB balance and server-enforced time are available.'),
          const SizedBox(height: 16),
          TextField(
            controller: _search,
            onChanged: _onQuery,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              labelText: 'Search Masana calls',
              border: const OutlineInputBorder(),
              suffixIcon: _query.isNotEmpty
                  ? IconButton(
                      tooltip: 'Clear calls search',
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        _search.clear();
                        _onQuery('');
                      },
                    )
                  : null,
            ),
          ),
          if (_query.length > 80)
            const ListTile(title: Text('Search must be 80 characters or fewer')),
          if (_loading) const LinearProgressIndicator(),
          if (_history.isEmpty && !_loading && !_failed && _query.length <= 80)
            ListTile(
              leading: const Icon(Icons.call_outlined),
              title: Text(_query.isEmpty ? 'No recent calls' : 'No matching calls'),
              subtitle: const Text('Your individual Masana audio calls will appear here.'),
            ),
          for (final call in _history)
            Card(
              child: ListTile(
                leading: Icon(
                  call.missed ? Icons.call_missed : Icons.call_made,
                  color: call.missed
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.primary,
                ),
                title: Text(call.displayName,
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                subtitle: Text('${call.outcomeLabel} · ${_date(call.createdAt)}',
                    maxLines: 2, overflow: TextOverflow.ellipsis),
                trailing: const Tooltip(
                  message: 'Calls are pending MB admission',
                  child: Icon(Icons.lock_clock_outlined),
                ),
              ),
            ),
          if (_failed)
            ListTile(
              title: const Text('Could not load call history'),
              subtitle: const Text('Check your connection and retry.'),
              trailing: TextButton(
                onPressed: () => _load(reset: true),
                child: const Text('Retry'),
              ),
            ),
          if (!_loading && !_failed && _next != null)
            OutlinedButton(
              onPressed: () => _load(reset: false),
              child: const Text('Load more'),
            ),
        ],
      ),
    );
  }
}
