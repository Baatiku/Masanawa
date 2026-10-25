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
    .family<List<MasanaInboxSearchItem>, String>((ref, key) {
      final parts = jsonDecode(key) as List;
      return ref
          .watch(masanaInboxSearchProvider)
          .search(bearer: parts[1] as String, query: parts[2] as String);
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
  String _filter = 'All', _query = '', _remoteQuery = '';
  Timer? _searchDebounce;
  final Map<String, MasanaInboxSearchItem> _confirmedPinUpdates = {};
  @override
  void dispose() {
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
    });
    if (_query.isNotEmpty && _query.length <= 80)
      _searchDebounce = Timer(const Duration(milliseconds: 350), () {
        if (mounted) setState(() => _remoteQuery = _query);
      });
  }

  Future<void> _refresh() => ref.read(agentDirectoryProvider.notifier).refresh();

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
    ]);
    final server =
        _remoteQuery.isNotEmpty && _filter != 'Archived'
        ? ref.watch(_serverSearch(serverKey))
        : null;
    final savedIds = widget.masanaThreads.map((t) => t.characterId).toSet();
    final serverRows = (server?.valueOrNull ?? const <MasanaInboxSearchItem>[])
        .where(
          (r) =>
              !savedIds.contains(r.characterId) &&
              (_filter != 'Unread' || r.unreadCount > 0),
        )
        .map((r) {
          final confirmed = _confirmedPinUpdates[r.characterId];
          return confirmed != null && confirmed.revision > r.revision
              ? confirmed : r;
        })
        .toList();
    final offline = !ref.watch(aiChatProvider).online;
    final rows = <({DateTime at, bool pinned, String id, Widget row})>[];
    final archived = _filter == 'Archived';
      for (final t in widget.masanaThreads) {
        if (t.archived != archived || (_filter == 'Unread' && t.unread == 0))
          continue;
        final agent = ref.watch(agentDirectoryProvider).find(t.characterId);
        if (_query.isNotEmpty &&
            !'${agent?.displayName ?? ''} ${t.characterId} ${t.title ?? ''} ${t.draft} ${t.messages.map((m) => m.text).join(' ')}'
                .toLowerCase()
                .contains(_query))
          continue;
        rows.add((
          at: t.updatedAt,
          pinned: t.pinned,
          id: 'masana-${t.characterId}',
          row: widget.masanaRow(t),
        ));
      }
    rows.sort((a, b) {
      final pin = (b.pinned ? 1 : 0).compareTo(a.pinned ? 1 : 0);
      if (pin != 0) return pin;
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              for (final filter in const ['All', 'Unread', 'Archived'])
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: ChoiceChip(
                    label: Text(filter),
                    selected: filter == _filter,
                    onSelected: (_) => setState(() => _filter = filter),
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: _refresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              key: PageStorageKey('unified-inbox-$_filter'),
              children: [
                if (rows.isEmpty)
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
                  const LinearProgressIndicator(minHeight: 2),
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
                if (serverRows.isNotEmpty)
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Other server conversations'),
                  ),
                for (final result in serverRows)
                  ListTile(
                    key: ValueKey('remote-${result.characterId}'),
                    leading: MasanaPortraitAvatar(
                      characterId: result.characterId,
                      agent: ref
                          .watch(agentDirectoryProvider)
                          .find(result.characterId),
                      displayName: result.displayName,
                      size: 44,
                    ),
                    title: Text(result.displayName),
                    subtitle: Text(
                      result.lastMessage.isEmpty
                          ? result.profession
                          : result.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: IconButton(
                      tooltip: result.pinned
                          ? 'Unpin server conversation'
                          : 'Pin server conversation',
                      icon: Icon(
                        result.pinned
                            ? Icons.push_pin
                            : Icons.push_pin_outlined,
                      ),
                      onPressed: () async {
                        final owner = ref.read(sessionProvider);
                        final access = ref.read(masanaInboxSearchProvider);
                        try {
                          final nextRevision = await access.setPinned(
                            bearer: session.tokens.accessToken,
                            characterId: result.characterId,
                            pinned: !result.pinned,
                            expectedRevision: result.revision,
                          );
                          if (mounted &&
                              identical(owner, ref.read(sessionProvider))) {
                            setState(() => _confirmedPinUpdates[result.characterId] =
                                result.withPin(!result.pinned, nextRevision));
                            ref.invalidate(_serverSearch(serverKey));
                          }
                        } catch (_) {
                          if (mounted &&
                              identical(owner, ref.read(sessionProvider)))
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Could not update pin.'),
                              ),
                            );
                        }
                      },
                    ),
                    onTap: () {
                      final owner = ref.read(sessionProvider);
                      if (owner is! SessionSignedIn) return;
                      context.push('/chat/${Uri.encodeComponent(result.characterId)}');
                      // Acknowledgment is server-authorized and deliberately
                      // independent of navigation: a transient failure must
                      // never prevent opening the conversation.
                      unawaited(() async {
                        if (!mounted || !identical(owner, ref.read(sessionProvider))) return;
                        try {
                          await ref.read(masanaInboxSearchProvider).markRead(
                            bearer: owner.tokens.accessToken,
                            characterId: result.characterId,
                          );
                        } catch (_) {
                          // Failed read receipts can be retried when chat opens.
                        }
                      }());
                    },
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
