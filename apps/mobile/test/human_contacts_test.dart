import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/calls/masana_voice_route.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/chat/human_contacts_list.dart';
import 'package:masanawa/src/screens/chat/masana_list_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/social/human_contacts.dart';
import 'package:masanawa/src/state/human_contacts_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

class _Session extends SessionController {
  static const user = AuthUser(
    id: 'viewer',
    name: 'Viewer',
    locale: 'en',
    status: 'ACTIVE',
    role: 'USER',
    isNewUser: false,
    createdAt: '2026-10-19',
  );
  @override
  SessionState build() => const SessionSignedIn(
    user,
    AuthTokens(
      accessToken: 'test',
      refreshToken: 'test',
      accessExpiresIn: 3600,
      user: user,
    ),
  );
  void signOutForTest() => state = const SessionSignedOut();
}

class _Directory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(loading: false);
}

class _MasanaDirectory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(loading: false, agents: [
    AgentDirectoryEntry(
      characterId: 'masana-test',
      characterVersionId: 'rev-1',
      displayName: 'Test Masana',
      roleLabel: 'AI companion',
      about: 'Voice and chat',
      presence: AgentPresence.available,
    ),
  ]);
}

class _Contacts implements HumanContactsTransport {
  final requests = <String>[];
  Completer<HumanContactPage>? pending;
  @override
  Future<HumanContactPage> load({String query = '', String? after}) async {
    requests.add('$query:${after ?? ''}');
    if (pending != null) return pending!.future;
    return const HumanContactPage(
      items: [HumanContact(handle: 'amina', displayName: 'Amina Yusuf')],
    );
  }
}

Widget app(_Contacts contacts, Widget child, {_Session? session}) =>
    ProviderScope(
      overrides: [
        sessionProvider.overrideWith(() => session ?? _Session()),
        agentDirectoryProvider.overrideWith(_Directory.new),
        humanContactsTransportProvider.overrideWithValue(contacts),
      ],
      child: MaterialApp(
        theme: buildMasanawaTheme(brightness: Brightness.light),
        home: Scaffold(body: child),
      ),
    );

void main() {
  test('all Masana call actions share the routed voice entry and encode identity', () {
    final uri = Uri.parse(masanaLiveVoiceRoute('agent /?'));
    expect(uri.pathSegments, ['chat', 'agent /?']);
    expect(uri.queryParameters, {'entry': 'live-voice'});
  });

  testWidgets('Masana call selection enters the routed live-voice mode', (tester) async {
    final router = GoRouter(routes: [
      GoRoute(path: '/', builder: (_, __) => const MasanaListScreen(callPicker: true)),
      GoRoute(
        path: '/chat/:id',
        builder: (_, state) => Scaffold(
          body: Text('Opened ${state.pathParameters['id']} as ${state.uri.queryParameters['entry']}'),
        ),
      ),
    ]);
    addTearDown(router.dispose);
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_Session.new),
        agentDirectoryProvider.overrideWith(_MasanaDirectory.new),
      ],
      child: MaterialApp.router(
        theme: buildMasanawaTheme(brightness: Brightness.light),
        routerConfig: router,
      ),
    ));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Test Masana'));
    await tester.pumpAndSettle();
    expect(find.text('Opened masana-test as live-voice'), findsOneWidget);
  });

  testWidgets('call picking opens Humans directly and hides Masana creation', (tester) async {
    final contacts = _Contacts();
    await tester.pumpWidget(app(contacts, const MasanaListScreen(initialTab: 1, callPicker: true)));
    await tester.pumpAndSettle();
    expect(find.text('New call'), findsOneWidget);
    expect(find.text('Amina Yusuf'), findsOneWidget);
    expect(find.text('Create Masana'), findsNothing);
    expect(contacts.requests, contains(':'));
  });

  testWidgets('call selection callback invokes voice intent without starting a message', (tester) async {
    String? chosen;
    final contacts = _Contacts();
    await tester.pumpWidget(app(contacts, HumanContactsList(
      query: '',
      onCall: (handle) async { chosen = handle; },
    )));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Amina Yusuf'));
    await tester.pumpAndSettle();
    expect(chosen, 'amina');
  });

  testWidgets('Contacts preserves Masana and Humans as two tabs', (
    tester,
  ) async {
    final contacts = _Contacts();
    await tester.pumpWidget(app(contacts, const MasanaListScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Contacts'), findsOneWidget);
    expect(find.widgetWithText(Tab, 'Masana'), findsOneWidget);
    expect(find.widgetWithText(Tab, 'Humans'), findsOneWidget);
    expect(contacts.requests, isEmpty);
    await tester.tap(find.widgetWithText(Tab, 'Humans'));
    await tester.pumpAndSettle();
    expect(find.text('Amina Yusuf'), findsOneWidget);
    expect(find.text('Create Masana'), findsNothing);
    await tester.tap(find.widgetWithText(Tab, 'Masana'));
    await tester.pumpAndSettle();
    expect(find.text('Create Masana'), findsOneWidget);
  });
  test(
    'contact projection rejects invalid identity and preserves public fields',
    () {
      expect(
        () => HumanContact.fromJson({
          'handle': 'bad handle',
          'displayName': 'Name',
        }),
        throwsFormatException,
      );
      final contact = HumanContact.fromJson({
        'handle': 'amina',
        'displayName': 'Amina',
        'phone': 'private',
      });
      expect(contact.handle, 'amina');
      expect(contact.displayName, 'Amina');
    },
  );
  testWidgets('lists humans using their public creator identity', (
    tester,
  ) async {
    final contacts = _Contacts();
    await tester.pumpWidget(app(contacts, const HumanContactsList(query: '')));
    await tester.pumpAndSettle();
    expect(find.text('Amina Yusuf'), findsOneWidget);
    expect(find.text('@amina'), findsOneWidget);
    expect(contacts.requests, [':']);
  });
  testWidgets(
    'search is debounced and old results cannot replace a new query',
    (tester) async {
      final contacts = _Contacts()..pending = Completer<HumanContactPage>();
      await tester.pumpWidget(
        app(contacts, const HumanContactsList(query: '')),
      );
      await tester.pump();
      final old = contacts.pending!;
      contacts.pending = null;
      await tester.pumpWidget(
        app(contacts, const HumanContactsList(query: 'amina')),
      );
      await tester.pump(const Duration(milliseconds: 350));
      await tester.pumpAndSettle();
      old.complete(
        const HumanContactPage(
          items: [HumanContact(handle: 'old', displayName: 'Old account')],
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Old account'), findsNothing);
      expect(find.text('Amina Yusuf'), findsOneWidget);
      expect(contacts.requests, [':', 'amina:']);
    },
  );
  testWidgets('signout clears contacts and ignores pending response', (
    tester,
  ) async {
    final contacts = _Contacts()..pending = Completer<HumanContactPage>();
    final session = _Session();
    await tester.pumpWidget(
      app(contacts, const HumanContactsList(query: ''), session: session),
    );
    await tester.pump();
    session.signOutForTest();
    await tester.pump();
    contacts.pending!.complete(
      const HumanContactPage(
        items: [
          HumanContact(
            handle: 'amina',
            displayName: 'Private previous account',
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Private previous account'), findsNothing);
    expect(find.text('Sign in to find people.'), findsOneWidget);
  });
  testWidgets(
    'single-character search explains requirement without a request',
    (tester) async {
      final contacts = _Contacts();
      await tester.pumpWidget(
        app(contacts, const HumanContactsList(query: 'x')),
      );
      await tester.pumpAndSettle();
      expect(contacts.requests, isEmpty);
      expect(
        find.text('Enter at least two characters to find someone.'),
        findsOneWidget,
      );
    },
  );
}
