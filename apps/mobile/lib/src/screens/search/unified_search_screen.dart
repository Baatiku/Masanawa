import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

import '../../features/masana_chat/inbox_search.dart';
import '../../features/rooms/rooms_client.dart';
import '../../features/home_feed/feed_api.dart';
import '../../screens/rooms/rooms_screen.dart';
import '../../screens/status/status_screen.dart';
import '../../state/agent_directory_state.dart';
import '../../state/session_state.dart';

/// Authorized, low-data discovery across existing account-bound providers.
/// Status covers the latest approved feed page, not a misleading full-text
/// index of every historical post.
class UnifiedSearchScreen extends ConsumerStatefulWidget {
  const UnifiedSearchScreen({super.key});
  @override
  ConsumerState<UnifiedSearchScreen> createState() => _UnifiedSearchScreenState();
}

class _UnifiedSearchScreenState extends ConsumerState<UnifiedSearchScreen> {
  static const _store = FlutterSecureStorage();
  final _input = TextEditingController();
  Timer? _debounce;
  int _generation = 0;
  String? _owner;
  bool _loading = false;
  String? _error;
  List<String> _recent = [];
  Future<void> _historyWrites = Future<void>.value();
  List<MasanaInboxSearchItem> _chats = [];
  List<RoomInfo> _rooms = [];
  List<FeedPost> _posts = [];
  String? _chatError, _roomError, _statusError;

  @override
  void dispose() {
    _generation++;
    _debounce?.cancel();
    _input.dispose();
    super.dispose();
  }

  String _key(String owner) => 'masanawa.search.history.v1.${Uri.encodeComponent(owner)}';

  void _bindOwner(String? account) {
    if (_owner == account) return;
    _owner = account;
    _generation++;
    _debounce?.cancel();
    _input.clear();
    _recent = [];
    _chats = [];
    _rooms = [];
    _posts = [];
    _error = null;
    _loading = false;
    _chatError = _roomError = _statusError = null;
    if (account != null) {
      final ticket = _generation;
      unawaited(_restore(account, ticket));
    }
  }

  Future<void> _restore(String owner, int ticket) async {
    try {
      final data = await _store.read(key: _key(owner));
      final decoded = jsonDecode(data ?? '[]');
      if (decoded is! List) return;
      final terms = decoded.whereType<String>().where(
        (q) => q.length >= 2 && q.length <= 80,
      ).take(8).toList();
      if (!mounted || _owner != owner || ticket != _generation) return;
      setState(() => _recent = terms);
    } catch (_) {
      // Encrypted device storage may be unavailable; search still works.
    }
  }

  Future<void> _saveHistory(String owner, String term) async {
    final updated = [
      term,
      ..._recent.where((q) => q.toLowerCase() != term.toLowerCase()),
    ].take(8).toList();
    if (_owner != owner) return;
    setState(() => _recent = updated);
    // Serialize writes and deletes: clearing history cannot be undone by
    // an older in-flight encrypted storage write.
    final payload = jsonEncode(updated);
    _historyWrites = _historyWrites.then((_) async {
      if (_owner == owner) {
        await _store.write(key: _key(owner), value: payload);
      }
    }).catchError((Object _) {});
    await _historyWrites;
  }

  Future<void> _clearHistory() async {
    final owner = _owner;
    if (owner == null) return;
    final previous = [..._recent];
    setState(() => _recent = []);
    try {
      _historyWrites = _historyWrites.then(
        (_) => _store.delete(key: _key(owner)));
      await _historyWrites;
    } catch (_) {
      _historyWrites = Future<void>.value();
      if (mounted && _owner == owner) {
        setState(() => _recent = previous);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not clear saved searches. Retry.')),
        );
      }
    }
  }

  void _changed(String value) {
    ++_generation;
    _debounce?.cancel();
    final term = value.trim();
    setState(() {
      _loading = term.length >= 2;
      _error = null;
      _chats = [];
      _rooms = [];
      _posts = [];
      _chatError = _roomError = _statusError = null;
    });
    if (term.length < 2 || term.length > 80) return;
    final ticket = _generation;
    _debounce = Timer(const Duration(milliseconds: 320),
      () => unawaited(_search(term, ticket)));
  }

  Future<void> _search(String term, int ticket) async {
    final session = ref.read(sessionProvider);
    if (session is! SessionSignedIn || session.user.id != _owner) return;
    final owner = session.user.id;
    final token = session.tokens.accessToken;
    final chatsApi = ref.read(masanaInboxSearchProvider);
    final roomApi = ref.read(roomsClientProvider);
    final feedApi = ref.read(statusFeedApiProvider);
    Future<Object?> safely(Future<Object?> Function() read) async {
      try {
        return await read();
      } catch (_) {
        return null;
      }
    }
    final results = await Future.wait<Object?>([
      safely(() => chatsApi.search(bearer: token, query: term)),
      safely(() => roomApi.list(joined: false, query: term)),
      safely(() => feedApi.list(mode: 'for_you')),
    ]);
    if (!mounted || ticket != _generation || _owner != owner ||
        ref.read(sessionProvider) is! SessionSignedIn ||
        (ref.read(sessionProvider) as SessionSignedIn).user.id != owner ||
        _input.text.trim() != term) return;

    final chatData = results[0];
    final roomData = results[1];
    final feedData = results[2];
    setState(() {
      _chats = chatData is List<MasanaInboxSearchItem>
          ? chatData.take(20).toList() : [];
      _rooms = roomData is List<RoomInfo> ? roomData.take(20).toList() : [];
      // The Status endpoint supplies the latest page. Explicitly avoid
      // claiming a corpus-wide search or showing unapproved content.
      _posts = feedData is FeedPage
          ? feedData.items.where((post) =>
              post.body.toLowerCase().contains(term.toLowerCase()) ||
              (post.authorName ?? '').toLowerCase().contains(term.toLowerCase()))
              .take(10).toList() : [];
      _chatError = chatData == null ? 'Chats unavailable' : null;
      _roomError = roomData == null ? 'Rooms unavailable' : null;
      _statusError = feedData == null ? 'Status unavailable' : null;
      _loading = false;
    });
    unawaited(_saveHistory(owner, term));
  }

  Widget _heading(String title, {String? detail}) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 20, 16, 7),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
      if (detail != null) Text(detail,
        style: Theme.of(context).textTheme.bodySmall),
    ]),
  );

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final account = session is SessionSignedIn ? session.user.id : null;
    // Never retain private results across a login, logout, or account switch.
    _bindOwner(account);
    final query = _input.text.trim();
    final agents = ref.watch(agentDirectoryProvider);
    final matching = query.length >= 2
      ? agents.agents.where((agent) =>
          agent.displayName.toLowerCase().contains(query.toLowerCase()) ||
          agent.roleLabel.toLowerCase().contains(query.toLowerCase()) ||
          agent.about.toLowerCase().contains(query.toLowerCase())).take(20).toList()
      : agents.agents.take(8).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Search Masanawa')),
      body: account == null
        ? const Center(child: Text('Sign in to search Masana and Rooms.'))
        : Column(children: [
          Padding(padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TextField(
              controller: _input,
              maxLength: 80,
              textInputAction: TextInputAction.search,
              onChanged: _changed,
              onSubmitted: (text) {
                _debounce?.cancel();
                final term = text.trim();
                if (term.length >= 2 && term.length <= 80) {
                  unawaited(_search(term, ++_generation));
                }
              },
              decoration: InputDecoration(
                hintText: 'Masana, chats, Rooms, Status',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query.isEmpty ? null
                    : IconButton(tooltip: 'Clear search',
                        icon: const Icon(Icons.close),
                        onPressed: () { _input.clear(); _changed(''); }),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          if (_loading) const LinearProgressIndicator(minHeight: 2),
          Expanded(child: ListView(children: [
            if (query.length < 2 && _recent.isNotEmpty) ...[
              ListTile(
                title: const Text('Recent searches',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                trailing: TextButton(
                  onPressed: _clearHistory,
                  child: const Text('Clear history')),
              ),
              for (final term in _recent) ListTile(
                leading: const Icon(Icons.history),
                title: Text(term, maxLines: 1),
                onTap: () {
                  _input.text = term;
                  _input.selection = TextSelection.collapsed(offset: term.length);
                  _changed(term);
                },
              ),
            ],
            _heading('Masana'),
            if (agents.loading && matching.isEmpty)
              const ListTile(title: Text('Loading Masana…'))
            else if (matching.isEmpty)
              const ListTile(title: Text('No matching Masana'))
            else for (final agent in matching) ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person_outline)),
              title: Text(agent.displayName),
              subtitle: Text(agent.roleLabel),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => context.push(
                '/masana/${Uri.encodeComponent(agent.characterId)}'),
            ),
            if (query.length >= 2) ...[
              _heading('Conversations'),
              if (_chatError != null) ListTile(title: Text(_chatError!),
                trailing: IconButton(onPressed: () => _changed(query),
                  icon: const Icon(Icons.refresh)))
              else if (_chats.isEmpty && !_loading)
                const ListTile(title: Text('No matching conversations'))
              else for (final chat in _chats) ListTile(
                leading: const Icon(Icons.chat_bubble_outline),
                title: Text(chat.displayName),
                subtitle: Text(chat.profession),
                onTap: () => context.push('/chat/${Uri.encodeComponent(chat.characterId)}'),
              ),
              _heading('Rooms'),
              if (_roomError != null) ListTile(title: Text(_roomError!),
                trailing: IconButton(onPressed: () => _changed(query),
                  icon: const Icon(Icons.refresh)))
              else if (_rooms.isEmpty && !_loading)
                const ListTile(title: Text('No matching Rooms'))
              else for (final room in _rooms) ListTile(
                leading: const Icon(Icons.groups_outlined),
                title: Text(room.title),
                subtitle: Text(room.teacher),
                onTap: () => context.push('/rooms/${Uri.encodeComponent(room.id)}'),
              ),
              _heading('Recent Status matches',
                detail: 'Searches the latest approved updates'),
              if (_statusError != null) ListTile(title: Text(_statusError!),
                trailing: IconButton(onPressed: () => _changed(query),
                  icon: const Icon(Icons.refresh)))
              else if (_posts.isEmpty && !_loading)
                const ListTile(title: Text('No matching recent Status updates'))
              else for (final post in _posts) ListTile(
                leading: const Icon(Icons.article_outlined),
                title: Text(post.authorName ?? 'Masana'),
                subtitle: Text(post.body, maxLines: 2,
                  overflow: TextOverflow.ellipsis),
                onTap: () => context.push('/status/${Uri.encodeComponent(post.id)}'),
              ),
              if (!_loading && _error != null)
                Padding(padding: const EdgeInsets.all(16), child: Text(_error!)),
            ],
          ])),
        ]),
    );
  }
}
