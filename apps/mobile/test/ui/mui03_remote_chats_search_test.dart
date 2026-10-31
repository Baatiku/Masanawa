import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/features/masana_chat/inbox_search.dart';
import 'package:masanawa/src/screens/chat/chat_list_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

const fan = AuthUser(
  id: 'fan-a', name: 'Fan', locale: 'en',
  status: 'ACTIVE', role: 'fan', isNewUser: false,
  createdAt: '2026-10-13T00:00:00Z',
);

class TestSession extends SessionController {
  int epoch = 0;
  @override
  int get authorizationEpoch => epoch;
  @override
  SessionState build() => const SessionSignedIn(fan, AuthTokens(
    accessToken: 'old-fan-token', refreshToken: 'r', accessExpiresIn: 600,
    user: fan,
  ));
  void switchAccount() {
    const another = AuthUser(
      id: 'fan-b', name: 'Other', locale: 'en',
      status: 'ACTIVE', role: 'fan', isNewUser: false,
      createdAt: '2026-10-13T00:00:00Z',
    );
    state = const SessionSignedIn(another, AuthTokens(
      accessToken: 'new-fan-token', refreshToken: 'r2',
      accessExpiresIn: 600, user: another,
    ));
  }
  void sameUserReauthentication() {
    epoch++;
    state = SessionSignedIn(fan, const AuthTokens(
      accessToken: 'old-fan-token', refreshToken: 'r',
      accessExpiresIn: 600, user: fan,
    ));
  }
  void tokenRotation() {
    state = SessionSignedIn(fan, const AuthTokens(
      accessToken: 'rotated-fan-token', refreshToken: 'r',
      accessExpiresIn: 600, user: fan,
    ));
  }
}

class TestDirectory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(
    loading: false,
    agents: [
      AgentDirectoryEntry(
        characterId: 'character_00000000-0000-0000-0000-000000000001',
        characterVersionId: 'v1', displayName: 'Gwana',
        roleLabel: 'Teacher', about: '', presence: AgentPresence.unknown,
      ),
    ],
  );
}

class TestChats extends AiChatController {
  @override
  AiChatState build() => AiChatState(online: true, threads: {
    'character_00000000-0000-0000-0000-000000000001': ChatThread(
      characterId: 'character_00000000-0000-0000-0000-000000000001',
      title: 'Local history',
      updatedAt: DateTime.utc(2026, 10, 13),
      messages: [
        AiChatMessage(id:'m1', isUser:false, text:'Cached',
          createdAt: DateTime.utc(2026, 10, 13)),
      ],
    ),
  });
  void goOffline() => state = state.copyWith(online: false);
}

class FakeInbox implements MasanaInboxSearchAccess {
  final calls = <String>[];
  final pins = <String>[];
  final reads = <String>[];
  final pending = <String, Completer<List<MasanaInboxSearchItem>>>{};
  final responses = <String, List<MasanaInboxSearchItem>>{};
  final pages = <String, MasanaInboxPage>{};
  final pageCursors = <String?>[];
  Completer<MasanaInboxPage>? pendingOlderPage;
  bool disabled = false;
  final remote = const MasanaInboxSearchItem(
    characterId: 'character_00000000-0000-0000-0000-000000000099',
    displayName: 'Astronomy Masana', profession: 'Scientist',
    lastMessage: 'Stars are bright', pinned: false,
    unreadCount: 2, revision: 3,
  );

  @override
  Future<List<MasanaInboxSearchItem>> search({
    required String bearer, required String query,
  }) async => (await searchPage(bearer: bearer, query: query)).items;

  @override
  Future<MasanaInboxPage> searchPage({
    required String bearer, required String query, String? cursor,
    int limit = 15,
  }) async {
    calls.add('$bearer:$query');
    pageCursors.add(cursor);
    if (disabled) {
      final options = RequestOptions(path: '/v1/chats');
      throw DioException(
        requestOptions: options,
        response: Response(requestOptions: options, statusCode: 503),
        type: DioExceptionType.badResponse,
      );
    }
    final wait = pending[query];
    if (cursor != null && pendingOlderPage != null) {
      return pendingOlderPage!.future;
    }
    if (cursor != null && pages.containsKey(cursor)) return pages[cursor]!;
    if (wait != null) return MasanaInboxPage(items:await wait.future,nextCursor:null);
    if (responses.containsKey(query))
      return MasanaInboxPage(items:responses[query]!,nextCursor: pages.containsKey('first') ? 'first' : null);
    return MasanaInboxPage(items:query == 'astronomy' ? [remote] : [],nextCursor:null);
  }

  @override
  Future<int> setPinned({
    required String bearer, required String characterId,
    required bool pinned, required int expectedRevision,
  }) async {
    pins.add('$bearer:$characterId:$pinned:$expectedRevision');
    return expectedRevision + 1;
  }

  @override
  Future<void> markRead({
    required String bearer, required String characterId,
  }) async {
    reads.add('$bearer:$characterId');
  }
}

class FakeControlsInbox extends FakeInbox implements MasanaInboxControlsAccess {
  final controls = <String>[];
  final remoteArchived = <MasanaInboxSearchItem>[];

  @override
  Future<MasanaInboxPage> searchPage({required String bearer,
      required String query, String? cursor, int limit = 15}) async {
    final page = await super.searchPage(
      bearer: bearer, query: query, cursor: cursor, limit: limit);
    return MasanaInboxPage(
      items: page.items.where((item) => !item.archived).toList(),
      nextCursor: page.nextCursor);
  }

  @override
  Future<MasanaInboxPage> archivedPage({required String bearer,
      String query = '', String? cursor, int limit = 15}) async {
    calls.add('archived:$bearer:$query:$cursor');
    return MasanaInboxPage(items: remoteArchived.where((row) =>
      row.archived && ('${row.displayName} ${row.customTitle ?? ''}'
        .toLowerCase().contains(query.toLowerCase()))).toList(),
      nextCursor: null);
  }

  @override
  Future<int> setArchived({required String bearer, required String characterId,
      required bool archived, required int expectedRevision}) async {
    controls.add('archive:$bearer:$characterId:$archived:$expectedRevision');
    final row = responses['']!.firstWhere((item) =>
      item.characterId == characterId);
    final updated = row.withControls(archived: archived,
      revision: expectedRevision + 1);
    responses[''] = [
      for (final item in responses['']!)
        if (item.characterId == characterId) updated else item,
    ];
    remoteArchived.removeWhere((item) => item.characterId == characterId);
    if (archived) remoteArchived.add(updated);
    return updated.revision;
  }

  @override
  Future<int> setTitle({required String bearer, required String characterId,
      required String? title, required int expectedRevision}) async {
    controls.add('title:$bearer:$characterId:$title:$expectedRevision');
    final row = responses['']!.firstWhere((item) =>
      item.characterId == characterId);
    final updated = row.withControls(customTitle: title,
      changeTitle: true, revision: expectedRevision + 1);
    responses[''] = [
      for (final item in responses['']!)
        if (item.characterId == characterId) updated else item,
    ];
    return updated.revision;
  }
}

void main() {
  Future<ProviderContainer> mount(WidgetTester tester, FakeInbox inbox,
      {bool narrowRtl = false}) async {
    tester.view.physicalSize = narrowRtl ? const Size(320, 820) : const Size(390, 820);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final router = GoRouter(routes: [
      GoRoute(path:'/', builder:(_, _) => const ChatListScreen()),
      GoRoute(path:'/chat/:id', builder:(_, state) =>
        Scaffold(body:Text('Opened ${state.pathParameters['id']}'))),
      GoRoute(path:'/masana', builder:(_, _) =>
        const Scaffold(body:Text('Discover'))),
    ]);
    addTearDown(router.dispose);
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(TestSession.new),
        agentDirectoryProvider.overrideWith(TestDirectory.new),
        aiChatProvider.overrideWith(TestChats.new),
        masanaInboxSearchProvider.overrideWithValue(inbox),
      ],
      child: MaterialApp.router(
        theme: buildMasanawaTheme(brightness:Brightness.light),
        routerConfig: router,
        builder: narrowRtl ? (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(2)),
          child: Directionality(textDirection: TextDirection.rtl, child: child!),
        ) : null,
      ),
    ));
    await tester.pumpAndSettle();
    return ProviderScope.containerOf(
      tester.element(find.byType(ChatListScreen)),
    );
  }

  testWidgets('canonical startup fetch, server search, pin, read and open', (tester) async {
    final inbox = FakeInbox();
    await mount(tester, inbox);
    expect(inbox.calls, contains('old-fan-token:'));
    expect(find.text('Local history'), findsOneWidget);
    await tester.enterText(find.byType(TextField), 'Astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    expect(inbox.calls, contains('old-fan-token:astronomy'));
    expect(find.text('Astronomy Masana'), findsOneWidget);
    expect(find.text('Stars are bright'), findsOneWidget);
    await tester.tap(find.byTooltip('Pin server conversation'));
    await tester.pump();
    expect(inbox.pins.single, contains('old-fan-token:'));
    expect(find.byTooltip('Unpin server conversation'), findsOneWidget);
    await tester.tap(find.text('Astronomy Masana'));
    await tester.pumpAndSettle();
    expect(inbox.reads.single, contains('old-fan-token:'));
    expect(find.textContaining('Opened character_'), findsOneWidget);
  });

  testWidgets('authorized local row rename and archive round-trip preserve draft',
      (tester) async {
    const id = 'character_00000000-0000-0000-0000-000000000001';
    final inbox = FakeControlsInbox()..responses[''] = [
      const MasanaInboxSearchItem(characterId: id,
        displayName: 'Gwana', profession: 'Teacher',
        lastMessage: 'Conversation preview', pinned: true,
        unreadCount: 8, revision: 2, customTitle: 'Account title'),
    ];
    await mount(tester, inbox);
    expect(find.text('Account title'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);

    await tester.longPress(find.text('Account title'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Rename'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).last, 'Edited title');
    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();
    expect(inbox.controls, contains('title:old-fan-token:$id:Edited title:2'));
    expect(find.text('Edited title'), findsOneWidget);

    await tester.longPress(find.text('Edited title'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Archive conversation'));
    await tester.pumpAndSettle();
    expect(inbox.controls.any((action) => action.contains('archive:') &&
        action.contains(':true:3')), isTrue);
    expect(find.text('Edited title'), findsNothing);

    await tester.tap(find.byTooltip('Chats options'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Archived chats'));
    await tester.pumpAndSettle();
    expect(find.text('Edited title'), findsOneWidget);
    await tester.tap(find.byTooltip('Unarchive account conversation'));
    await tester.pumpAndSettle();
    expect(inbox.controls.any((action) => action.contains(':false:4')), isTrue);
  });

  testWidgets('remote-only inbox displays unread and pin together on first open',
      (tester) async {
    final inbox = FakeInbox()..responses[''] = [
      const MasanaInboxSearchItem(
        characterId: 'character_00000000-0000-0000-0000-000000000099',
        displayName: 'Astronomy Masana', profession: 'Scientist',
        lastMessage: 'Stars are bright', pinned: true,
        unreadCount: 12, revision: 4),
    ];
    await mount(tester, inbox);
    expect(inbox.calls, contains('old-fan-token:'));
    expect(find.text('Astronomy Masana'), findsOneWidget);
    expect(find.text('12'), findsOneWidget);
    expect(find.byTooltip('Unpin server conversation'), findsOneWidget);
  });

  testWidgets('out-of-order server search cannot replace later query', (tester) async {
    final inbox = FakeInbox();
    final old = Completer<List<MasanaInboxSearchItem>>();
    inbox.pending['alpha'] = old;
    await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'alpha');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    expect(find.text('Astronomy Masana'), findsOneWidget);
    old.complete(const []);
    await tester.pump();
    expect(find.text('Astronomy Masana'), findsOneWidget);
  });

  testWidgets('same-user fresh login discards remote results and epoch cache',
      (tester) async {
    final inbox = FakeInbox();
    final container = await mount(tester, inbox, narrowRtl: true);
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    expect(find.text('Astronomy Masana'), findsOneWidget);
    expect(inbox.calls, containsAll(['old-fan-token:', 'old-fan-token:astronomy']));
    (container.read(sessionProvider.notifier) as TestSession)
        .sameUserReauthentication();
    await tester.pumpAndSettle();
    expect(find.text('Astronomy Masana'), findsNothing);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text,
        isEmpty);
    expect(find.byTooltip('Retry loading conversations'), findsNothing);
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    expect(inbox.calls.where((call) => call.endsWith(':astronomy')), hasLength(2));
    expect(find.text('Astronomy Masana'), findsOneWidget);
    expect(find.byType(ChoiceChip), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('old pending page cannot contaminate a new same-ID login',
      (tester) async {
    final inbox = FakeInbox();
    inbox.responses['astronomy'] = [inbox.remote];
    inbox.pages['first'] = const MasanaInboxPage(items: [], nextCursor: null);
    inbox.pendingOlderPage = Completer<MasanaInboxPage>();
    final container = await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    await tester.tap(find.text('Load more conversations'));
    await tester.pump();
    expect(find.bySemanticsLabel('Loading more conversations'), findsOneWidget);
    (container.read(sessionProvider.notifier) as TestSession)
        .sameUserReauthentication();
    await tester.pumpAndSettle();
    expect(find.bySemanticsLabel('Loading more conversations'), findsNothing);
    inbox.pendingOlderPage!.complete(MasanaInboxPage(items: [inbox.remote],
        nextCursor: null));
    await tester.pump();
    expect(find.text('Astronomy Masana'), findsNothing);
    expect(find.text('Load more conversations'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('routine token rotation keeps the search draft', (tester) async {
    final inbox = FakeInbox();
    final container = await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    (container.read(sessionProvider.notifier) as TestSession).tokenRotation();
    await tester.pump();
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text,
        'astronomy');
    expect(inbox.calls, contains('rotated-fan-token:astronomy'));
    expect(tester.takeException(), isNull);
  });

  testWidgets('server-only search hit reuses cached thread and deduplicates replay', (tester) async {
    final inbox = FakeInbox();
    inbox.responses['stars'] = [
      const MasanaInboxSearchItem(
        characterId: 'character_00000000-0000-0000-0000-000000000001',
        displayName: 'Gwana', profession: 'Teacher', lastMessage: 'Stars',
        pinned: true, unreadCount: 7, revision: 2,
      ),
      inbox.remote,
      inbox.remote,
    ];
    await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'stars');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    // The local message/draft identity wins even when the server is the only
    // source of the text match. Replayed server records never add extra rows.
    expect(find.text('Local history'), findsOneWidget);
    expect(find.text('Astronomy Masana'), findsOneWidget);
    expect(find.byKey(const ValueKey('remote-character_00000000-0000-0000-0000-000000000001')), findsNothing);
    expect(find.byType(ListTile), findsNWidgets(2));
    expect(find.byType(ChoiceChip), findsNothing);
    expect(find.text('Other server conversations'), findsNothing);
    await tester.enterText(find.byType(TextField), '');
    await tester.pump(const Duration(milliseconds: 380));
    expect(find.text('Local history'), findsOneWidget);
    expect(find.text('Astronomy Masana'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  test('inbox wire timestamp is validated and preserved on pin revisions', () {
    final row = MasanaInboxSearchItem.fromJson({
      'characterId': 'character_00000000-0000-0000-0000-000000000001',
      'displayName': 'Gwana', 'profession': 'Teacher',
      'lastMessage': 'Salam', 'pinned': false, 'unreadCount': 1,
      'revision': 7, 'lastActivityAt': '2026-10-20T15:20:00Z',
    });
    expect(row.lastActivityAt, DateTime.utc(2026, 10, 20, 15, 20));
    expect(row.withPin(true, 8).lastActivityAt, row.lastActivityAt);
    expect(() => MasanaInboxSearchItem.fromJson({
      'characterId': row.characterId, 'displayName': row.displayName,
      'profession': row.profession, 'pinned': false,
      'unreadCount': 0, 'revision': 1, 'lastActivityAt': 'invalid',
    }), throwsFormatException);
  });

  testWidgets('offline search keeps cached history and never starts server request', (tester) async {
    final inbox = FakeInbox();
    final container = await mount(tester, inbox);
    (container.read(aiChatProvider.notifier) as TestChats).goOffline();
    await tester.pump();
    inbox.calls.clear();
    await tester.enterText(find.byType(TextField), 'history');
    await tester.pump(const Duration(milliseconds: 380));
    expect(find.text('Local history'), findsOneWidget);
    expect(inbox.calls, isEmpty);
    await tester.enterText(find.byType(TextField), 'missing');
    await tester.pump(const Duration(milliseconds: 380));
    expect(find.text('No matches in saved conversations'), findsOneWidget);
    expect(find.textContaining('Offline searches only include saved'), findsOneWidget);
    expect(inbox.calls, isEmpty);
  });

  testWidgets('switching fans fences late search response and clears query', (tester) async {
    final inbox = FakeInbox();
    final pending = Completer<List<MasanaInboxSearchItem>>();
    inbox.pending['astronomy'] = pending;
    final container = await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'astronomy');
    await tester.pump(const Duration(milliseconds: 380));
    (container.read(sessionProvider.notifier) as TestSession).switchAccount();
    await tester.pump();
    pending.complete([inbox.remote]);
    await tester.pump();
    expect(find.text('Astronomy Masana'), findsNothing);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, isEmpty);
    expect(inbox.calls, contains('old-fan-token:astronomy'));
    expect(inbox.calls.any((c) => c == 'new-fan-token:astronomy'), isFalse);
  });

  testWidgets('server unavailable preserves saved conversation and retry', (tester) async {
    final inbox = FakeInbox()..disabled = true;
    await mount(tester, inbox);
    await tester.enterText(find.byType(TextField), 'history');
    await tester.pump(const Duration(milliseconds: 380));
    await tester.pump();
    expect(find.text('Local history'), findsOneWidget);
    expect(find.textContaining('Conversation sync unavailable'), findsOneWidget);
    expect(find.byTooltip('Retry conversation sync'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
  testWidgets('paged search keeps one list, old rows on retry and stable scroll', (tester) async {
    final inbox = FakeInbox();
    inbox.responses['stars'] = [inbox.remote];
    final second = const MasanaInboxSearchItem(
      characterId:'character_00000000-0000-0000-0000-000000000087',
      displayName:'Physics Masana',profession:'Teacher',
      lastMessage:'Another star',pinned:false,unreadCount:0,revision:1,
    );
    inbox.pages['first'] = MasanaInboxPage(items:[second,inbox.remote],nextCursor:null);
    await mount(tester,inbox);
    await tester.enterText(find.byType(TextField),'stars');
    await tester.pump(const Duration(milliseconds:380));
    await tester.pump();
    expect(find.text('Load more conversations'),findsOneWidget);
    expect(find.text('Astronomy Masana'),findsOneWidget);
    await tester.tap(find.text('Load more conversations'));
    await tester.pumpAndSettle();
    expect(find.text('Physics Masana'),findsOneWidget);
    expect(find.text('Astronomy Masana'),findsOneWidget);
    expect(find.text('Load more conversations'),findsNothing);
    expect(inbox.pageCursors,contains('first'));
    expect(find.byType(ListTile),findsNWidgets(2));
    expect(tester.takeException(),isNull);
  });
  testWidgets('failed page retries the same cursor, query change drops older results', (tester) async {
    final inbox=FakeInbox();
    inbox.responses['stars'] = [inbox.remote];
    inbox.pages['first']=const MasanaInboxPage(items:[],nextCursor:null);
    await mount(tester,inbox);
    await tester.enterText(find.byType(TextField),'stars');
    await tester.pump(const Duration(milliseconds:380));
    await tester.pump();
    inbox.disabled=true;
    await tester.tap(find.text('Load more conversations'));
    await tester.pumpAndSettle();
    expect(find.text('Astronomy Masana'),findsOneWidget);
    expect(find.byTooltip('Retry loading conversations'),findsOneWidget);
    inbox.disabled=false;
    await tester.tap(find.byTooltip('Retry loading conversations'));
    await tester.pumpAndSettle();
    expect(inbox.pageCursors.where((x)=>x=='first'),hasLength(2));
    expect(find.text('Load more conversations'),findsNothing);
    await tester.enterText(find.byType(TextField),'history');
    await tester.pump(const Duration(milliseconds:380));
    await tester.pump();
    expect(find.text('Astronomy Masana'),findsNothing);
    expect(find.text('Local history'),findsOneWidget);
  });
}
