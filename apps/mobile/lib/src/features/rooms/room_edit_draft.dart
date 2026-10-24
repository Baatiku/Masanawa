import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'room_community_api.dart';

/// An unsent draft has no request ID, retry or server authority.
class RoomEditDraft {
  const RoomEditDraft(
    this.kind,
    this.target,
    this.revision,
    this.original,
    this.text,
  );
  final String kind, target, original, text;
  final int revision;
  String encode() => jsonEncode({
    'v': 1,
    'kind': kind,
    'target': target,
    'revision': revision,
    'original': original,
    'text': text,
  });
  factory RoomEditDraft.decode(String raw) {
    if (raw.length > 80000) throw const FormatException('Invalid edit draft');
    final v = jsonDecode(raw);
    if (v is! Map ||
        v['v'] != 1 ||
        !const ['post', 'reply'].contains(v['kind']) ||
        v['target'] is! String ||
        (v['target'] as String).isEmpty ||
        (v['target'] as String).length > 160 ||
        v['revision'] is! int ||
        (v['revision'] as int) < 0 ||
        v['original'] is! String ||
        v['text'] is! String ||
        v.keys.any(
          (k) => !const [
            'v',
            'kind',
            'target',
            'revision',
            'original',
            'text',
          ].contains(k),
        )) {
      throw const FormatException('Invalid edit draft');
    }
    final max = v['kind'] == 'reply' ? 2000 : 6000;
    if ((v['original'] as String).length > max ||
        (v['text'] as String).length > max)
      throw const FormatException('Invalid edit draft');
    return RoomEditDraft(
      v['kind'] as String,
      v['target'] as String,
      v['revision'] as int,
      v['original'] as String,
      v['text'] as String,
    );
  }
}

abstract interface class RoomEditDraftStore {
  Future<String?> read();
  Future<void> write(String value, String? expected);
  Future<bool> clear(String expected);
}

class SecureRoomEditDraftStore implements RoomEditDraftStore {
  SecureRoomEditDraftStore(this.api, this.roomId, this.kind, this.target);
  final RoomCommunityApi api;
  final String roomId, kind, target;
  final storage = const FlutterSecureStorage();
  String? memory;
  String? get key {
    final bound = api;
    if (bound is! AccountBoundRoomCommunityApi) return null;
    bound.assertActive();
    return [
      'room-edit-draft-v1',
      bound.ownerAccount,
      roomId,
      kind,
      target,
    ].map(Uri.encodeComponent).join(':');
  }

  static final queues = <String, Future<void>>{};
  Future<T> serial<T>(Future<T> Function(String?) work) async {
    final scope = key;
    final prior = scope == null
        ? Future<void>.value()
        : queues[scope] ?? Future<void>.value();
    final done = Completer<void>();
    if (scope != null) queues[scope] = done.future;
    await prior;
    try {
      key;
      return await work(scope);
    } finally {
      done.complete();
      if (scope != null && identical(queues[scope], done.future))
        queues.remove(scope);
    }
  }

  @override
  Future<String?> read() => serial((scope) async {
    final value = scope == null ? memory : await storage.read(key: scope);
    key;
    return value;
  });
  @override
  Future<void> write(String value, String? expected) => serial((scope) async {
    final old = scope == null ? memory : await storage.read(key: scope);
    key;
    if (old != expected) throw StateError('edit_draft_changed');
    if (scope == null) {
      memory = value;
    } else {
      await storage.write(key: scope, value: value);
    }
    key;
  });
  @override
  Future<bool> clear(String expected) => serial((scope) async {
    final old = scope == null ? memory : await storage.read(key: scope);
    key;
    if (old != expected) return false;
    if (scope == null) {
      memory = null;
    } else {
      await storage.delete(key: scope);
    }
    key;
    return true;
  });
}

/// Frozen account/Room/target scope survives ordinary Back navigation while
/// queued storage completes. Account-bound storage still rejects old sessions.
class RoomEditDraftSession {
  RoomEditDraftSession(this.store, this.base);
  final RoomEditDraftStore store;
  final RoomEditDraft base;
  String? raw;
  int latestWrite = 0;
  Future<void> writes = Future<void>.value();
  Future<RoomEditDraft?> load() async {
    raw = await store.read();
    if (raw == null) return null;
    final draft = RoomEditDraft.decode(raw!);
    if (draft.kind != base.kind || draft.target != base.target)
      throw const FormatException('Wrong edit draft');
    return draft;
  }

  Future<void> update(String text) async {
    final value = RoomEditDraft(
      base.kind,
      base.target,
      base.revision,
      base.original,
      text,
    ).encode();
    RoomEditDraft.decode(value);
    final ticket = ++latestWrite;
    final next = writes.catchError((Object _) {}).then((_) async {
      if (ticket != latestWrite) return;
      await store.write(value, raw);
      raw = value;
    });
    writes = next;
    return next;
  }

  Future<void> clear() async {
    try {
      await writes;
    } catch (_) {}
    final expected = raw;
    if (expected != null && !await store.clear(expected))
      throw StateError('edit_draft_changed');
    raw = null;
  }
}
