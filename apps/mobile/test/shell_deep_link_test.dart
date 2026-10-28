import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/shell_deep_link.dart';
import 'package:masanawa/src/core/pending_deep_link.dart';

void main() {
  test('chat and work links resolve to the canonical conversation', () {
    expect(shellDeepLinkRoute(Uri.parse('masanawa://chat/character_abc')),
        '/chat/character_abc');
    expect(shellDeepLinkRoute(Uri.parse(
        'masanawa://work/work_123?characterId=character_abc')),
        '/chat/character_abc');
  });

  test('public Masana links resolve to the public profile route', () {
    expect(
      shellDeepLinkRoute(Uri.parse('https://masanawa.com/twin/amina_bello')),
      '/masana',
    );
    expect(
      shellDeepLinkRoute(Uri.parse('masanawa://twin/amina_bello')),
      '/masana',
    );
  });

  test('public Talk links resolve to the canonical Talk route', () {
    expect(
      shellDeepLinkRoute(Uri.parse('https://masanawa.com/talk/talk-123')),
      '/home?tab=status',
    );
    expect(
      shellDeepLinkRoute(Uri.parse('masanawa://talk/talk-123')),
      '/home?tab=status',
    );
  });

  test('retired activity notifications use the active Status tab', () {
    expect(
      shellDeepLinkRoute(Uri.parse('masanawa://activity')),
      '/home?tab=status',
    );
  });

  test('modern Status and Masana links resolve and reject injected paths', () {
    expect(shellDeepLinkRoute(Uri.parse('masanawa://status')), '/home?tab=status');
    expect(shellDeepLinkRoute(Uri.parse('masanawa://masana')), '/masana');
    expect(shellDeepLinkRoute(Uri.parse('masanawa://status/?admin=1')), isNull);
    expect(shellDeepLinkRoute(Uri.parse('masanawa://masana/untrusted')), isNull);
  });

  test('modern resource links resolve to authenticated destination routes', () {
    for (final item in <String, String>{
      'masanawa://rooms/room_123': '/home?tab=status',
      'masanawa://masana/character_abc': '/masana/character_abc',
      'masanawa://status/post_123': '/status/post_123',
      'masanawa://calls/history': '/home?tab=calls',
      'masanawa://wallet/transaction/order_123': '/home?tab=wallet',
      'masanawa://search': '/search',
      'https://masanawa.com/room/room_123': '/home?tab=status',
      'https://masanawa.com/masana/character_abc': '/masana/character_abc',
      'https://masanawa.com/status/post_123': '/status/post_123',
      'https://masanawa.com/transaction/order_123': '/home?tab=wallet',
    }.entries) {
      expect(shellDeepLinkRoute(Uri.parse(item.key)), item.value,
          reason: item.key);
    }
  });

  test('signed Status referrals survive trusted web and custom app links only', () {
    const token = 'OpaqueShareToken0123456789_AbCdEfGhIjKl';
    const target = '/status/post_123?r=$token';
    expect(shellDeepLinkRoute(Uri.parse(
      'https://masanawa.com/status/post_123?r=$token')), target);
    expect(shellDeepLinkRoute(Uri.parse(
      'masanawa://status/post_123?r=$token')), target);
    expect(shellDeepLinkRoute(Uri.parse(
      'https://masanawa.com/status/post_123?r=bad')), '/status/post_123');
    expect(shellDeepLinkRoute(Uri.parse(
      'https://masanawa.com/status/post_123?r=$token&r=other')),
      '/status/post_123');
    expect(shellDeepLinkRoute(Uri.parse(
      'masanawa://status/post_123?r=%3Cscript%3E')), '/status/post_123');
    expect(shellDeepLinkRoute(Uri.parse(
      'https://masanawa.com/status/post_123?r=$token&admin=1')), isNull);
    expect(shellDeepLinkRoute(Uri.parse(
      'https://evil.example/status/post_123?r=$token')), isNull);
    expect(shellDeepLinkRoute(Uri.parse(
      'https://masanawa.com/transaction/order_123?r=$token')), isNull);
  });

  test('resource routes reject injection and unauthorized query parameters', () {
    for (final raw in [
      'masanawa://rooms/room_abc?accessToken=secret',
      'masanawa://rooms/room%2Fprivate',
      'masanawa://masana/character_abc%2Fother',
      'masanawa://masana/character_abc?admin=true',
      'masanawa://wallet/transaction/order_1?paid=1',
      'masanawa://status/post_abc?token=x',
      'https://evil.example/room/room_abc',
      'https://masanawa.com/room/room_abc?secret=1',
      'masanawa://user@rooms/room_abc',
      'masanawa://calls/history/extra',
    ]) {
      expect(shellDeepLinkRoute(Uri.parse(raw)), isNull, reason: raw);
    }
  });

  test('retired owner-session links no longer resolve', () {
    expect(
      shellDeepLinkRoute(
        Uri.parse(
          'masanawa://owner-session/character_abc/request_owner_123',
        ),
      ),
      isNull,
    );
  });

  test('rejects foreign schemes, credentials, ports and malformed identities', () {
    for (final raw in [
      'https://chat/character_abc',
      'https://evil.example/twin/amina_bello',
      'https://user@masanawa.com/twin/amina_bello',
      'https://masanawa.com:444/twin/amina_bello',
      'https://masanawa.com/twin/ab',
      'https://masanawa.com/twin/amina/bello',
      'https://masanawa.com/talk/ab',
      'https://masanawa.com/talk/talk-123?host=1',
      'https://masanawa.com/talk/talk%2Fsecret',
      'https://evil.example/talk/talk-123',
      'masanawa://talk/ab',
      'masanawa://talk/talk-123/extra',
      'masanawa://talk/talk-123?host=1',
      'masanawa://evil/character_abc',
      'masanawa://user@chat/character_abc',
      'masanawa://chat:42/character_abc',
      'masanawa://chat/character_',
      'masanawa://chat/character_a%2Fb',
      'masanawa://chat/character_abc/extra',
      'masanawa://twin/ab',
      'masanawa://twin/amina/bello',
      'masanawa://activity/extra',
      'masanawa://activity?request=secret',
      'masanawa://owner-session/character_abc',
      'masanawa://owner-session/character_/request_owner_123',
      'masanawa://owner-session/character_abc/bad',
      'masanawa://owner-session/character_abc/request_owner_123?secret=1',
    ]) {
      expect(shellDeepLinkRoute(Uri.parse(raw)), isNull, reason: raw);
    }
  });

  test('resource link without a conversation opens the conversation list', () {
    expect(shellDeepLinkRoute(Uri.parse('masanawa://approval/approval_123')),
        '/chats');
  });

  test('cold-start link waits for authentication and consumes once', () {
    final pending = PendingDeepLink();
    pending.offer(Uri.parse('masanawa://chat/character_abc'));
    expect(pending.take(ready: false), isNull);
    expect(pending.take(ready: true)?.path, '/character_abc');
    expect(pending.take(ready: true), isNull);
  });

  test('cold-start public Masana link also waits for authentication', () {
    final pending = PendingDeepLink();
    pending.offer(Uri.parse('https://masanawa.com/twin/amina_bello'));
    expect(pending.take(ready: false), isNull);
    expect(
      shellDeepLinkRoute(pending.take(ready: true)!),
      '/masana',
    );
    expect(pending.take(ready: true), isNull);
  });

  test('cold-start public Talk link also waits for authentication', () {
    final pending = PendingDeepLink();
    pending.offer(Uri.parse('https://masanawa.com/talk/talk-123'));
    expect(pending.take(ready: false), isNull);
    expect(
      shellDeepLinkRoute(pending.take(ready: true)!),
      '/home?tab=status',
    );
    expect(pending.take(ready: true), isNull);
  });

  test('invalid incoming links cannot replace a pending destination', () {
    final pending = PendingDeepLink();
    pending.offer(Uri.parse('masanawa://chat/character_abc'));
    pending.offer(Uri.parse('https://evil.example'));
    expect(pending.take(ready: true)?.path, '/character_abc');
    pending.offer(Uri.parse('masanawa://chat/character_xyz'));
    pending.clear();
    expect(pending.take(ready: true), isNull);
  });
}
