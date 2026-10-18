import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../calls/call_history.dart';
import '../../calls/call_details_screen.dart';
import '../../calls/call_recordings_screen.dart';
import '../../calls/call_lifecycle_reporter.dart';
import '../../calls/group_call_screen.dart';
import '../../calls/group_call_controller.dart';
import '../../calls/group_call_transport.dart';
import '../../calls/group_paid_voice_transport.dart';
import '../../calls/group_paid_voice_outbox.dart';
import '../../core/providers.dart';
import '../../state/agent_directory_state.dart';
import '../../voice/paid_voice_state.dart';
import '../../state/session_state.dart';
import '../../theme/masanawa_theme.dart';
import '../../ui/components/masanawa_main_header.dart';
import '../../ui/components/conversation_search_field.dart';
import '../../ui/components/masanawa_list_skeleton.dart';
import '../../agents/masana_portrait_avatar.dart';

class CallsScreen extends ConsumerWidget {
  const CallsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(callLifecycleReporterProvider);
    ref.watch(groupPaidVoiceOutboxProvider);
    final session = ref.watch(sessionProvider);
    final u = context.masanawa;
    return Scaffold(
      backgroundColor: u.surfaceBg,
      appBar: masanawaMainHeader(
        context,
        actions: [
          IconButton(
            tooltip: 'Search Masana and Rooms',
            icon: const Icon(Icons.search),
            onPressed: session is SessionSignedIn
              ? () => context.push('/search') : null,
          ),
          IconButton(tooltip:'Call recordings',icon:const Icon(Icons.graphic_eq),
            onPressed:session is SessionSignedIn?()=>Navigator.push<void>(context,MaterialPageRoute(builder:(_)=>CallRecordingsScreen(ownerId:session.user.id))):null),
          IconButton(
            tooltip: 'Call multiple Masana',
            icon: const Icon(Icons.groups_outlined),
            onPressed: session is SessionSignedIn
                ? () => _openGroup(context, ref, session)
                : null,
          ),
          IconButton(
            tooltip: 'Choose a Masana',
            icon: const Icon(Icons.add_call),
            onPressed: session is SessionSignedIn
                ? () => context.push('/masana')
                : null,
          ),
        ],
      ),
      body: session is SessionSignedIn
          ? _CallHistoryList(
              // Token refresh must not reset call search and scroll state.
              // An account switch still remounts the private history widget.
              key: ValueKey<String>('calls-account-${session.user.id}'),
              accountId: session.user.id,
              sessionIdentity: session.tokens,
            )
          : session is SessionRestoring
          ? const MasanawaListSkeleton(semanticLabel: 'Restoring call history session')
          : const Center(child: Text('Sign in to see your calls.')),
    );
  }

  Future<void> _openGroup(
    BuildContext context,
    WidgetRef ref,
    SessionSignedIn session,
  ) async {
    final accountId = session.user.id;
    final container = ProviderScope.containerOf(context, listen: false);
    String? currentAccount() {
      final current = container.read(sessionProvider);
      return current is SessionSignedIn ? current.user.id : null;
    }

    final reporter = ref.read(callLifecycleReporterProvider);
    final owner = reporter.captureOwner();
    if (owner == null || owner.accountId != accountId) return;
    await ref.read(agentDirectoryProvider.notifier).refresh();
    if (!context.mounted || currentAccount() != accountId) return;
    final contacts = ref
        .read(agentDirectoryProvider)
        .agents
        .map(
          (agent) => GroupContact(
            characterId: agent.characterId,
            displayName: agent.displayName,
            supportAgent: agent.supportAgent,
          ),
        )
        .toList(growable: false);
    final bindings = <String, CallLifecycleBinding>{};
    CallLifecycleBinding binding(String? callId) =>
        bindings.putIfAbsent(callId ?? '', () => reporter.bind(owner, callId));
    final api = ref.read(apiClientProvider);
    final transport = GatewayGroupCallTransport(
      api: api,
      accessToken: owner.accessToken,
      accountKey: accountId,
      currentAccountKey: currentAccount,
    );
    final paid = GroupPaidVoiceTransport(
      api: api,
      accessToken: owner.accessToken,
      outbox: ref.read(groupPaidVoiceOutboxProvider),
      accountKey: accountId,
      currentAccountKey: currentAccount,
    );
    await Navigator.of(context).push<void>(
      MaterialPageRoute(
        builder: (groupContext) => Consumer(
          builder: (context, groupRef, _) {
            final currentSession = groupRef.watch(sessionProvider);
            return GroupCallScreen(
              accountKey: currentSession is SessionSignedIn
                  ? currentSession.user.id
                  : 'signed-out',
              currentAccountKey: currentAccount,
              contacts: contacts,
              transport: transport,
              onChildConnected: (grant) => binding(grant.callId).connected(),
              onChildClosed: (grant) => binding(grant.callId).closed(),
              authorize: (contact) async {
                final controller = PaidVoiceController(paid);
                try {
                  final quote = await controller.quote(
                    characterId: contact.characterId,
                  );
                  if (quote == null ||
                      !groupContext.mounted ||
                      currentAccount() != accountId) {
                    return null;
                  }
                  final approved = await showDialog<bool>(
                    context: groupContext,
                    builder: (dialogContext) => AlertDialog(
                      title: Text('Voice with ${contact.displayName}'),
                      content: Text(
                        quote.isTrial
                            ? 'Your voice trial covers this Masana.'
                            : 'Reserve up to ${quote.spendCapCredits} Credits for this Masana. Only verified live time is charged.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(dialogContext, false),
                          child: const Text('Cancel'),
                        ),
                        FilledButton(
                          onPressed: () => Navigator.pop(dialogContext, true),
                          child: const Text('Accept & join'),
                        ),
                      ],
                    ),
                  );
                  if (approved != true || currentAccount() != accountId) {
                    return null;
                  }
                  final admission = await controller.accept(
                    characterId: contact.characterId,
                  );
                  if (admission == null) return null;
                  return GroupAdmission(
                    admissionId: admission.admissionId,
                    expiresAt: admission.expiresAt,
                    maxDuration:
                        Duration(seconds: quote.estimatedSeconds).compareTo(
                              admission.expiresAt.difference(DateTime.now()),
                            ) <=
                            0
                        ? Duration(seconds: quote.estimatedSeconds)
                        : admission.expiresAt.difference(DateTime.now()),
                    onMediaStarted: () =>
                        paid.mediaStarted(admissionId: admission.admissionId),
                    onEnded: () => paid.complete(
                      admissionId: admission.admissionId,
                      outcome: 'completed',
                    ),
                  );
                } finally {
                  controller.dispose();
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class _CallHistoryList extends ConsumerStatefulWidget {
  const _CallHistoryList({
    super.key,
    required this.accountId,
    required this.sessionIdentity,
  });
  final String accountId;
  final Object sessionIdentity;
  @override
  ConsumerState<_CallHistoryList> createState() => _CallHistoryListState();
}

class _CallHistoryListState extends ConsumerState<_CallHistoryList> {
  final TextEditingController _search = TextEditingController();
  Timer? _debounce;
  String _query = '';
  bool _invalidQuery = false;
  List<CallHistoryItem> _calls = [];
  String? _nextCursor;
  bool _loading = true;
  bool _failed = false;
  bool _retryRefresh = true;
  int _generation = 0;
  CancelToken? _request;
  @override
  void initState() {
    super.initState();
    _load(refresh: true);
  }

  @override
  void dispose() {
    _generation++;
    _debounce?.cancel();
    _request?.cancel();
    _search.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _CallHistoryList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.sessionIdentity, widget.sessionIdentity)) {
      // Keep this account's input and position, but fence results returned
      // from requests made with the previous credential.
      _generation++;
      _debounce?.cancel();
      _request?.cancel();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _sameAccount) {
          unawaited(_load(refresh: true));
        }
      });
    }
  }

  void _searchChanged(String value) {
    _debounce?.cancel();
    // Invalidate at the keystroke, not at the later debounce boundary.
    _generation++;
    _request?.cancel();
    final query = value.trim().toLowerCase();
    setState(() {
      _query = query;
      _invalidQuery = query.length > 80;
      _calls = [];
      _nextCursor = null;
      _loading = !_invalidQuery;
      _failed = false;
    });
    if (_invalidQuery) return;
    if (query.isEmpty) {
      unawaited(_load(refresh: true));
    } else {
      _debounce = Timer(
        const Duration(milliseconds: 350),
        () => unawaited(_load(refresh: true)),
      );
    }
  }

  bool get _sameAccount {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
        session.user.id == widget.accountId &&
        identical(session.tokens, widget.sessionIdentity);
  }

  Future<void> _load({bool refresh = false}) async {
    if (!refresh && _loading) return;
    if (refresh) {
      _generation++;
      _request?.cancel();
    }
    final generation = _generation;
    final token = CancelToken();
    _request = token;
    setState(() {
      _loading = true;
      _failed = false;
    });
    try {
      final page = await ref
          .read(callHistoryTransportProvider)
          .loadPage(
            cursor: refresh ? null : _nextCursor,
            query: _query,
            cancelToken: token,
          );
      if (!mounted || generation != _generation || !_sameAccount) return;
      setState(() {
        final combined = [if (!refresh) ..._calls, ...page.calls];
        final ids = <String>{};
        _calls = combined.where((call) => ids.add(call.callId)).toList();
        _nextCursor = page.nextCursor;
        _loading = false;
      });
    } catch (_) {
      if (!mounted || generation != _generation || !_sameAccount) return;
      setState(() {
        _loading = false;
        _failed = true;
        _retryRefresh = refresh;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(callHistoryRevisionProvider, (previous, next) {
      if (previous != next && _sameAccount) _load(refresh: true);
    });
    final u = context.masanawa;
    return RefreshIndicator(
      onRefresh: () => _load(refresh: true),
      child: ListView(
        key: PageStorageKey<String>('calls-history-${widget.accountId}'),
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          ConversationSearchField(
            controller: _search,
            hintText: 'Search calls',
            onChanged: _searchChanged,
            onClear: () => _searchChanged(''),
          ),
          if (_invalidQuery)
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Search must be 80 characters or fewer.'),
            ),
          if (_loading && (_calls.isNotEmpty || _query.isNotEmpty))
            const LinearProgressIndicator(minHeight: 2),
          if (_loading && _calls.isEmpty && _query.isEmpty)
            const MasanawaListSkeleton(
              shrinkWrap: true,
              itemCount: 5,
              semanticLabel: 'Loading call history',
            ),
          if (!_loading && !_failed && !_invalidQuery && _calls.isEmpty)
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Icon(Icons.call_outlined, size: 58, color: u.brand),
                  const SizedBox(height: 18),
                  Text(
                    _query.isEmpty ? 'No recent calls' : 'No matching calls',
                    style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _query.isEmpty
                        ? 'Your calls with Masana will appear here.'
                        : 'Try a different name, state, or call identifier.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  if (_query.isEmpty)
                    OutlinedButton.icon(
                      onPressed: () => context.push('/masana'),
                      icon: const Icon(Icons.people_outline),
                      label: const Text('Choose a Masana'),
                    )
                  else
                    OutlinedButton.icon(
                      onPressed: () { _search.clear(); _searchChanged(''); },
                      icon: const Icon(Icons.clear),
                      label: const Text('Clear call search'),
                    ),
                ],
              ),
            ),
          for (final call in _calls)
            ListTile(
              leading: MasanaPortraitAvatar(
                displayName: call.displayName,
                size: 44,
              ),
              title: Text(
                call.displayName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    call.missed
                        ? Icons.call_missed
                        : call.incoming
                            ? Icons.call_received
                            : Icons.call_made,
                    size: 16,
                    color: call.missed ? u.emergency : u.brand,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      '${call.isGroupCall?'Group · ':''}${_label(call.state)}${call.duration==null?'':' · ${callDurationLabel(call.duration!)}'} · ${_date(context, call.createdAt)}',
                      style: TextStyle(color: u.textMuted, fontSize: 13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.call, color: u.brand),
                tooltip: 'Call ${call.displayName}',
                onPressed: () => context.push(
                  '/chat/${Uri.encodeComponent(call.characterId)}?mode=liveVoice',
                ),
              ),
              onTap: () => Navigator.push<void>(context,MaterialPageRoute(builder:(_)=>CallDetailsScreen(ownerId:widget.accountId,initial:call))),
            ),
          if (_failed && !_invalidQuery)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text(
                    'Could not load calls. Check your connection and try again.',
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () => _load(refresh: _retryRefresh),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          if (!_loading && !_failed && !_invalidQuery && _nextCursor != null)
            TextButton(onPressed: _load, child: const Text('Load more')),
        ],
      ),
    );
  }

  String _label(String state) => switch (state) {
    'connecting' => 'Connecting',
    'active' => 'Connected',
    'ended' => 'Ended',
    'missed' => 'Missed',
    'declined' => 'Declined',
    'cancelled' => 'Cancelled',
    _ => 'Expired',
  };
  String _date(BuildContext context, DateTime timestamp) {
    final local = timestamp.toLocal();
    final strings = MaterialLocalizations.of(context);
    return '${strings.formatMediumDate(local)} ${strings.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
  }
}


