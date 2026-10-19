import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/controller.dart';
import 'package:masanawa/src/human_chat/models.dart';
import 'package:masanawa/src/human_chat/transport.dart';

class Journal extends HumanJournal {
  Journal(String owner) : super(owner, 'thread');
  HumanJson saved = {};
  bool fail = false;
  @override
  Future<HumanJson> restore() async =>
      jsonDecode(jsonEncode(saved)) as HumanJson;
  @override
  Future<void> save(
    String draft,
    List<HumanJson> pending, {
    List<HumanJson> attachments = const [],
    String? reply,
  }) async {
    if (fail) throw StateError('Encrypted store unavailable');
    saved = jsonDecode(
      jsonEncode({
        'draft': draft,
        'pending': pending,
        'attachments': attachments,
        'reply': reply,
      }),
    ) as HumanJson;
  }
}

class Transport extends HumanCommunicationTransport {
  Transport() : super(ApiClient(dio: Dio()));
  final sent = <HumanJson>[];
  bool fail = false;
  Completer<HumanJson>? wait;
  final events = StreamController<HumanJson>.broadcast();
  @override
  Stream<HumanJson> stream(int after) => events.stream;
  @override
  Future<HumanJson> request(
    String method,
    String path, {
    Object? data,
    Map<String, dynamic>? query,
  }) async {
    if (wait != null) return wait!.future;
    if (method == 'POST' && path.endsWith('/messages')) {
      sent.add(Map<String, dynamic>.from(data as Map));
      if (fail) throw StateError('Network interrupted after write');
      return {'id': 'message'};
    }
    if (path.endsWith('/messages')) return {'items': [], 'nextCursor': null};
    return {
      'id': 'thread',
      'peer': {'handle': 'peer', 'displayName': 'Peer'},
      'state': 'accepted',
      'initiator': true,
      'updatedAt': '2026-10-19T12:00:00Z',
    };
  }
}

void main() {
  test('retry preserves immutable request identity and reply/media after interrupted response', () async {
    final t = Transport()..fail = true;
    final j = Journal('alice');
    final c = HumanThreadController(t, j, 'thread');
    await c.enqueue(
      text: 'hello',
      attachments: ['media'],
      replyToId: 'earlier',
    );
    expect(c.pending, hasLength(1));
    expect(j.saved['pending'], hasLength(1));
    final original = jsonEncode(t.sent.single);
    t.fail = false;
    await c.retry();
    expect(jsonEncode(t.sent.last), original);
    expect(c.pending, isEmpty);
    expect(j.saved['pending'], isEmpty);
    c.dispose();
    await t.events.close();
  });
  test(
    'private store failure prevents network send and keeps recoverable draft',
    () async {
      final t = Transport();
      final j = Journal('alice')..fail = true;
      final c = HumanThreadController(t, j, 'thread');
      expect(await c.enqueue(text: 'private'), false);
      expect(t.sent, isEmpty);
      expect(c.pending, isEmpty);
      expect(c.draft, 'private');
      await c.retry();
      expect(t.sent, isEmpty);
      c.dispose();
      await t.events.close();
    },
  );
  test(
    'encrypted drafts restore attachment IDs and remain account scoped',
    () async {
      final t = Transport();
      final j = Journal('alice');
      final a = HumanThreadController(t, j, 'thread');
      a.draft = 'draft';
      a.draftAttachments = [
        {'id': 'media', 'kind': 'image'},
      ];
      a.draftReply = 'reply';
      await a.persist();
      a.dispose();
      final restored = HumanThreadController(t, j, 'thread');
      await restored.start();
      expect(restored.draft, 'draft');
      expect(restored.draftAttachments.single['id'], 'media');
      expect(restored.draftReply, 'reply');
      expect(Journal('bob').key, isNot(j.key));
      restored.dispose();
      await t.events.close();
    },
  );
  test('late account response never installs stale private content', () async {
    final t = Transport()..wait = Completer<HumanJson>();
    final c = HumanThreadController(t, Journal('alice'), 'thread');
    final loading = c.refresh();
    c.dispose();
    t.cancel();
    t.wait!.complete({'items': [], 'id': 'old'});
    await loading;
    expect(c.conversation, isNull);
    expect(c.messages, isEmpty);
    await t.events.close();
  });
  test(
    'viewer-only properties and tombstone attachment behavior are typed',
    () {
      final c = HumanConversation({
        'id': 't',
        'peer': {'handle': 'p', 'displayName': 'Peer'},
        'state': 'pending',
        'initiator': false,
        'updatedAt': '2026-10-19T12:00:00Z',
        'unreadCount': 3,
        'pinned': true,
      });
      expect(c.unreadCount, 3);
      expect(c.pinned, true);
      expect(c.lastMessage, isNull);
      expect(c.updatedAt.isUtc, true);
      final m = HumanMessage({
        'id': 'm',
        'text': '',
        'mine': true,
        'deleted': true,
        'createdAt': '2026-10-19T12:00:00Z',
      });
      expect(m.deleted, true);
      expect(m.attachments, isEmpty);
    },
  );
}
