import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
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
  bool _journalUnavailable = false;
  bool get journalUnavailable => _journalUnavailable;
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
    if (_journalUnavailable) {
      return Future.error(StateError('Encrypted conversation needs recovery'));
    }
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
    var restored = false;
    try {
      final saved = await journal.restore();
      restored = true;
      _journalUnavailable = false;
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
    } catch (_) {
      if (!restored) _journalUnavailable = true;
      error = restored
          ? 'Could not resume conversation updates. Refresh to try again.'
          : 'Could not restore encrypted messages. Refresh to retry before sending.';
    } finally {
      loading = false;
      changed();
    }
  }

  Future<void> refresh({bool older = false}) async {
    if (_journalUnavailable) {
      // The existing Refresh action is also the explicit recovery path.
      // Never overwrite a prior encrypted unsent queue after failed restore.
      await start();
      return;
    }
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
        final code = e is DioException ? e.response?.statusCode : null;
        if (code == 401 || code == 403 || code == 404 || code == 410) {
          // A definitive authorization or visibility rejection revokes every
          // loaded private row and cursor; never show a stale blocked thread.
          messages = [];
          conversation = null;
          before = null;
          _loadedSearch = '';
          error = 'Conversation access is no longer available. Return to Chats.';
        } else if (query != _loadedSearch) {
          // A failed new search must not present old, unrelated results as
          // matches. Preserve the thread identity, not the previous hits.
          messages = [];
          before = null;
          _loadedSearch = query;
          error = 'Could not load search results. Check your connection and retry.';
        } else if (conversation != null) {
          // A transient outage does not mean the loaded conversation vanished.
          // Keep current-account rows visible but explicitly mark them stale.
          error = 'Could not refresh messages. Previously loaded messages may be out of date.';
        } else {
          error = 'Could not load conversation. Check your connection or return to Chats.';
        }
      }
    } finally {
      changed();
    }
  }

  /// Only incoming, non-deleted messages can acknowledge what this viewer saw.
  /// A newer outgoing bubble is never a valid receipt anchor.
  String? get lastIncomingMessageId {
    for (final message in messages.reversed) {
      if (!message.mine && !message.deleted) return message.id;
    }
    return null;
  }

  /// Return the confirmed anchor, never an optimistic acknowledgement. The
  /// widget retries after a later refresh/resume when the request failed.
  Future<String?> visibleRead() async {
    if (!current || search.isNotEmpty) return null;
    final messageId = lastIncomingMessageId;
    if (messageId == null) return null;
    try {
      await transport.request(
        'POST',
        '/conversations/$id/read',
        data: {'messageId': messageId},
      );
      return current ? messageId : null;
    } catch (_) {
      return null;
    }
  }

  // Duplicate or out-of-order push/reconnect snapshots must never rewind the
  // event cursor and redeliver (or inadvertently skip) unread updates.
  void _advanceCursor(Object? raw) {
    if (raw is! num || !raw.isFinite) return;
    final next = raw.toInt();
    if (next > cursor && raw == next) cursor = next;
  }

  void _connect() {
    if (!current) return;
    _events = transport
        .stream(cursor)
        .listen(
          (event) {
            if (!current) return;
            _advanceCursor(event['sequence']);
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
        _advanceCursor(catchup['cursor']);
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
    if (!current || busy || _journalUnavailable) return false;
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
    if (busy || !current || _journalUnavailable) return;
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
