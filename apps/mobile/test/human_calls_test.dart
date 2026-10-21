import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/human_calls/controller.dart';
import 'package:masanawa/src/human_calls/transport.dart';
import 'package:masanawa/src/human_calls/audio.dart';

Map<String, dynamic> record([String state = 'ringing']) => {
  'id': 'call-one',
  'peer': {'handle': 'amina', 'displayName': 'Amina', 'avatarUrl': null},
  'direction': 'outgoing',
  'state': state,
  'createdAt': '2026-10-19T10:00:00Z',
  'answeredAt': state == 'accepted' ? '2026-10-19T10:00:01Z' : null,
  'endedAt': null,
  'expiresAt': '2030-10-19T10:01:00Z',
};

class _Api implements HumanCallsTransport {
  Map<String, dynamic> current = record();
  final actions = <String>[];
  Future<void> Function(String, String)? before;
  @override
  Future<Map<String, dynamic>> request(
    String method,
    String path, {
    Map<String, dynamic>? data,
  }) async {
    actions.add('$method $path');
    await before?.call(method, path);
    if (path.endsWith('/token'))
      return {
        'server_url': 'wss://live.example.test',
        'participant_token': 'scoped',
        'room_name': 'human-call',
        'participant_identity': 'scoped',
        'expires_at': '2030-01-01T00:00:00Z',
      };
    if (path.endsWith('/transition'))
      current = record(data!['action'] == 'accept' ? 'accepted' : 'ended');
    return current;
  }

  @override
  void cancel() {}
}

class _Audio implements HumanCallAudio {
  bool closed = false, microphone = false;
  void Function(String)? statusCallback;
  @override
  Future<void> connect(
    Map<String, dynamic> token,
    void Function(String) status, {
    bool microphoneEnabled = true,
    bool speakerEnabled = false,
  }) async {
    statusCallback = status;
    microphone = microphoneEnabled;
    status('connected');
  }

  @override
  Future<void> mute(bool value) async {
    microphone = !value;
  }

  @override
  Future<void> speaker(bool value) async {}
  @override
  Future<void> close() async {
    closed = true;
    microphone = false;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test(
    'permission denial does not create a ringing call or start media',
    () async {
      final api = _Api(), audio = _Audio();
      final c = HumanCallController(
        api: api,
        audioFactory: () => audio,
        ownerId: 'a',
        currentOwner: () => 'a',
        requestMicrophone: () async => false,
        startForeground: () async {},
        stopForeground: () async {},
        autoPoll: false,
      );
      await c.start('amina');
      expect(api.actions, isEmpty);
      expect(audio.microphone, isFalse);
      expect(c.error, isNotNull);
      await c.close();
    },
  );
  test('ringing does not open microphone; accepted call connects and hangup closes it', () async {
    final api = _Api(), audio = _Audio();
    final c = HumanCallController(
      api: api,
      audioFactory: () => audio,
      ownerId: 'a',
      currentOwner: () => 'a',
      requestMicrophone: () async => true,
      startForeground: () async {},
      stopForeground: () async {},
      autoPoll: false,
    );
    await c.open('call-one');
    expect(audio.microphone, isFalse);
    api.current = record('accepted');
    await c.refresh();
    expect(audio.microphone, isTrue);
    expect(c.mediaState, 'connected');
    await c.end();
    expect(audio.closed, isTrue);
    expect(audio.microphone, isFalse);
    expect(api.actions.where((x) => x.endsWith('/token')), hasLength(1));
    await c.close();
  });
  test(
    'account replacement closes media and rejects stale call data',
    () async {
      var owner = 'a';
      final api = _Api()..current = record('accepted');
      final audio = _Audio();
      final c = HumanCallController(
        api: api,
        audioFactory: () => audio,
        ownerId: 'a',
        currentOwner: () => owner,
        requestMicrophone: () async => true,
        startForeground: () async {},
        stopForeground: () async {},
        autoPoll: false,
      );
      await c.open('call-one');
      owner = 'b';
      await c.refresh();
      expect(audio.closed, isTrue);
      expect(c.call, isNull);
      await c.close();
    },
  );
  test(
    'terminal remote state tears down microphone and never reconnects',
    () async {
      final api = _Api()..current = record('accepted');
      final audio = _Audio();
      final c = HumanCallController(
        api: api,
        audioFactory: () => audio,
        ownerId: 'a',
        currentOwner: () => 'a',
        requestMicrophone: () async => true,
        startForeground: () async {},
        stopForeground: () async {},
        autoPoll: false,
      );
      await c.open('call-one');
      api.current = record('ended');
      await c.refresh();
      expect(audio.closed, isTrue);
      expect(c.active, isFalse);
      await c.refresh();
      expect(api.actions.where((x) => x.endsWith('/token')), hasLength(1));
      await c.close();
    },
  );
  test('late token after hangup cannot open audio', () async {
    final api = _Api()..current = record('accepted');
    final token = Completer<void>();
    api.before = (_, path) async {
      if (path.endsWith('/token')) await token.future;
    };
    final audio = _Audio();
    var stops = 0;
    final c = HumanCallController(
      api: api,
      audioFactory: () => audio,
      ownerId: 'a',
      currentOwner: () => 'a',
      requestMicrophone: () async => true,
      startForeground: () async {},
      stopForeground: () async {
        stops++;
      },
      autoPoll: false,
    );
    final opening = c.open('call-one');
    while (!api.actions.any((p) => p.endsWith('/token'))) {
      await Future<void>.delayed(Duration.zero);
    }
    await c.end();
    token.complete();
    await opening;
    expect(audio.microphone, isFalse);
    expect(stops, 1);
    await c.close();
  });
  test('disconnected media releases microphone and exposes retry', () async {
    final api = _Api()..current = record('accepted');
    final audio = _Audio();
    final c = HumanCallController(
      api: api,
      audioFactory: () => audio,
      ownerId: 'a',
      currentOwner: () => 'a',
      requestMicrophone: () async => true,
      startForeground: () async {},
      stopForeground: () async {},
      autoPoll: false,
    );
    await c.open('call-one');
    audio.statusCallback!('disconnected');
    await Future<void>.delayed(Duration.zero);
    expect(audio.closed, isTrue);
    expect(audio.microphone, isFalse);
    expect(c.mediaState, 'failed');
    expect(c.error, isNotNull);
    await c.close();
  });
}
