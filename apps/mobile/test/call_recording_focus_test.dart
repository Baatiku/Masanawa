import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio/just_audio.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/call_recording.dart';
import 'package:masanawa/src/core/live_call_foreground.dart';
import 'package:masanawa/src/calls/call_recordings_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() {
    final user = AuthUser(
      id: 'a',
      name: 'A',
      locale: 'en',
      status: 'ACTIVE',
      role: 'USER',
      isNewUser: false,
      createdAt: '2026-10-17T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'test',
        refreshToken: 'test-refresh',
        accessExpiresIn: 3600,
        user: user,
      ),
    );
  }

  void signOut() => state = const SessionSignedOut();
}

class _Store extends CallRecordingStore {
  _Store() : super('a');
  @override
  Future<List<CallRecording>> list() async => [
    CallRecording(
      id: '1-a',
      agentName: 'Gwani',
      createdAt: DateTime.utc(2026, 10, 17),
      durationMs: 10000,
      file: File('/private/recording.wav'),
    ),
  ];
}

// Exercise the actual screen without acquiring native audio or a microphone.
class _Player implements AudioPlayer {
  int plays = 0, pauses = 0, stops = 0, disposals = 0;
  bool failPause = false;
  Completer<Duration?>? loading;
  Completer<void>? settingSpeed;
  @override
  dynamic noSuchMethod(Invocation call) {
    switch (call.memberName) {
      case #playerStateStream:
        return const Stream<PlayerState>.empty();
      case #positionStream:
        return const Stream<Duration>.empty();
      case #setLoopMode:
        return Future<void>.value();
      case #setFilePath:
        return loading?.future ??
            Future<Duration?>.value(const Duration(seconds: 10));
      case #setSpeed:
        return settingSpeed?.future ?? Future<void>.value();
      case #play:
        plays++;
        return Future<void>.value();
      case #pause:
        pauses++;
        return failPause
            ? Future<void>.error(StateError('native_pause_failed'))
            : Future<void>.value();
      case #stop:
        stops++;
        return Future<void>.value();
      case #dispose:
        disposals++;
        return Future<void>.value();
      default:
        return super.noSuchMethod(call);
    }
  }
}

Future<void> openRecording(
  WidgetTester tester,
  _Player player,
  _Session session,
) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [sessionProvider.overrideWith(() => session)],
      child: MaterialApp(
        home: CallRecordingsScreen(
          ownerId: 'a',
          store: _Store(),
          createPlayer: () => player,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('Gwani'));
  await tester.pumpAndSettle();
}

void main() {
  tearDown(() async {
    while (LiveCallForeground.active) {
      await LiveCallForeground.stop();
    }
  });
  testWidgets('call takeover pauses recordings, call end never auto-resumes', (
    tester,
  ) async {
    final player = _Player();
    await openRecording(tester, player, _Session());
    await tester.tap(find.byTooltip('Play'));
    await tester.pumpAndSettle();
    expect(player.plays, 1);
    await LiveCallForeground.startOrThrow(android: false);
    await tester.pumpAndSettle();
    expect(player.pauses, greaterThanOrEqualTo(1));
    expect(find.byTooltip('Play'), findsOneWidget);
    await tester.tap(find.byTooltip('Play'));
    await tester.pumpAndSettle();
    expect(player.plays, 1);
    await LiveCallForeground.stop();
    await tester.pumpAndSettle();
    expect(player.plays, 1);
    await tester.tap(find.byTooltip('Play'));
    await tester.pumpAndSettle();
    expect(player.plays, 2);
  });
  testWidgets(
    'background pauses private playback and returning requires Play',
    (tester) async {
      final player = _Player();
      await openRecording(tester, player, _Session());
      await tester.tap(find.byTooltip('Play'));
      await tester.pumpAndSettle();
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      await tester.pumpAndSettle();
      expect(player.pauses, greaterThanOrEqualTo(1));
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pumpAndSettle();
      expect(player.plays, 1);
      await tester.tap(find.byTooltip('Play'));
      await tester.pumpAndSettle();
      expect(player.plays, 2);
    },
  );
  for (final interruption in ['call', 'background', 'logout']) {
    testWidgets('late file initialization cannot resume after $interruption', (
      tester,
    ) async {
      final player = _Player()..loading = Completer<Duration?>(),
          session = _Session();
      await openRecording(tester, player, session);
      await tester.tap(find.byTooltip('Play'));
      await tester.pump();
      if (interruption == 'call') {
        await LiveCallForeground.startOrThrow(android: false);
        await LiveCallForeground.stop();
      } else if (interruption == 'background') {
        tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
        tester.binding.handleAppLifecycleStateChanged(
          AppLifecycleState.resumed,
        );
      } else {
        session.signOut();
      }
      await tester.pump();
      player.loading!.complete(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(player.plays, 0);
      expect(tester.takeException(), isNull);
      if (interruption == 'logout')
        expect(find.text('Sign in to view your recording.'), findsOneWidget);
      else {
        await tester.tap(find.byTooltip('Play'));
        await tester.pumpAndSettle();
        expect(player.plays, 1);
      }
    });
  }
  testWidgets('interruption while speed is setting prevents delayed play', (
    tester,
  ) async {
    final player = _Player()..settingSpeed = Completer<void>();
    await openRecording(tester, player, _Session());
    await tester.tap(find.byTooltip('Play'));
    await tester.pump();
    await LiveCallForeground.startOrThrow(android: false);
    await LiveCallForeground.stop();
    player.settingSpeed!.complete();
    await tester.pumpAndSettle();
    expect(player.plays, 0);
  });
  testWidgets(
    'native pause failure falls back to stop without an unhandled error',
    (tester) async {
      final player = _Player()..failPause = true;
      await openRecording(tester, player, _Session());
      await tester.tap(find.byTooltip('Play'));
      await tester.pumpAndSettle();
      await LiveCallForeground.startOrThrow(android: false);
      await tester.pumpAndSettle();
      expect(player.stops, 1);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'disposed recording releases player and call listener during initialization',
    (tester) async {
      final player = _Player()..loading = Completer<Duration?>();
      await openRecording(tester, player, _Session());
      await tester.tap(find.byTooltip('Play'));
      await tester.pump();
      await tester.pumpWidget(const SizedBox());
      await tester.pump();
      final pauses = player.pauses;
      await LiveCallForeground.startOrThrow(android: false);
      player.loading!.complete(const Duration(seconds: 10));
      await tester.pumpAndSettle();
      expect(player.disposals, 1);
      expect(player.plays, 0);
      expect(player.pauses, pauses);
      expect(tester.takeException(), isNull);
    },
  );
}
