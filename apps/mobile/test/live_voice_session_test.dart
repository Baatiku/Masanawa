import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';
import 'package:audio_session/audio_session.dart';
import 'package:masanawa/src/core/call_recording.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:record/record.dart';
import 'package:masanawa/src/agents/agent_shell.dart';
import 'package:masanawa/src/core/live_voice_session.dart';

class _Recorder extends Mock implements AudioRecorder {}
class _Capture implements CallAudioObserver {
 int inputBytes=0,outputBytes=0,interruptions=0,ends=0;
 @override void input(Uint8List bytes){inputBytes+=bytes.length;}
 @override void output(Uint8List bytes){outputBytes+=bytes.length;}
 @override void interrupted(){interruptions++;}
 @override void ended(){ends++;}
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late _Recorder recorder;
  late LiveVoiceSession session;

  setUp(() {
    recorder = _Recorder();
    when(() => recorder.stop()).thenAnswer((_) async => null);
    when(() => recorder.dispose()).thenAnswer((_) async {});
    session = LiveVoiceSession(
      grant: AgentLiveVoiceGrant(
        token: 'unused',
        websocketUrl: 'wss://example.invalid',
        model: 'test',
        voiceName: 'Bodi',
        expiresAt: DateTime.now().add(const Duration(minutes: 1)),
      ),
      characterName: 'Gwani',
      recorder: recorder,
    );
  });
  tearDown(() async => session.close());

  test('a called Masana retains the existing speak-first greeting by default', () {
    expect(session.sendGreeting, isTrue);
  });

  test('notification ducking never closes or stops a call microphone', () async {
    final capture=_Capture();session.audioObserver=capture;
    await session.handleAudioInterruption(AudioInterruptionEvent(true,AudioInterruptionType.duck));
    expect(session.audioInterrupted,isFalse);expect(capture.ends,0);
    verifyNever(()=>recorder.stop());verifyNever(()=>recorder.dispose());
  });
  test('temporary focus loss pauses without closing session or losing user mute', () async {
    final capture=_Capture();session.audioObserver=capture;
    await session.mute(true);
    await session.handleAudioInterruption(AudioInterruptionEvent(true,AudioInterruptionType.pause));
    expect(session.audioInterrupted,isTrue);expect(session.muted,isTrue);
    expect(capture.interruptions,1);expect(capture.ends,0);
    verifyNever(()=>recorder.dispose());
    await session.close();expect(capture.ends,1);
  });
  test('closing while audio is suspended cannot restart the microphone', () async {
    final stopped=Completer<String?>();when(()=>recorder.stop()).thenAnswer((_)=>stopped.future);
    final pause=session.handleAudioInterruption(AudioInterruptionEvent(true,AudioInterruptionType.pause));
    await Future<void>.delayed(Duration.zero);
    final close=session.close();stopped.complete(null);await Future.wait([pause,close]);
    await session.resumeAudio();verifyNever(()=>recorder.hasPermission());verify(()=>recorder.dispose()).called(1);
  });

  test('closing preserves readiness failure for callers', () async {
    final failure = expectLater(session.ready, throwsStateError);
    await session.close();
    await failure;
  });

  test('mute selected before setup remains selected', () async {
    await session.mute(true);
    expect(session.muted, isTrue);
    await session.mute(false);
    expect(session.muted, isFalse);
    verifyNever(() => recorder.hasPermission());
  });

  test(
    'concurrent closure releases the recorder once and prevents restart',
    () async {
      await Future.wait([session.close(), session.close()]);
      await session.start();
      verify(() => recorder.dispose()).called(1);
      verifyNever(() => recorder.hasPermission());
    },
  );

  test('without a native foreground service, pausing safely ends the call', () async {
    session.didChangeAppLifecycleState(AppLifecycleState.paused);
    await session.close();
    verify(() => recorder.stop()).called(1);
    verify(() => recorder.dispose()).called(1);
  });

  test('detaching always closes and releases microphone custody', () async {
    session.didChangeAppLifecycleState(AppLifecycleState.detached);
    await session.close();
    verify(() => recorder.stop()).called(1);
    verify(() => recorder.dispose()).called(1);
  });
  test(
    'teardown callback runs once even when recorder cleanup fails',
    () async {
      var closed = 0;
      when(() => recorder.stop()).thenThrow(StateError('native stop failed'));
      final reported = LiveVoiceSession(
        grant: session.grant,
        characterName: 'Gwani',
        recorder: recorder,
        onClosed: () {
          closed++;
        },
      );
      await Future.wait([reported.close(), reported.close()]);
      expect(closed, 1);
    },
  );
  test(
    'shared microphone session never stops or disposes shared custody',
    () async {
      final shared = LiveVoiceSession(
        grant: session.grant,
        characterName: 'Gwani',
        recorder: recorder,
        sharedMicrophone: const Stream<Uint8List>.empty(),
      );
      await shared.close();
      verifyNever(() => recorder.stop());
      verifyNever(() => recorder.dispose());
    },
  );
  test('shared session reports connected only after server setup', () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final peer = Completer<WebSocket>();
    final listener = server.listen((request) async {
      peer.complete(await WebSocketTransformer.upgrade(request));
    });
    var connected = 0;
    var closed = 0;
    final microphone = StreamController<Uint8List>.broadcast();
    final capture=_Capture();
    final live = LiveVoiceSession(
      grant: AgentLiveVoiceGrant(
        token: 'unused',
        websocketUrl: 'ws://127.0.0.1:${server.port}',
        model: 'test',
        voiceName: 'Bodi',
        expiresAt: DateTime.now().add(const Duration(minutes: 1)),
      ),
      characterName: 'Gwani',
      sharedMicrophone: microphone.stream,
      sendGreeting: false,
      onAudioPcm: (_) async {},
      onConnected: () {
        connected++;
      },
      onClosed: () {
        closed++;
      },
    );
    live.audioObserver=capture;
    try {
      await live.start();
      final socket = await peer.future;
      expect(connected, 0);
      socket.add(jsonEncode({'setupComplete': {}}));
      await live.ready.timeout(const Duration(seconds: 2));
      expect(connected, 1);
      microphone.add(Uint8List(320));
      socket.add(jsonEncode({'serverContent':{'modelTurn':{'parts':[{'inlineData':{'mimeType':'audio/pcm;rate=24000','data':base64Encode(Uint8List(480))}}]}}}));
      await Future<void>.delayed(const Duration(milliseconds:50));
      expect(capture.inputBytes,320);expect(capture.outputBytes,480);
      final interrupted = live.states.firstWhere(
        (state) => state == LiveVoiceState.interrupted,
      );
      socket.add(jsonEncode({'setupComplete': {}}));
      socket.add(
        jsonEncode({
          'serverContent': {'interrupted': true},
        }),
      );
      await interrupted.timeout(const Duration(seconds: 2));
      expect(connected, 1);
      await live.close();
      expect(closed, 1);expect(capture.ends,1);expect(capture.interruptions,1);
      await socket.close();
    } finally {
      await live.close();
      await microphone.close();
      await listener.cancel();
      await server.close(force: true);
    }
  });
  test('Gemini connection-grant expiry never caps an established call', () {
    final now = DateTime(2026, 10, 15, 10);
    // The admission controls call length, not the short-lived grant token.
    expect(
      permittedConnectedCallDuration(now: now),
      isNull,
    );
    expect(
      permittedConnectedCallDuration(
        now: now,
        endAt: now.add(const Duration(minutes: 12)),
      ),
      const Duration(minutes: 12),
    );
    expect(
      permittedConnectedCallDuration(
        now: now,
        maxDuration: const Duration(minutes: 4),
        endAt: now.add(const Duration(minutes: 12)),
      ),
      const Duration(minutes: 4),
    );
    expect(
      permittedConnectedCallDuration(
        now: now,
        maxDuration: const Duration(minutes: 12),
        endAt: now.add(const Duration(minutes: 4)),
      ),
      const Duration(minutes: 4),
    );
    expect(
      permittedConnectedCallDuration(
        now: now,
        endAt: now.subtract(const Duration(seconds: 1)),
      )!.isNegative,
      isTrue,
    );
  });

  test('an already connected call remains active after grant expiry', () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final peer = Completer<WebSocket>();
    final listener = server.listen((request) async {
      peer.complete(await WebSocketTransformer.upgrade(request));
    });
    var closed = 0;
    final microphone = StreamController<Uint8List>.broadcast();
    final live = LiveVoiceSession(
      grant: AgentLiveVoiceGrant(
        token: 'ephemeral',
        websocketUrl: 'ws://127.0.0.1:${server.port}',
        model: 'test',
        voiceName: 'Fora',
        expiresAt: DateTime.now().add(const Duration(milliseconds: 450)),
      ),
      characterName: 'Gwana',
      sharedMicrophone: microphone.stream,
      sendGreeting: false,
      onClosed: () { closed++; },
    );
    try {
      await live.start();
      final socket = await peer.future;
      socket.add(jsonEncode({'setupComplete': {}}));
      await live.ready.timeout(const Duration(seconds: 2));
      await Future<void>.delayed(const Duration(milliseconds: 600));
      expect(closed, 0,
          reason: 'Token expiry should not terminate an active audio session');
      expect(live.muted, isFalse);
      await socket.close();
    } finally {
      await live.close();
      expect(closed, 1);
      await microphone.close();
      await listener.cancel();
      await server.close(force: true);
    }
  });

  test('provider rotation resumes the same call, voice and transcript stream',
      () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final secondSetup = Completer<Map<String, dynamic>>();
    final microphone = StreamController<Uint8List>.broadcast();
    final peers = <WebSocket>[];
    var connected = 0;
    var closed = 0;
    var connections = 0;
    final listener = server.listen((request) async {
      final socket = await WebSocketTransformer.upgrade(request);
      peers.add(socket);
      final number = ++connections;
      socket.listen((raw) {
        if (raw is! String) return;
        final data = jsonDecode(raw);
        if (data is! Map || data['setup'] is! Map) return;
        final setup = (data['setup'] as Map).cast<String, dynamic>();
        expect(setup['model'], 'models/test');
        expect(
          ((setup['generationConfig'] as Map)['speechConfig'] as Map)
              ['voiceConfig']['prebuiltVoiceConfig']['voiceName'],
          'Fora',
        );
        if (number == 1) {
          expect(setup['sessionResumption'], isEmpty);
          socket.add(jsonEncode({'setupComplete': {}}));
          socket.add(jsonEncode({
            'sessionResumptionUpdate': {
              'resumable': true,
              'newHandle': 'provider-handle-1',
            },
          }));
          Future<void>.delayed(const Duration(milliseconds: 75), () {
            unawaited(socket.close());
          });
        } else {
          expect(setup['sessionResumption'], {'handle': 'provider-handle-1'});
          if (!secondSetup.isCompleted) secondSetup.complete(setup);
          socket.add(jsonEncode({'setupComplete': {}}));
        }
      });
    });
    final live = LiveVoiceSession(
      grant: AgentLiveVoiceGrant(
        token: 'ephemeral',
        websocketUrl: 'ws://127.0.0.1:${server.port}',
        model: 'test',
        voiceName: 'Fora',
        expiresAt: DateTime.now().add(const Duration(minutes: 1)),
      ),
      characterName: 'Malamah Gwana',
      sharedMicrophone: microphone.stream,
      sendGreeting: false,
      onConnected: () { connected++; },
      onClosed: () { closed++; },
    );
    try {
      await live.start();
      await live.ready.timeout(const Duration(seconds: 2));
      await secondSetup.future.timeout(const Duration(seconds: 5));
      await Future<void>.delayed(const Duration(milliseconds: 80));
      expect(connected, 1, reason: 'Resumption must not bill a second call');
      expect(closed, 0);
      expect(connections, 2);
    } finally {
      await live.close();
      expect(closed, 1);
      for (final socket in peers) {
        await socket.close();
      }
      await microphone.close();
      await listener.cancel();
      await server.close(force: true);
    }
  });

  test('a disconnected call without provider resumption handle ends once',
      () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final peer = Completer<WebSocket>();
    var connections = 0;
    final listener = server.listen((request) async {
      connections++;
      final socket = await WebSocketTransformer.upgrade(request);
      peer.complete(socket);
    });
    final ended = Completer<void>();
    final input = StreamController<Uint8List>.broadcast();
    final live = LiveVoiceSession(
      grant: AgentLiveVoiceGrant(
        token: 'ephemeral',
        websocketUrl: 'ws://127.0.0.1:${server.port}',
        model: 'test',
        voiceName: 'Bodi',
        expiresAt: DateTime.now().add(const Duration(minutes: 1)),
      ),
      characterName: 'Mallam Gwani',
      sharedMicrophone: input.stream,
      sendGreeting: false,
      onClosed: () {
        if (!ended.isCompleted) ended.complete();
      },
    );
    try {
      await live.start();
      final socket = await peer.future;
      socket.add(jsonEncode({'setupComplete': {}}));
      await live.ready.timeout(const Duration(seconds: 2));
      await socket.close();
      await ended.future.timeout(const Duration(seconds: 2));
      expect(connections, 1, reason: 'Never start a new session as the same paid call');
    } finally {
      await live.close();
      await input.close();
      await listener.cancel();
      await server.close(force: true);
    }
  });

  test('expired ephemeral permission is refreshed before one admitted call resumes',
      () async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    final resumed = Completer<void>();
    final mic = StreamController<Uint8List>.broadcast();
    final peers = <WebSocket>[];
    var sockets = 0;
    var connectedCalls = 0;
    var renewedGrants = 0;
    final listener = server.listen((request) async {
      final socket = await WebSocketTransformer.upgrade(request);
      peers.add(socket);
      final index = ++sockets;
      socket.listen((raw) {
        if (raw is! String) return;
        final msg = jsonDecode(raw);
        if (msg is! Map || msg['setup'] is! Map) return;
        final setup = msg['setup'] as Map;
        expect(setup['model'], 'models/test');
        final voice = ((setup['generationConfig'] as Map)['speechConfig']
            as Map)['voiceConfig']['prebuiltVoiceConfig']['voiceName'];
        expect(voice, 'Fora');
        if (index == 1) {
          expect(setup['sessionResumption'], isEmpty);
          socket.add(jsonEncode({'setupComplete': {}}));
          socket.add(jsonEncode({
            'sessionResumptionUpdate': {
              'resumable': true,
              'newHandle': 'original-call-handle',
            },
          }));
          Future<void>.delayed(const Duration(milliseconds: 650), () {
            unawaited(socket.close());
          });
        } else {
          expect(setup['sessionResumption'], {
            'handle': 'original-call-handle',
          });
          socket.add(jsonEncode({'setupComplete': {}}));
          if (!resumed.isCompleted) resumed.complete();
        }
      });
    });
    final original = AgentLiveVoiceGrant(
      token: 'original',
      websocketUrl: 'ws://127.0.0.1:${server.port}',
      model: 'test',
      voiceName: 'Fora',
      expiresAt: DateTime.now().add(const Duration(milliseconds: 300)),
    );
    final live = LiveVoiceSession(
      grant: original,
      characterName: 'Malamah Gwana',
      sharedMicrophone: mic.stream,
      sendGreeting: false,
      renewConnectionGrant: () async {
        renewedGrants++;
        return AgentLiveVoiceGrant(
          token: 'renewal-for-original-admission',
          websocketUrl: 'ws://127.0.0.1:${server.port}',
          model: 'test',
          voiceName: 'Fora',
          expiresAt: DateTime.now().add(const Duration(minutes: 1)),
        );
      },
      onConnected: () { connectedCalls++; },
    );
    try {
      await live.start();
      await live.ready.timeout(const Duration(seconds: 2));
      await resumed.future.timeout(const Duration(seconds: 5));
      await Future<void>.delayed(const Duration(milliseconds: 100));
      expect(renewedGrants, 1);
      expect(connectedCalls, 1,
          reason: 'Reissued Gemini token must not register another paid call');
      expect(sockets, 2);
    } finally {
      await live.close();
      for (final peer in peers) { await peer.close(); }
      await mic.close();
      await listener.cancel();
      await server.close(force: true);
    }
  });

  for (final useDeadline in [false, true]) {
    test(
      useDeadline
          ? 'absolute permission expiry bounds an otherwise longer call'
          : 'consented duration ends a connected native session without UI custody',
      () async {
        final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
        final peer = Completer<WebSocket>();
        final listener = server.listen((request) async {
          peer.complete(await WebSocketTransformer.upgrade(request));
        });
        final ended = Completer<void>();
        final input = StreamController<Uint8List>.broadcast();
        final live = LiveVoiceSession(
          grant: AgentLiveVoiceGrant(
            token: 'unused',
            websocketUrl: 'ws://127.0.0.1:${server.port}',
            model: 'test',
            voiceName: 'Bodi',
            expiresAt: DateTime.now().add(const Duration(minutes: 1)),
          ),
          characterName: 'Gwani',
          sharedMicrophone: input.stream,
          sendGreeting: false,
          maxDuration: useDeadline
              ? const Duration(minutes: 1)
              : const Duration(milliseconds: 100),
          endAt: useDeadline
              ? DateTime.now().add(const Duration(milliseconds: 100))
              : null,
          onClosed: () {
            if (!ended.isCompleted) ended.complete();
          },
        );
        try {
          await live.start();
          final socket = await peer.future;
          socket.add(jsonEncode({'setupComplete': {}}));
          // Keep a live shared input subscription until the timer closes it.
          await live.ready.timeout(const Duration(seconds: 2));
          await ended.future.timeout(const Duration(seconds: 2));
          await live.close();
          await socket.close();
        } finally {
          await live.close();
          await input.close();
          await listener.cancel();
          await server.close(force: true);
        }
      },
    );
  }
}

