import 'package:dio/dio.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/call_history.dart';
import 'package:masanawa/src/calls/call_details_screen.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/calls/masana_only_calls_screen.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _SignedIn extends SessionController {
  @override
  SessionState build() {
    const user = AuthUser(
      id: 'owner-1', name: 'Fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-11T00:00:00Z',
    );
    return const SessionSignedIn(user, AuthTokens(
      accessToken: 'fixture',
      refreshToken: 'fixture',
      accessExpiresIn: 900,
      user: user,
    ));
  }
}

class _History implements CallHistoryTransport {
  @override
  Future<CallHistoryPage> loadPage({
    String? cursor, String query = '', CancelToken? cancelToken,
  }) async => CallHistoryPage(calls: [
    CallHistoryItem(callId: 'single', characterId: 'masana-a',
      displayName: 'Amina', state: 'ended', createdAt: DateTime.utc(2026, 10, 21)),
    CallHistoryItem(callId: 'group', characterId: 'masana-a',
      displayName: 'Legacy group', state: 'ended',
      groupId: 'group-old', createdAt: DateTime.utc(2026, 10, 21)),
  ]);
}

class _Directory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(loading: false,
    agents: [AgentDirectoryEntry(characterId: 'masana-a', characterVersionId: 'v1',
      displayName: 'Renamed Masana', roleLabel: '', about: '',
      presence: AgentPresence.unknown, portraitKey: 'amina')]);
}

class _PagingHistory implements CallHistoryTransport {
  int olderAttempts = 0;

  @override
  Future<CallHistoryPage> loadPage({String? cursor, String query = '',
      CancelToken? cancelToken}) async {
    if (cursor == null) {
      return CallHistoryPage(calls: [
        CallHistoryItem(callId: 'first', characterId: 'masana-a',
          displayName: 'Amina', state: 'ended',
          createdAt: DateTime.utc(2026, 10, 21, 12)),
        CallHistoryItem(callId: 'older', characterId: 'masana-a',
          displayName: 'Amina', state: 'missed',
          createdAt: DateTime.utc(2026, 10, 15, 12)),
      ], nextCursor: 'next');
    }
    olderAttempts++;
    if (olderAttempts == 1) throw StateError('offline');
    return CallHistoryPage(calls: [
      CallHistoryItem(callId: 'older', characterId: 'masana-a',
        displayName: 'Amina', state: 'missed',
        createdAt: DateTime.utc(2026, 10, 15, 12)),
      CallHistoryItem(callId: 'oldest', characterId: 'masana-a',
        displayName: 'Amina', state: 'ended',
        createdAt: DateTime.utc(2026, 10, 10, 12)),
    ], nextCursor: 'next'); // Repeating cursor ends pagination.
  }
}

class _CachedDirectory extends _Directory {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(loading: true);
  void restore() => state = super.build();
}

void main() {
  testWidgets('history resolves the canonical picture when cached directory arrives', (tester) async {
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      callHistoryTransportProvider.overrideWithValue(_History()),
      agentDirectoryProvider.overrideWith(_CachedDirectory.new),
    ], child: MaterialApp(theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const MasanaOnlyCallsScreen())));
    await tester.pumpAndSettle();
    expect(find.text('A'), findsOneWidget);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(MasanaOnlyCallsScreen)));
    (container.read(agentDirectoryProvider.notifier) as _CachedDirectory).restore();
    await tester.pumpAndSettle();
    expect(find.text('A'), findsNothing);
    expect(tester.widgetList<Image>(find.byType(Image)).any((image) =>
      image.image is AssetImage && (image.image as AssetImage).assetName ==
        'assets/masana/portraits/amina.webp'), isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('only individual Masana history is shown, no human or group call CTA',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        agentDirectoryProvider.overrideWith(_Directory.new),
        callHistoryTransportProvider.overrideWithValue(_History()),
      ],
      child: MaterialApp(
        theme: buildMasanawaTheme(brightness: Brightness.light),
        home: const MasanaOnlyCallsScreen(),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Amina'), findsOneWidget);
    final portrait = tester.widgetList<Image>(find.byType(Image)).where(
      (image) => image.image is AssetImage &&
        (image.image as AssetImage).assetName == 'assets/masana/portraits/amina.webp');
    expect(portrait, hasLength(1));
    expect(find.text('Legacy group'), findsNothing);
    expect(find.text('Call a person'), findsNothing);
    expect(find.text('Call multiple Masana'), findsNothing);
    expect(find.byTooltip('New call'), findsOneWidget);
    expect(find.text('Individual audio only.'), findsNothing);
    expect(find.text('Calls with Masana'), findsNothing);
    expect(find.text('Calls'), findsOneWidget);
  });

  testWidgets('tap individual call opens existing detail and Back preserves calls',
      (tester) async {
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      agentDirectoryProvider.overrideWith(_Directory.new),
      callHistoryTransportProvider.overrideWithValue(_History()),
    ], child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: const MasanaOnlyCallsScreen(),
    )));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Amina'));
    await tester.pumpAndSettle();
    expect(find.byType(CallDetailsScreen), findsOneWidget);
    expect(tester.widget<CallDetailsScreen>(find.byType(CallDetailsScreen))
        .initial.callId, 'single');
    expect(find.text('Call details'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.byType(CallDetailsScreen), findsNothing);
    expect(find.byKey(const ValueKey('masana-call-single')), findsOneWidget);
    expect(find.text('Legacy group'), findsNothing);
  });

  testWidgets('dated call history preserves rows on page failure and bounds cursor',
      (tester) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final transport = _PagingHistory();
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      agentDirectoryProvider.overrideWith(_Directory.new),
      callHistoryTransportProvider.overrideWithValue(transport),
    ], child: MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(2)),
        child: Directionality(textDirection: TextDirection.rtl, child: child!),
      ),
      home: const MasanaOnlyCallsScreen(),
    )));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('masana-call-day-2026-10-21')),
        findsOneWidget);
    expect(find.byKey(const ValueKey('masana-call-day-2026-10-15')),
        findsOneWidget);
    await tester.ensureVisible(find.text('Load more'));
    await tester.tap(find.text('Load more'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('masana-call-first')), findsOneWidget);
    await tester.ensureVisible(find.text('Could not load older calls · Retry'));
    await tester.tap(find.text('Could not load older calls · Retry'));
    await tester.pumpAndSettle();
    expect(transport.olderAttempts, 2);
    expect(find.byKey(const ValueKey('masana-call-oldest')), findsOneWidget);
    expect(find.byKey(const ValueKey('masana-call-older')), findsOneWidget);
    expect(find.text('Load more'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
