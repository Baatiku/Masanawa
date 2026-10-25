import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/agents/masana_portrait_avatar.dart';
import 'package:masanawa/src/screens/profile/masana_profile_screen.dart';
import 'package:masanawa/src/screens/chat/masana_list_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';

const old = AgentDirectoryEntry(characterId: 'character_amina', characterVersionId: 'v1',
  displayName: 'Dr. Amina', roleLabel: 'Medicine', about: 'Long old description',
  greeting: 'Long old greeting', presence: AgentPresence.unknown);
const fresh = AgentDirectoryEntry(characterId: 'character_amina', characterVersionId: 'v2',
  displayName: 'Dr. Amina', roleLabel: 'Medicine', about: 'Long old description',
  presence: AgentPresence.unknown, portraitKey: 'amina');
class Directory extends AgentDirectoryController {
  @override AgentDirectoryState build() => const AgentDirectoryState(loading: false, agents: [old]);
  void update() => state = const AgentDirectoryState(loading: false, agents: [fresh]);
}
class RetryingDirectory extends Directory {
  int attempts = 0;
  @override AgentDirectoryState build() => const AgentDirectoryState(
    loading: false, agents: [old], error: 'Offline');
  @override Future<void> refresh() async {
    attempts++;
    state = const AgentDirectoryState(loading: false, agents: [fresh]);
  }
}
const user = AuthUser(id: 'owner', name: 'Fan', locale: 'en', status: 'ACTIVE', role: 'USER', isNewUser: false, createdAt: '2026-10-19');
const tokens = AuthTokens(accessToken: 'test', refreshToken: 'refresh', accessExpiresIn: 3600, user: user);
class EmptyDirectory extends Directory {
  @override AgentDirectoryState build() => const AgentDirectoryState(loading: false);
}
class SignedIn extends SessionController {
  @override SessionState build() => const SessionSignedIn(user, tokens);
  void signOut() => state = const SessionSignedOut();
}
class EpochSession extends SignedIn {
  int epoch = 1;
  @override int get authorizationEpoch => epoch;
  void reauthenticate() {
    epoch++;
    state = SessionSignedIn(user, AuthTokens(
      accessToken: 'new-epoch-$epoch', refreshToken: 'new-refresh',
      accessExpiresIn: 3600, user: user));
  }
}
ApiClient client({Completer<Response<dynamic>>? follow}) {
  final dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    if (options.path.endsWith('/follow') && follow != null) {
      handler.resolve(await follow.future); return;
    }
    handler.resolve(Response(requestOptions: options, statusCode: 200,
      data: {'items': <Object>[], 'nextCursor': null}));
  }));
  return ApiClient(dio: dio)..accessToken = 'test';
}
void main() {
  testWidgets('offline portrait metadata stays identity-safe and explicit Retry restores verified key',
      (tester) async {
    final directory = RetryingDirectory();
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(() => directory),
      sessionProvider.overrideWith(SignedIn.new),
      apiClientProvider.overrideWithValue(client()),
    ], child: const MaterialApp(home: MasanaProfileScreen(agent: old))));
    await tester.pumpAndSettle();
    expect(find.text('Retry profile details'), findsOneWidget);
    expect(tester.widget<MasanaPortraitAvatar>(
      find.byType(MasanaPortraitAvatar)).agent?.portraitKey, isNull);
    await tester.tap(find.text('Retry profile details'));
    await tester.pumpAndSettle();
    expect(directory.attempts, 1);
    expect(find.text('Retry profile details'), findsNothing);
    expect(tester.widget<MasanaPortraitAvatar>(
      find.byType(MasanaPortraitAvatar)).agent?.portraitKey, 'amina');
    expect(tester.takeException(), isNull);
  });

  testWidgets('same-user new authorization epoch cannot retain profile or late Follow',
      (tester) async {
    final session = EpochSession();
    final pending = Completer<Response<dynamic>>();
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(Directory.new),
      sessionProvider.overrideWith(() => session),
      apiClientProvider.overrideWithValue(client(follow: pending)),
    ], child: const MaterialApp(home: MasanaProfileScreen(agent: old))));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Follow'));
    await tester.pump();
    session.reauthenticate();
    await tester.pump();
    pending.complete(Response(requestOptions: RequestOptions(path: '/follow'),
      statusCode: 200, data: {'following': true}));
    // The deliberately delayed Follow transport can retain in-flight network
    // retry animations; only the new authorization projection is under test.
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));
    expect(find.text('Session changed. Reopen this profile.'), findsOneWidget);
    expect(find.text('Following'), findsNothing);
    expect(tester.takeException(), isNull);
  });
  testWidgets('profile follows canonical portrait refresh and promotes recent posts without biography', (tester) async {
    final directory = Directory();
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(() => directory),
      sessionProvider.overrideWith(SignedIn.new),
      apiClientProvider.overrideWithValue(client()),
    ], child: const MaterialApp(home: MasanaProfileScreen(agent: old))));
    await tester.pumpAndSettle();
    expect(find.text('About'), findsNothing);
    expect(find.text('Long old description'), findsNothing);
    expect(find.text('Long old greeting'), findsNothing);
    expect(find.text('Recent posts'), findsOneWidget);
    directory.update();
    await tester.pumpAndSettle();
    final avatar = tester.widget<MasanaPortraitAvatar>(find.byType(MasanaPortraitAvatar));
    expect(avatar.agent?.characterId, old.characterId);
    expect(avatar.agent?.portraitKey, 'amina');
    expect(tester.takeException(), isNull);
  });
  testWidgets('late follow response cannot cross an account boundary', (tester) async {
    final session = SignedIn();
    final pending = Completer<Response<dynamic>>();
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(Directory.new),
      sessionProvider.overrideWith(() => session),
      apiClientProvider.overrideWithValue(client(follow: pending)),
    ], child: const MaterialApp(home: MasanaProfileScreen(agent: old))));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Follow'));await tester.pump();
    session.signOut();await tester.pump();
    pending.complete(Response(requestOptions: RequestOptions(path: '/follow'),
      statusCode: 200, data: {'following': true}));
    await tester.pumpAndSettle();
    expect(find.text('Sign in to view this profile.'), findsOneWidget);
    expect(find.text('Following'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('contacts show only platform Masana without public creation or human picker', (tester) async {
    await tester.pumpWidget(ProviderScope(overrides: [
      agentDirectoryProvider.overrideWith(EmptyDirectory.new),
      sessionProvider.overrideWith(SignedIn.new),
      apiClientProvider.overrideWithValue(client()),
    ], child: const MaterialApp(home: MasanaListScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Search Masana'), findsOneWidget);
    expect(find.text('Create Masana'), findsNothing);
    expect(find.text('Humans'), findsNothing);
    expect(find.byType(FloatingActionButton), findsNothing);
    expect(tester.takeException(), isNull);
  });

}
