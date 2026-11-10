import '../../features/masana_chat/inbox_search.dart';
import '../../agents/masana_portrait_avatar.dart';
import '../../chat/chat_format.dart';
import '../../ui/components/masanawa_conversation_tile.dart';
import '../../theme/masanawa_theme.dart';

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
          .searchPage(bearer: parts[1] as String, query: parts[2] as String,
              archived: parts[4] as bool);
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
  final Map<String, MasanaInboxSearchItem> _confirmedRemoteUpdates = {};
  final List<MasanaInboxSearchItem> _additionalResults = [];
  final Set<String> _seenCursors = {};
  String? _additionalResultsKey, _nextCursor;
  bool _loadedMore = false, _loadingMore = false, _pageError = false;
  bool _showArchived = false;
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
        _showArchived = false;
        _confirmedRemoteUpdates.clear();
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
      _confirmedRemoteUpdates.clear();
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
        owner is! SessionSignedIn ||
        _remoteQuery != _query || !ref.read(aiChatProvider).online) return;
    setState(_resetPages);
    ref.invalidate(_serverSearch(jsonEncode([
      owner.user.id, owner.tokens.accessToken, _remoteQuery,
      ref.read(sessionProvider.notifier).authorizationEpoch,
      _showArchived,
    ])));
  }

  Future<void> _loadMore(String key, String cursor) async {
    if (_loadingMore || _seenCursors.contains(cursor)) return;
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner is! SessionSignedIn || !ref.read(aiChatProvider).online ||
        _remoteQuery != _query ||
        jsonEncode([owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch, _showArchived]) != key) return;
    setState(() { _loadingMore = true; _pageError = false; });
    try {
      final page = await ref.read(masanaInboxSearchProvider).searchPage(
        bearer: owner.tokens.accessToken, query: _remoteQuery,
        cursor: cursor, archived: _showArchived,
      );
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch ||
          _remoteQuery != _query || !ref.read(aiChatProvider).online ||
          jsonEncode([owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch, _showArchived]) != key) return;
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

  Future<void> _changeArchive(MasanaInboxSearchItem row) async {
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner is! SessionSignedIn || !ref.read(aiChatProvider).online) return;
    try {
      final revision = await ref.read(masanaInboxSearchProvider).setArchived(
        bearer: owner.tokens.accessToken, characterId: row.characterId,
        archived: !row.archived, expectedRevision: row.revision,
      );
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      setState(() => _confirmedRemoteUpdates[row.characterId] =
          row.withArchive(!row.archived, revision));
      ref.invalidate(_serverSearch(jsonEncode([
        owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch,
        _showArchived,
      ])));
    } catch (_) {
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Archive status changed or could not be saved. Refresh conversations.'),
      ));
      await _refresh();
    }
  }

  Future<void> _renameRemote(MasanaInboxSearchItem row) async {
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    if (owner is! SessionSignedIn) return;
    final editor = TextEditingController(text: row.customTitle ?? '');
    final selection = await showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Private conversation name'),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Only you see this label. Public persona: ${row.displayName}'),
          TextField(controller: editor, maxLength: 80, autofocus: true,
            decoration: const InputDecoration(hintText: 'Conversation title')),
        ]),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Cancel')),
          TextButton(onPressed: () => Navigator.pop(dialogContext, '\u0000'),
              child: const Text('Use original')),
          FilledButton(onPressed: () => Navigator.pop(dialogContext, editor.text.trim()),
              child: const Text('Save')),
        ],
      ),
    );
    editor.dispose();
    if (!mounted || selection == null || selection.isEmpty ||
        !identical(owner, ref.read(sessionProvider)) ||
        epoch != ref.read(sessionProvider.notifier).authorizationEpoch ||
        !ref.read(aiChatProvider).online) return;
    final title = selection == '\u0000' ? null : selection;
    try {
      final revision = await ref.read(masanaInboxSearchProvider).setTitle(
        bearer: owner.tokens.accessToken, characterId: row.characterId,
        title: title, expectedRevision: row.revision,
      );
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      setState(() => _confirmedRemoteUpdates[row.characterId] =
          row.withTitle(title, revision));
      ref.invalidate(_serverSearch(jsonEncode([
        owner.user.id, owner.tokens.accessToken, _remoteQuery, epoch,
        _showArchived,
      ])));
    } catch (_) {
      if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
          epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Conversation title changed or could not be saved. Refresh.'),
      ));
      await _refresh();
    }
  }

  Future<void> _remoteOptions(MasanaInboxSearchItem row) async {
    final owner = ref.read(sessionProvider);
    final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
    final selected = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(leading: Icon(row.archived ? Icons.unarchive_outlined : Icons.archive_outlined),
            title: Text(row.archived ? 'Restore conversation' : 'Archive conversation'),
            onTap: () => Navigator.pop(sheetContext, 'archive')),
          ListTile(leading: const Icon(Icons.edit_outlined),
            title: const Text('Rename conversation privately'),
            onTap: () => Navigator.pop(sheetContext, 'title')),
        ],
      )),
    );
    if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
        epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
    if (selected == 'archive') await _changeArchive(row);
    if (selected == 'title') await _renameRemote(row);
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
      _showArchived,
    ]);
    final localState = ref.watch(aiChatProvider);
    final offline = !localState.online;
    // Archived local conversations may be found by server search but must
    // never leak back into the active inbox.
    final archivedIds = localState.threads.values
        .where((thread) => thread.archived)
        .map((thread) => thread.characterId).toSet();
    final server = !offline &&
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
      final confirmed = _confirmedRemoteUpdates[incoming.characterId];
      final result = confirmed != null && confirmed.revision > incoming.revision
          ? confirmed : incoming;
      final previous = serverById[result.characterId];
      if (result.archived != _showArchived) continue;
      if (previous == null || result.revision > previous.revision ||
          (result.revision == previous.revision &&
              (result.lastActivityAt ?? DateTime.utc(1970)).isAfter(
                  previous.lastActivityAt ?? DateTime.utc(1970)))) {
        serverById[result.characterId] = result;
      }
    }
    final rows = <({DateTime at, String id, bool pinned, Widget row})>[];
    final localIds = <String>{if (!_showArchived) ...archivedIds};
    for (final t in widget.masanaThreads) {
        if (t.archived != _showArchived || !localIds.add(t.characterId)) continue;
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
          pinned: t.pinned,
          row: widget.masanaRow(t),
        ));
    }
    for (final result in serverById.values) {
      if (localIds.contains(result.characterId)) continue;
      rows.add((
        at: result.lastActivityAt ?? DateTime.utc(1970),
        id: result.characterId,
        pinned: result.pinned,
        row: MasanawaConversationTile(
          key: ValueKey('remote-${result.characterId}'),
          avatar: MasanaPortraitAvatar(
            characterId: result.characterId,
            agent: ref.watch(agentDirectoryProvider).find(result.characterId),
            displayName: result.displayName,
            size: 52,
          ),
          name: result.customTitle ?? result.displayName,
          preview: Text(
            result.lastMessage.isEmpty ? result.profession : result.lastMessage,
            maxLines: 1, overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.masanawa.textMuted, fontSize: 14),
          ),
          time: result.lastActivityAt == null
              ? '' : formatChatTime(result.lastActivityAt!.toLocal()),
          unread: result.unreadCount,
          pinned: result.pinned,
          actionTooltip: _showArchived ? 'Restore server conversation'
              : result.pinned ? 'Unpin server conversation' : 'Pin server conversation',
          actionIcon: _showArchived ? Icons.unarchive_outlined
              : result.pinned ? Icons.push_pin : Icons.push_pin_outlined,
          onAction: () async {
            if (_showArchived) { await _changeArchive(result); return; }
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
                setState(() => _confirmedRemoteUpdates[result.characterId] =
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
          onLongPress: () => unawaited(_remoteOptions(result)),
          onTap: () {
            final owner = ref.read(sessionProvider);
            if (owner is! SessionSignedIn) return;
            final epoch = ref.read(sessionProvider.notifier).authorizationEpoch;
            context.push('/chat/${Uri.encodeComponent(result.characterId)}');
            unawaited(() async {
              if (!mounted || !identical(owner, ref.read(sessionProvider)) ||
                  epoch != ref.read(sessionProvider.notifier).authorizationEpoch) return;
              try {
                await ref.read(masanaInboxSearchProvider).markRead(
                  bearer: owner.tokens.accessToken,
                  characterId: result.characterId,
                );
              } catch (_) {
                // Preserve original receipt; chat screen retries acknowledgement.
              }
            }());
          },
        ),
      ));
    }
    rows.sort((a, b) {
      if (a.pinned != b.pinned) return a.pinned ? -1 : 1;
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
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 2, 12, 8),
          child: Align(alignment: AlignmentDirectional.centerStart,
            child: TextButton.icon(
              key: const ValueKey('remote-archive-toggle'),
              icon: Icon(_showArchived ? Icons.inbox_outlined : Icons.archive_outlined),
              label: Text(_showArchived ? 'Active conversations' : 'Archived conversations'),
              onPressed: () => setState(() {
                _showArchived = !_showArchived;
                _confirmedRemoteUpdates.clear();
                _resetPages();
              }),
            ),
          ),
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
                              ? (_showArchived ? 'No archived conversations' : 'No conversations yet')
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
                    title: const Text('Server search unavailable. Saved conversations remain visible.', textAlign: TextAlign.center),
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
                    title: const Text('Could not load more conversations. Previous results are saved.', textAlign: TextAlign.center),
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
