import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../core/request_id.dart';
import 'models.dart';
import 'transport.dart';

/// Durable encrypted journal. A request's identity and body never change on retry.
class HumanJournal {
  HumanJournal(this.owner, this.thread, {FlutterSecureStorage? storage})
    : storage = storage ?? const FlutterSecureStorage();
  final String owner, thread;
  final FlutterSecureStorage storage;
  String get key => 'human.v1.$owner.$thread';
  Future<HumanJson> restore() async {
    final value = await storage.read(key: key);
    return value == null
        ? {}
        : Map<String, dynamic>.from(jsonDecode(value) as Map);
  }

  Future<void> save(
    String draft,
    List<HumanJson> pending, {
    List<HumanJson> attachments = const [],
    String? reply,
  }) => storage.write(
    key: key,
    value: jsonEncode({
      'draft': draft,
      'pending': pending,
      'attachments': attachments,
      'reply': reply,
    }),
  );
}

class HumanThreadController extends ChangeNotifier {
  HumanThreadController(this.transport, this.journal, this.id);
  final HumanCommunicationTransport transport;
  final HumanJournal journal;
  final String id;
  HumanConversation? conversation;
  List<HumanMessage> messages = [];
  List<HumanJson> pending = [];
  String draft = '', search = '';
  List<HumanJson> draftAttachments = [];
  String? draftReply;
  String? before, error;
  bool loading = true, closed = false, sending = false, journaling = false;
  bool get busy => sending || journaling;
  int cursor = 0;
  StreamSubscription<HumanJson>? _events;
  Timer? _retry;
  Timer? _poll;
  int _loadEpoch = 0;
  String _loadedSearch = '';
  Future<void> _writes = Future<void>.value();
  bool get current => !closed && transport.active;
  void changed() {
    if (current) notifyListeners();
  }

  Future<void> persist() {
    final text = draft;
    final queue = pending.map((e) => Map<String, dynamic>.from(e)).toList();
    final files = draftAttachments
        .map((e) => Map<String, dynamic>.from(e))
        .toList();
    final reply = draftReply;
    return _writes = _writes
        .catchError((Object _) {})
        .then(
          (_) => journal.save(text, queue, attachments: files, reply: reply),
        );
  }

  Future<void> start() async {
    try {
      final saved = await journal.restore();
      if (!current) return;
      draft = saved['draft'] as String? ?? '';
      draftAttachments = (saved['attachments'] as List? ?? [])
          .map((e) => Map<String, dynamic>.from(e as Map))
          .toList();
      draftReply = saved['reply'] as String?;
      pending = (saved['pending'] as List? ?? [])
          .map((e) => Map<String, dynamic>.from(e as Map))
          .toList();
      await refresh();
      if (current) {
        _connect();
        _poll = Timer.periodic(const Duration(seconds: 15), (_) {
          if (current) unawaited(refresh());
        });
      }
    } catch (e) {
      error = 'Could not restore this private conversation. Please retry.';
    } finally {
      loading = false;
      changed();
    }
  }

  Future<void> refresh({bool older = false}) async {
    final epoch = ++_loadEpoch;
    final query = search;
    final append = older && query == _loadedSearch;
    final target = query == _loadedSearch ? messages.length : 0;
    try {
      final results = await Future.wait([
        transport.request('GET', '/conversations/$id'),
        transport.request(
          'GET',
          '/conversations/$id/messages',
          query: {
            if (append && before != null) 'before': before,
            if (query.isNotEmpty) 'query': query,
          },
        ),
      ]);
      if (!current || epoch != _loadEpoch) return;
      var page = (results[1]['items'] as List)
          .map((e) => HumanMessage(Map<String, dynamic>.from(e as Map)))
          .toList();
      var next = results[1]['nextCursor'] as String?;
      final seen = <String>{};
      // Reauthorize all loaded history, including older tombstones and revoked media.
      while (!append &&
          page.length < target &&
          next != null &&
          seen.add(next)) {
        final extra = await transport.request(
          'GET',
          '/conversations/$id/messages',
          query: {'before': next, if (query.isNotEmpty) 'query': query},
        );
        if (!current || epoch != _loadEpoch) return;
        page = [
          ...(extra['items'] as List).map(
            (e) => HumanMessage(Map<String, dynamic>.from(e as Map)),
          ),
          ...page,
        ];
        next = extra['nextCursor'] as String?;
      }
      if (!current || epoch != _loadEpoch) return;
      conversation = HumanConversation(results[0]);
      messages = append
          ? [...page, ...messages.where((m) => !page.any((p) => p.id == m.id))]
          : page;
      before = next;
      _loadedSearch = query;
      error = null;
    } catch (e) {
      if (current && epoch == _loadEpoch) {
        error = 'Conversation unavailable. Check your connection or return to Chats.';
        messages = [];
        conversation = null;
      }
    } finally {
      changed();
    }
  }

  Future<void> visibleRead() async {
    if (!current || search.isNotEmpty || messages.isEmpty) return;
    try {
      await transport.request(
        'POST',
        '/conversations/$id/read',
        data: {'messageId': messages.last.id},
      );
    } catch (_) {}
  }

  void _connect() {
    if (!current) return;
    _events = transport
        .stream(cursor)
        .listen(
          (event) {
            cursor = (event['sequence'] as num?)?.toInt() ?? cursor;
            if (event['conversationId'] == id) unawaited(refresh());
          },
          onError: (Object _) => _reconnect(),
          onDone: _reconnect,
          cancelOnError: true,
        );
  }

  void _reconnect() {
    if (!current) return;
    _retry?.cancel();
    _retry = Timer(const Duration(seconds: 3), () async {
      try {
        final catchup = await transport.request(
          'GET',
          '/events',
          query: {'after': cursor},
        );
        if (!current) return;
        cursor = (catchup['cursor'] as num?)?.toInt() ?? cursor;
        await refresh();
      } catch (_) {}
      if (current) _connect();
    });
  }

  Future<bool> enqueue({
    required String text,
    List<String> attachments = const [],
    String? replyToId,
  }) async {
    if (!current || busy) return false;
    journaling = true;
    changed();
    final oldDraft = draft;
    final oldAttachments = draftAttachments;
    final oldReply = draftReply;
    final body = {
      'requestId': createRequestId(),
      'text': text,
      if (replyToId != null) 'replyToId': replyToId,
      'attachments': attachments.map((id) => {'id': id}).toList(),
    };
    pending.add(body);
    draft = '';
    draftAttachments = [];
    draftReply = null;
    try {
      await persist();
      journaling = false;
      if (current) await retry();
      return true;
    } catch (e) {
      pending.remove(body);
      draft = oldDraft.isEmpty ? text : oldDraft;
      draftAttachments = oldAttachments;
      draftReply = oldReply;
      error = 'Private draft could not be saved: $e';
      return false;
    } finally {
      journaling = false;
      changed();
    }
  }

  Future<void> retry() async {
    if (busy || !current) return;
    sending = true;
    changed();
    try {
      await persist();
      while (pending.isNotEmpty && current) {
        final body = pending.first;
        await transport.request(
          'POST',
          '/conversations/$id/messages',
          data: body,
        );
        if (!current) return;
        pending.removeAt(0);
        await persist();
      }
      if (current) await refresh();
    } catch (e) {
      if (current)
        error = 'Message not confirmed. Retry sends the same request. $e';
    } finally {
      sending = false;
      changed();
    }
  }

  Future<void> decision(String action) async {
    await transport.request(
      'POST',
      '/conversations/$id/decision',
      data: {'action': action, 'requestId': createRequestId()},
    );
    if (current) await refresh();
  }

  @override
  void dispose() {
    closed = true;
    _retry?.cancel();
    _poll?.cancel();
    unawaited(_events?.cancel() ?? Future<void>.value());
    super.dispose();
  }
}
