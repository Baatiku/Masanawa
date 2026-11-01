import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/core/live_pcm_audio.dart';
import 'package:masanawa/src/core/live_voice_session.dart';
import 'package:masanawa/src/screens/chat/ai_chat_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Session extends Mock implements LiveVoiceSession {}

final _agent = AgentDirectoryEntry(
  characterId: 'agent',
  characterVersionId: 'v1',
  displayName: 'Amina',
  roleLabel: 'AI',
  about: '',
  presence: AgentPresence.available,
  supportAgent: true,
);

Future<_Session> _open(WidgetTester tester, {bool accepts = true}) async {
  final session = _Session();
  when(() => session.audioInterrupted).thenReturn(false);
  when(() => session.errors).thenAnswer((_) => const Stream.empty());
  when(
    () => session.states,
  ).thenAnswer((_) => Stream.value(LiveVoiceState.listening));
  when(() => session.ready).thenAnswer((_) async {});
  when(() => session.start()).thenAnswer((_) async {});
  when(() => session.close()).thenAnswer((_) async {});
  when(() => session.setSpeaker(any())).thenAnswer((_) async {});
  when(() => session.mute(any())).thenAnswer((_) async {});
  when(() => session.selectAudioRoute(any())).thenAnswer((_) async => accepts);
  await tester.pumpWidget(
    MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Builder(
        builder: (context) => Scaffold(
          body: TextButton(
            child: const Text('Open call'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) =>
                    MasanaLiveCallScreen(agent: _agent, session: session),
              ),
            ),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('Open call'));
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 400));
  await tester.pump();
  return session;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const pcm = MethodChannel('masanawa/live_pcm');
  const tone = MethodChannel('masanawa/call_tone');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  setUpAll(
    () => registerFallbackValue(
      const CallAudioRoute(
        id: 'device:1',
        kind: 'speaker',
        label: 'Speaker',
        selected: true,
      ),
    ),
  );
  tearDown(() {
    messenger.setMockMethodCallHandler(pcm, null);
    messenger.setMockMethodCallHandler(tone, null);
  });

  testWidgets(
    'available outputs choose a Bluetooth call route without faking a device',
    (tester) async {
      messenger.setMockMethodCallHandler(tone, (_) async => true);
      messenger.setMockMethodCallHandler(pcm, (call) async {
        if (call.method == 'routes')
          return [
            {
              'id': 'device:1',
              'kind': 'speaker',
              'label': 'Speaker',
              'selected': true,
            },
            {
              'id': 'device:7',
              'kind': 'bluetooth',
              'label': 'Bluetooth headset',
              'selected': false,
            },
          ];
        return false;
      });
      final session = await _open(tester);
      await tester.tap(find.byTooltip('Speaker'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      expect(find.text('Audio output'), findsOneWidget);
      expect(
        find.byKey(const ValueKey('call-audio-route-device:7')),
        findsOneWidget,
      );
      await tester.tap(find.byKey(const ValueKey('call-audio-route-device:7')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      final selections = verify(
        () => session.selectAudioRoute(captureAny()),
      ).captured;
      expect((selections.single as CallAudioRoute).id, 'device:7');
      expect(find.byTooltip('Bluetooth headset'), findsOneWidget);
      await tester.tap(find.byTooltip('End call'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
    },
  );

  testWidgets(
    'disconnected route reports failure rather than changing the active output',
    (tester) async {
      messenger.setMockMethodCallHandler(tone, (_) async => true);
      messenger.setMockMethodCallHandler(pcm, (call) async {
        if (call.method == 'routes')
          return [
            {
              'id': 'device:1',
              'kind': 'speaker',
              'label': 'Speaker',
              'selected': true,
            },
            {
              'id': 'device:2',
              'kind': 'wired',
              'label': 'Wired headset',
              'selected': false,
            },
          ];
        return false;
      });
      await _open(tester, accepts: false);
      await tester.tap(find.byTooltip('Speaker'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      await tester.tap(find.byKey(const ValueKey('call-audio-route-device:2')));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
      expect(
        find.text('Audio output disconnected. Try another device.'),
        findsOneWidget,
      );
      expect(find.byTooltip('Speaker'), findsOneWidget);
      await tester.tap(find.byTooltip('End call'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 350));
    },
  );
}
