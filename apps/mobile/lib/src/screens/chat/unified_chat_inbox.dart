import '../../features/masana_chat/inbox_search.dart';
import '../../agents/masana_portrait_avatar.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../human_chat/human_chat.dart';
import '../../state/ai_chat_state.dart';
import '../../state/agent_directory_state.dart';
import '../../state/session_state.dart';
import '../../chat/chat_format.dart';
import '../../ui/components/conversation_search_field.dart';

final _serverSearch = FutureProvider.autoDispose
    .family<List<MasanaInboxSearchItem>, String>((ref, key) {
      final parts = jsonDecode(key) as List;
      return ref
          .watch(masanaInboxSearchProvider)
          .search(bearer: parts[1] as String, query: parts[2] as String);
    });

/// One ordered inbox. Peer kind affects routing, never its position in All.
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
    with WidgetsBindingObserver {
  final _search = TextEditingController();
  String _filter = 'All', _query = '', _remoteQuery = '';
  Timer? _searchDebounce;
  Timer? _timer;
  static final _key = jsonEncode(['all', '']);
  bool _foreground = true;
  final Map<String, MasanaInboxSearchItem> _confirmedPinUpdates = {};
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (mounted && _foreground && ref.read(humanAccountProvider) != null)
        ref.invalidate(humanInboxProvider(_key));
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    if (_foreground) ref.invalidate(humanInboxProvider(_key));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _searchDebounce?.cancel();
    _search.dispose();
    WidgetsBinding.instance.removeObserver(this);
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

  Future<void> _refresh() async {
    ref.invalidate(humanInboxProvider(_key));
    await Future.wait([
      ref.read(humanInboxProvider(_key).future),
      ref.read(agentDirectoryProvider.notifier).refresh(),
    ]);
  }

  Future<void> _options(HumanConversation c) async {
    final transport = ref.read(humanCommunicationTransportProvider);
    final choice = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheet) => SafeArea(
        child: Wrap(
          children: [
            for (final item in [
              ('pinned', c.pinned ? 'Unpin' : 'Pin'),
              ('muted', c.muted ? 'Unmute' : 'Mute'),
              ('archived', c.archived ? 'Unarchive' : 'Archive'),
            ])
              ListTile(
                title: Text(item.$2),
                onTap: () => Navigator.pop(sheet, item.$1),
              ),
          ],
        ),
      ),
    );
    if (choice == null || !mounted || !transport.active) return;
    try {
      await transport.request(
        'PATCH',
        '/conversations/${c.id}',
        data: {choice: !(c.json[choice] == true)},
      );
      if (mounted && transport.active) ref.invalidate(humanInboxProvider(_key));
    } catch (_) {
      if (mounted && transport.active)
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not update this conversation.')),
        );
    }
  }

  Widget _human(HumanConversation c) {
    final last = c.lastMessage;
    final image = c.peer['avatarUrl'] as String?;
    final status = last?.json['deliveryStatus'] as String?;
    return ListTile(
      key: ValueKey('human-${c.id}'),
      leading: GestureDetector(
        onTap: () => context.push('/u/${Uri.encodeComponent(c.handle)}'),
        child: CircleAvatar(
          foregroundImage: image?.isNotEmpty == true
              ? NetworkImage(image!)
              : null,
          onForegroundImageError: image?.isNotEmpty == true ? (_, __) {} : null,
          child: Text(c.name.isEmpty ? '?' : c.name.characters.first),
        ),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(c.name, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
          if (c.pinned) const Icon(Icons.push_pin, size: 14),
          if (c.muted) const Icon(Icons.volume_off_outlined, size: 14),
        ],
      ),
      subtitle: Row(
        children: [
          if (last?.mine == true)
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Icon(
                status == 'read' || status == 'delivered'
                    ? Icons.done_all
                    : Icons.done,
                size: 15,
                color: status == 'read'
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
            ),
          Expanded(
            child: Text(
              last?.deleted == true
                  ? 'Message deleted'
                  : last != null && last.text.isNotEmpty
                  ? last.text
                  : last?.attachments.isNotEmpty == true
                  ? last!.attachments.first.name
                  : c.state == 'pending'
                  ? 'Message request'
                  : 'Start chatting',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            formatChatTime(c.updatedAt),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          if (c.unreadCount > 0) Badge(label: Text('${c.unreadCount}')),
        ],
      ),
      onTap: () async {
        await context.push('/human/chat/${Uri.encodeComponent(c.id)}');
        if (mounted) ref.invalidate(humanInboxProvider(_key));
      },
      onLongPress: () => _options(c),
    );
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
    ]);
    final server =
        _remoteQuery.isNotEmpty && _filter != 'People' && _filter != 'Archived'
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
    final humans = ref.watch(humanInboxProvider(_key));
    final people = humans.valueOrNull ?? const <HumanConversation>[];
    final offline = !ref.watch(aiChatProvider).online;
    final rows = <({DateTime at, bool pinned, String id, Widget row})>[];
    final archived = _filter == 'Archived';
    if (_filter != 'Masana')
      for (final c in people) {
        if (c.archived != archived || (c.state == 'pending' && !c.initiator))
          continue;
        if (_filter == 'Unread' && c.unreadCount == 0) continue;
        if (_query.isNotEmpty &&
            !'${c.name} @${c.handle} ${c.lastMessage?.text ?? ''}'
                .toLowerCase()
                .contains(_query))
          continue;
        rows.add((
          at: c.updatedAt,
          pinned: c.pinned,
          id: 'human-${c.id}',
          row: _human(c),
        ));
      }
    if (_filter != 'People')
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
              for (final filter in [
                'All',
                'People',
                'Masana',
                'Unread',
                'Archived',
              ])
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
                if (people.any((c) => c.state == 'pending' && !c.initiator))
                  ListTile(
                    leading: const Icon(Icons.mark_chat_unread_outlined),
                    title: const Text('Message requests'),
                    onTap: () => context.push('/human/requests'),
                  ),
                if (humans.isLoading)
                  const LinearProgressIndicator(minHeight: 2),
                if (humans.hasError)
                  ListTile(
                    title: const Text('Could not refresh people chats'),
                    trailing: TextButton(
                      onPressed: () => ref.invalidate(humanInboxProvider(_key)),
                      child: const Text('Retry'),
                    ),
                  ),
                if (rows.isEmpty && !humans.isLoading)
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
                          child: const Text('Find a contact'),
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
                    trailing: TextButton(
                      onPressed: () => ref.invalidate(_serverSearch(serverKey)),
                      child: const Text('Retry server search'),
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
                    onTap: () => context.push(
                      '/chat/${Uri.encodeComponent(result.characterId)}',
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
