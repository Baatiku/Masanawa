import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/core/live_voice_session.dart';
import 'package:masanawa/src/screens/chat/ai_chat_screen.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Session extends Mock implements LiveVoiceSession {}

Future<_Session> _openCall(WidgetTester tester, {bool largeText = false}) async {
  final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  const toneChannel = MethodChannel('masanawa/call_tone');
  messenger.setMockMethodCallHandler(toneChannel, (_) async => true);
  addTearDown(() => messenger.setMockMethodCallHandler(toneChannel, null));
  final session = _Session();
  when(() => session.audioInterrupted).thenReturn(false);
  when(() => session.errors).thenAnswer((_) => const Stream<String>.empty());
  when(() => session.states).thenAnswer((_) => Stream.value(LiveVoiceState.listening));
  when(() => session.ready).thenAnswer((_) => Future<void>.value());
  when(() => session.start()).thenAnswer((_) async {});
  when(() => session.close()).thenAnswer((_) async {});
  when(() => session.mute(any())).thenAnswer((_) async {});
  when(() => session.setSpeaker(any())).thenAnswer((_) async {});
  const agent = AgentDirectoryEntry(
    characterId: 'agent', characterVersionId: 'v1',
    displayName: 'Amina', roleLabel: 'Medicine', about: '',
    presence: AgentPresence.available,
  );
  await tester.pumpWidget(MaterialApp(
    theme: buildMasanawaTheme(brightness: Brightness.light),
    builder: largeText ? (context, child) => MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(2)),
      child: child!,
    ) : null,
    home: Builder(builder: (context) => Scaffold(body: TextButton(
      child: const Text('Open call'),
      onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => MasanaLiveCallScreen(agent: agent, session: session))),
    ))),
  ));
  await tester.tap(find.text('Open call'));
  // The timer runs continuously after connection; never pumpAndSettle.
  await tester.pump(const Duration(milliseconds: 400));
  await tester.pump();
  return session;
}

void main() {
  testWidgets('call fills the viewport and End closes the session and route', (tester) async {
    final session = await _openCall(tester);
    final screen=find.byKey(const ValueKey('masanawa-live-call-screen'));
    expect(tester.getSize(screen),const Size(800,600));
    expect(find.byType(BottomSheet),findsNothing);
    expect(tester.widget<MasanaPortraitAvatar>(find.byKey(
      const ValueKey('live-call-masana-portrait'))).size, 160);
    expect(find.text('Mute'),findsOneWidget);
    expect(find.text('Speaker'),findsOneWidget);
    expect(find.text('End call'), findsOneWidget);
    expect(tester.getSize(find.byKey(
      const ValueKey('live-call-end-action'))).height,
      greaterThanOrEqualTo(54));
    await tester.tap(find.text('End call'));
    await tester.pump(const Duration(milliseconds:400));
    expect(screen,findsNothing);expect(find.text('Open call'),findsOneWidget);
    verify(()=>session.start()).called(1);
    verify(()=>session.close()).called(greaterThanOrEqualTo(1));
    expect(tester.takeException(),isNull);
  });

  testWidgets('call has accessible controls and an End action at 320dp with 200% text',
      (tester) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final session = await _openCall(tester, largeText: true);
    expect(tester.widget<MasanaPortraitAvatar>(find.byKey(
      const ValueKey('live-call-masana-portrait'))).size, 144);
    await tester.ensureVisible(find.byKey(const ValueKey('live-call-end-action')));
    await tester.ensureVisible(find.byTooltip('Mute'));
    await tester.tap(find.byTooltip('Mute'));
    await tester.pump();
    expect(find.text('Unmute'), findsOneWidget);
    verify(() => session.mute(true)).called(1);
    await tester.ensureVisible(find.byTooltip('Speaker'));
    await tester.tap(find.byTooltip('Speaker'));
    await tester.pump();
    expect(find.text('Earpiece'), findsOneWidget);
    verify(() => session.setSpeaker(false)).called(1);
    await tester.ensureVisible(find.byKey(const ValueKey('live-call-end-action')));
    await tester.tap(find.text('End call'));
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Open call'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('short landscape call can scroll to End without losing media controls',
      (tester) async {
    tester.view.physicalSize = const Size(568, 320);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await _openCall(tester, largeText: true);
    expect(tester.widget<MasanaPortraitAvatar>(find.byKey(
      const ValueKey('live-call-masana-portrait'))).size, 116);
    expect(find.byTooltip('Mute'), findsOneWidget);
    expect(find.byTooltip('Speaker'), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('live-call-end-action')));
    await tester.tap(find.text('End call'));
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.text('Open call'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}

