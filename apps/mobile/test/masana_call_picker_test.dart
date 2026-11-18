import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/calls/masana_voice_route.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/chat/masana_list_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedIn extends SessionController {
  @override
  SessionState build() {
    const u = AuthUser(
      id: 'viewer', name: 'Viewer', locale: 'en', status: 'ACTIVE',
      role: 'USER', isNewUser: false, createdAt: '2026-10-19');
    return const SessionSignedIn(
      u, AuthTokens(accessToken: 'test', refreshToken: 'test',
      accessExpiresIn: 3600, user: u));
  }
}

class _MasanaDirectory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(
    loading: false,
    agents: [AgentDirectoryEntry(
      characterId: 'masana-test', characterVersionId: 'rev-1',
      displayName: 'Test Masana', roleLabel: 'Voice companion',
      about: 'Voice and chat', presence: AgentPresence.available)],
  );
}

void main() {
  test('Masana call entry preserves the canonical character identity', () {
    final uri = Uri.parse(masanaLiveVoiceRoute('agent /?'));
    expect(uri.pathSegments, ['chat', 'agent /?']);
    expect(uri.queryParameters, {'entry': 'live-voice'});
  });

  testWidgets('new call picker only lists existing Masana and initiates voice',
      (tester) async {
    final router = GoRouter(routes: [
      GoRoute(path: '/', builder: (_, __) =>
          const MasanaListScreen(callPicker: true)),
      GoRoute(path: '/chat/:id', builder: (_, state) => Scaffold(
        body: Text('Opened ${state.pathParameters['id']} as '
            '${state.uri.queryParameters['entry']}'),
      )),
    ]);
    addTearDown(router.dispose);
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_SignedIn.new),
      agentDirectoryProvider.overrideWith(_MasanaDirectory.new),
    ], child: MaterialApp.router(routerConfig: router)));
    await tester.pumpAndSettle();
    expect(find.text('Humans'), findsNothing);
    expect(find.text('Create Masana'), findsNothing);
    await tester.tap(find.text('Test Masana'));
    await tester.pumpAndSettle();
    expect(find.text('Opened masana-test as live-voice'), findsOneWidget);
  });
}
