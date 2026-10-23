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
  test('expired unanswered ring is verified as missed, never auto-cancelled', () async {
    final api = _Api()
      ..current = {
        ...record(),
        'expiresAt': '2020-10-19T10:01:00Z',
      };
    final c = HumanCallController(
      api: api, audioFactory: _Audio.new, ownerId: 'a',
      currentOwner: () => 'a', requestMicrophone: () async => true,
      startForeground: () async {}, stopForeground: () async {},
      autoPoll: false,
    );
    await c.open('call-one');
    expect(c.active, isFalse);
    await c.refresh();
    expect(api.actions.where((s) => s.endsWith('/transition')), isEmpty);
    // Even tapping End after a stale ring only rechecks the authoritative state.
    await c.end();
    expect(api.actions.where((s) => s.endsWith('/transition')), isEmpty);
    api.current = {...record('missed'), 'expiresAt': '2020-10-19T10:01:00Z'};
    await c.refresh();
    expect(c.call?.state, 'missed');
    expect(api.actions.where((s) => s.endsWith('/transition')), isEmpty);
    await c.close();
  });

  test('duplicate End taps send only one transition', () async {
    final api = _Api()..current = record('accepted');
    final held = Completer<void>();
    api.before = (_, path) async {
      if (path.endsWith('/transition')) await held.future;
    };
    final c = HumanCallController(
      api: api, audioFactory: _Audio.new, ownerId: 'a',
      currentOwner: () => 'a', requestMicrophone: () async => true,
      startForeground: () async {}, stopForeground: () async {},
      autoPoll: false,
    );
    await c.open('call-one');
    final first = c.end();
    final second = c.end();
    held.complete();
    await Future.wait([first, second]);
    expect(api.actions.where((s) => s.endsWith('/transition')), hasLength(1));
    await c.close();
  });

  test('end confirmation keeps new-call action disabled until server readback', () async {
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
    api.before = (method, path) async {
      if (path.endsWith('/transition')) throw StateError('Network unavailable');
    };
    await c.end();
    expect(audio.closed, isTrue);
    expect(c.active, isFalse);
    expect(c.endConfirmationPending, isTrue);
    expect(c.error, contains('Waiting to confirm'));
    expect(api.actions.where((x) => x.endsWith('/transition')), hasLength(1));

    // An explicit retry is an End transition for the SAME call, not a new POST.
    api.before = null;
    await c.retryEndConfirmation();
    expect(c.endConfirmationPending, isFalse);
    expect(c.call?.state, 'ended');
    expect(c.error, isNull);
    expect(api.actions.where((x) => x == 'POST /calls'), isEmpty);
    expect(api.actions.where((x) => x.endsWith('/transition')), hasLength(2));
    await c.close();
  });

  test('server-confirmed terminal GET clears stale end confirmation error', () async {
    final api = _Api()..current = record('accepted');
    final c = HumanCallController(
      api: api,
      audioFactory: _Audio.new,
      ownerId: 'a',
      currentOwner: () => 'a',
      requestMicrophone: () async => true,
      startForeground: () async {},
      stopForeground: () async {},
      autoPoll: false,
    );
    api.before = (method, path) async {
      if (path.endsWith('/transition')) throw StateError('Response lost');
    };
    await c.open('call-one');
    await c.end();
    expect(c.endConfirmationPending, isTrue);
    api.current = record('ended');
    await c.retryEndConfirmation();
    expect(c.call?.state, 'ended');
    expect(c.endConfirmationPending, isFalse);
    expect(c.error, isNull);
    await c.close();
  });

  test('permission prompt does not accept an invitation ended by another device', () async {
    final incoming = {...record(), 'direction': 'incoming'};
    final api = _Api()..current = incoming;
    final permission = Completer<bool>();
    final c = HumanCallController(
      api: api,
      audioFactory: _Audio.new,
      ownerId: 'a',
      currentOwner: () => 'a',
      requestMicrophone: () => permission.future,
      startForeground: () async {},
      stopForeground: () async {},
      autoPoll: false,
    );
    await c.open('call-one');
    final answering = c.accept();
    api.current = {...incoming, 'state': 'missed'};
    await c.refresh();
    permission.complete(true);
    await answering;
    expect(c.call?.state, 'missed');
    expect(c.active, isFalse);
    expect(api.actions.where((x) => x.endsWith('/transition')), isEmpty);
    await c.close();
  });

  test('same-user re-login invalidates old controller and late server results', () async {
    var epoch = 4;
    final api = _Api()..current = record('accepted');
    final waiting = Completer<void>();
    api.before = (method, path) async {
      if (method == 'GET' && path == '/calls/call-one') await waiting.future;
    };
    final c = HumanCallController(
      api: api, audioFactory: _Audio.new, ownerId: 'a',
      currentOwner: () => 'a',
      authorizationEpoch: 4, currentAuthorizationEpoch: () => epoch,
      requestMicrophone: () async => true,
      startForeground: () async {}, stopForeground: () async {},
      autoPoll: false,
    );
    final opening = c.open('call-one');
    epoch = 5;
    waiting.complete();
    await opening;
    expect(c.call, isNull);
    expect(c.active, isFalse);
    await c.close();
  });


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
