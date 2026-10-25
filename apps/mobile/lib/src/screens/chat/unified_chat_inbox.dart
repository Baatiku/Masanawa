import '../../features/masana_chat/inbox_search.dart';
import '../../agents/masana_portrait_avatar.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../state/ai_chat_state.dart';
import '../../state/agent_directory_state.dart';
import '../../state/session_state.dart';
import '../../ui/components/conversation_search_field.dart';

final _serverSearch = FutureProvider.autoDispose
    .family<MasanaInboxPage, String>((ref, key) {
      final parts = jsonDecode(key) as List;
      return ref
          .watch(masanaInboxSearchProvider)
          .searchPage(bearer: parts[1] as String, query: parts[2] as String);
    });

/// Account-scoped Masana conversations.
class UnifiedChatInbox extends ConsumerStatefulWidget {
  const UnifiedChatInbox({
    super.key,
    required this.masanaThreads,
    required this.masanaRow,
  });
  final List<ChatThread> masanaThreads;
  final Widget Function(ChatThread) masanaRow;
  @override
  ConsumerState<UnifiedChatInbox> createState() => _UnifiedChatInboxState();
}

class _UnifiedChatInboxState extends ConsumerState<UnifiedChatInbox>
    {
  final _search = TextEditingController();
  String _query = '', _remoteQuery = '';
  Timer? _searchDebounce;
  final Map<String, MasanaInboxSearchItem> _confirmedPinUpdates = {};
  final List<MasanaInboxSearchItem> _additionalResults = [];
  final Set<String> _seenCursors = {};
  String? _additionalResultsKey, _nextCursor;
  bool _loadedMore = false, _loadingMore = false, _pageError = false;
  ProviderSubscription<SessionState>? _sessionSubscription;
  String? _sessionOwnerId;
  int _authorizationEpoch = 0;

  @override
  void initState() {
    super.initState();
    final current = ref.read(sessionProvider);
    _sessionOwnerId = current is SessionSignedIn ? current.user.id : null;
    _authorizationEpoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    _sessionSubscription = ref.listenManual(sessionProvider, (previous, next) {
      final ownerId = next is SessionSignedIn ? next.user.id : null;
      final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
      if (ownerId == _sessionOwnerId && epoch == _authorizationEpoch) return;
      _sessionOwnerId = ownerId;
      _authorizationEpoch = epoch;
      _searchDebounce?.cancel();
      _search.clear();
      if (!mounted) return;
      setState(() {
        _query = _remoteQuery = '';
        _confirmedPinUpdates.clear();
        _resetPages();
      });
    });
  }

  void _resetPages() {
    _additionalResults.clear();
    _seenCursors.clear();
    _additionalResultsKey = null;
    _nextCursor = null;
    _loadedMore = _loadingMore = _pageError = false;
  }
  @override
  void dispose() {
    _sessionSubscription?.close();
    _searchDebounce?.cancel();
    _search.dispose();
    super.dispose();
  }

  void _changed(String raw) {
    _searchDebounce?.cancel();
    setState(() {
      _query = raw.trim().toLowerCase();
      _remoteQuery = '';
      _confirmedPinUpdates.clear();
      _resetPages();
    });
    if (_query.isNotEmpty && _query.length <= 80)
      _searchDebounce = Timer(const Duration(milliseconds: 350), () {
        if (mounted) setState(() => _remoteQuery = _query);
      });
  }

  Future<void> _refresh() async {
    final owner = ref.read(sessionProvider);
    await ref.read(agentDirectoryProvider.notifier).refresh();
    if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
        owner is! SessionSignedIn || _remoteQuery.isEmpty ||
        _remoteQuery != _query || !ref.read(aiChatProvider).online) return;
    setState(_resetPages);
    ref.invalidate(_serverSearch(jsonEncode([
      owner.user.id, owner.tokens.accessToken, _remoteQuery,
      ref.read(sessionProvider.notifier).authorizationEpoch,
    ])));
  }

  Future<void> _loadMore(String key, String cursor) async {
    if (_loadingMore || _seenCursors.contains(cursor)) return;
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner is! SessionSignedIn || !ref.read(aiChatProvider).online ||
        _remoteQuery != _query || _remoteQuery.isEmpty ||
        jsonEncode([owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch]) != key) return;
    setState(() { _loadingMore = true; _pageError = false; });
    try {
      final page = await ref.read(masanaInboxSearchProvider).searchPage(
        bearer: owner.tokens.accessToken, query: _remoteQuery,
        cursor: cursor,
      );
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch ||
          _remoteQuery != _query || !ref.read(aiChatProvider).online ||
          jsonEncode([owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch]) != key) return;
      setState(() {
        _additionalResultsKey = key;
        _loadedMore = true;
        _loadingMore = false;
        _seenCursors.add(cursor);
        _additionalResults.addAll(page.items);
        // A stale/empty/repeated cursor must terminate rather than loop.
        _nextCursor = page.items.isEmpty || page.nextCursor == cursor ||
                (page.nextCursor != null && _seenCursors.contains(page.nextCursor))
            ? null : page.nextCursor;
      });
    } catch (_) {
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch ||
          _remoteQuery != _query || !ref.read(aiChatProvider).online) return;
      setState(() { _loadingMore = false; _pageError = true; });
    }
  }

  @override
  Widget build(BuildContext context) {
    final signedIn = ref.watch(sessionProvider) is SessionSignedIn;
    if (!signedIn)
      return const Center(child: Text('Sign in to see your conversations.'));
    final session = ref.watch(sessionProvider) as SessionSignedIn;
    final serverKey = jsonEncode([
      session.user.id,
      session.tokens.accessToken,
      _remoteQuery,
      ref.read(sessionProvider.notifier).authorizationEpoch,
    ]);
    final offline = !ref.watch(aiChatProvider).online;
    final server = !offline && _remoteQuery.isNotEmpty &&
            _remoteQuery == _query
        ? ref.watch(_serverSearch(serverKey))
        : null;
    // One identity per result, including server replay and locally archived
    // history. A search hit must never replace the device's draft/messages.
    final serverById = <String, MasanaInboxSearchItem>{};
    final firstPage = server?.valueOrNull;
    final resultPages = <MasanaInboxSearchItem>[
      ...?firstPage?.items,
      if (firstPage != null && _additionalResultsKey == serverKey)
        ..._additionalResults,
    ];
    for (final incoming in resultPages) {
      final confirmed = _confirmedPinUpdates[incoming.characterId];
      final result = confirmed != null && confirmed.revision > incoming.revision
          ? confirmed : incoming;
      final previous = serverById[result.characterId];
      if (previous == null || result.revision > previous.revision ||
          (result.revision == previous.revision &&
              (result.lastActivityAt ?? DateTime.utc(1970)).isAfter(
                  previous.lastActivityAt ?? DateTime.utc(1970)))) {
        serverById[result.characterId] = result;
      }
    }
    final rows = <({DateTime at, String id, Widget row})>[];
    final localIds = <String>{};
    for (final t in widget.masanaThreads) {
        if (!localIds.add(t.characterId)) continue;
        final agent = ref.watch(agentDirectoryProvider).find(t.characterId);
        if (_query.isNotEmpty &&
            !'${agent?.displayName ?? ''} ${t.characterId} ${t.title ?? ''} ${t.draft} ${t.messages.map((m) => m.text).join(' ')}'
                .toLowerCase()
                .contains(_query) &&
            !serverById.containsKey(t.characterId))
          continue;
        rows.add((
          at: t.lastMessageActivityAt,
          id: t.characterId,
          row: widget.masanaRow(t),
        ));
    }
    for (final result in serverById.values) {
      if (localIds.contains(result.characterId)) continue;
      rows.add((
        at: result.lastActivityAt ?? DateTime.utc(1970),
        id: result.characterId,
        row: ListTile(
          key: ValueKey('remote-${result.characterId}'),
          leading: MasanaPortraitAvatar(
            characterId: result.characterId,
            agent: ref.watch(agentDirectoryProvider).find(result.characterId),
            displayName: result.displayName,
            size: 44,
          ),
          title: Text(result.displayName),
          subtitle: Text(
            result.lastMessage.isEmpty ? result.profession : result.lastMessage,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            tooltip: result.pinned
                ? 'Unpin server conversation'
                : 'Pin server conversation',
            icon: Icon(result.pinned ? Icons.push_pin : Icons.push_pin_outlined),
            onPressed: () async {
              final owner = ref.read(sessionProvider);
              final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
              final access = ref.read(masanaInboxSearchProvider);
              try {
                final nextRevision = await access.setPinned(
                  bearer: session.tokens.accessToken,
                  characterId: result.characterId,
                  pinned: !result.pinned,
                  expectedRevision: result.revision,
                );
                if (mounted && identical(owner, ref.read(sessionProvider)) &&
                    epoch == ref.read(sessionProvider.notifier).authorizationEpoch) {
                  setState(() => _confirmedPinUpdates[result.characterId] =
                      result.withPin(!result.pinned, nextRevision));
                  ref.invalidate(_serverSearch(serverKey));
                }
              } catch (_) {
                if (mounted && identical(owner, ref.read(sessionProvider)) &&
                    epoch == ref.read(sessionProvider.notifier).authorizationEpoch) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Could not update pin.')),
                  );
                }
              }
            },
          ),
          onTap: () {
            final owner = ref.read(sessionProvider);
            if (owner is! SessionSignedIn) return;
            final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
            context.push('/chat/${Uri.encodeComponent(result.characterId)}');
            // The read receipt may fail without blocking navigation.
            unawaited(() async {
              if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
                  epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
              try {
                await ref.read(masanaInboxSearchProvider).markRead(
                  bearer: owner.tokens.accessToken,
                  characterId: result.characterId,
                );
              } catch (_) {
                // The chat screen can retry the original acknowledgement.
              }
            }());
          },
        ),
      ));
    }
    rows.sort((a, b) {
      final time = b.at.compareTo(a.at);
      return time != 0 ? time : a.id.compareTo(b.id);
    });
    return Column(
      children: [
        ConversationSearchField(
          controller: _search,
          hintText: 'Search conversations',
          clearTooltip: 'Clear chat search',
          onChanged: _changed,
          onClear: () {
            _search.clear();
            _changed('');
          },
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: _refresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              key: const PageStorageKey('unified-inbox'),
              children: [
                if (rows.isEmpty && server?.isLoading != true)
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        Text(
                          _query.isEmpty
                              ? 'No conversations yet'
                              : offline
                              ? 'No matches in saved conversations'
                              : 'No matching conversations',
                        ),
                        if (offline && _query.isNotEmpty)
                          const Text('Offline searches only include saved conversations.'),
                        TextButton(
                          onPressed: () => context.push('/masana'),
                          child: const Text('Find Masana'),
                        ),
                      ],
                    ),
                  ),
                for (final row in rows) row.row,
                if (server?.isLoading == true)
                  const LinearProgressIndicator(minHeight: 2,
                    semanticsLabel: 'Searching server conversations'),
                if (server?.hasError == true)
                  ListTile(
                    title: const Text(
                      'Server conversations are not available yet. Showing saved conversations.',
                    ),
                    trailing: IconButton(
                      tooltip: 'Retry server search',
                      onPressed: () => ref.invalidate(_serverSearch(serverKey)),
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                if (firstPage != null && !_pageError && !_loadingMore &&
                    (_loadedMore && _additionalResultsKey == serverKey
                        ? _nextCursor : firstPage.nextCursor) != null)
                  Center(child: TextButton.icon(
                    onPressed: () => _loadMore(serverKey,
                      (_loadedMore && _additionalResultsKey == serverKey
                          ? _nextCursor : firstPage.nextCursor)!),
                    icon: const Icon(Icons.expand_more),
                    label: const Text('Load more conversations'),
                  )),
                if (firstPage != null && _loadingMore && _remoteQuery == _query)
                  const LinearProgressIndicator(minHeight: 2,
                    semanticsLabel: 'Loading more conversations'),
                if (firstPage != null && _pageError && _remoteQuery == _query)
                  ListTile(
                    title: const Text('Could not load more conversations. Previous results are saved.'),
                    trailing: IconButton(
                      tooltip: 'Retry loading conversations',
                      onPressed: () {
                        final cursor = _loadedMore && _additionalResultsKey == serverKey
                            ? _nextCursor : firstPage.nextCursor;
                        if (cursor != null) _loadMore(serverKey, cursor);
                      },
                      icon: const Icon(Icons.refresh),
                    ),
                  ),
                const SizedBox(height: 88),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
