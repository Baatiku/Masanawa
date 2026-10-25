import 'package:flutter/material.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/chat/unified_chat_inbox.dart';
import 'package:masanawa/src/state/session_state.dart';

const _user = AuthUser(
  id: 'test-masana-only',name: 'Reader',locale: 'en',status: 'ACTIVE',
  role: 'USER',isNewUser: false,createdAt: '2026-10-24T00:00:00Z',
);
class _Session extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_user, AuthTokens(
    accessToken: 'signed-in-fixture', refreshToken: 'not-production',
    accessExpiresIn: 900, user: _user,
  ));
}
class _OfflineChats extends AiChatController {
  @override
  AiChatState build() => const AiChatState(online: false);
}
class _EmptyDirectory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(loading: false);
}
void main() {
  testWidgets('single inbox includes archived history and reorders only when a message arrives', (tester) async {
    AiChatMessage message(int day) => AiChatMessage(id: 'm$day', isUser: false,
      text: 'received', createdAt: DateTime.utc(2026, 10, day));
    final old = ChatThread(characterId: 'old', archived: true, pinned: true,
      draft: 'changed today', updatedAt: DateTime.utc(2026, 10, 25),
      messages: [message(5)]);
    final recent = ChatThread(characterId: 'recent', messages: [message(20)]);
    final rows = ValueNotifier([old, recent]);
    addTearDown(rows.dispose);
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      aiChatProvider.overrideWith(_OfflineChats.new),
      agentDirectoryProvider.overrideWith(_EmptyDirectory.new),
    ], child: MaterialApp(home: Scaffold(body: ValueListenableBuilder<List<ChatThread>>(
      valueListenable: rows, builder: (_, threads, __) => UnifiedChatInbox(
        masanaThreads: threads, masanaRow: (thread) => ListTile(title: Text(thread.characterId)),
      ),
    )))));
    await tester.pumpAndSettle();
    expect(tester.getCenter(find.text('recent')).dy, lessThan(tester.getCenter(find.text('old')).dy));
    rows.value = [old.copyWith(messages: [...old.messages, message(26)]), recent];
    await tester.pump();
    expect(find.text('old'), findsOneWidget);
    expect(tester.getCenter(find.text('old')).dy, lessThan(tester.getCenter(find.text('recent')).dy));
    expect(find.byType(ChoiceChip), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Masana-only inbox never subscribes to legacy human messages',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_Session.new),
      ],
      child: const MaterialApp(
        home: Scaffold(body: UnifiedChatInbox(
          masanaThreads: [],
          masanaRow: _noRow,
        )),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('People'), findsNothing);
    expect(find.text('All'), findsNothing);
    expect(find.text('Unread'), findsNothing);
    expect(find.text('Archived'), findsNothing);
    expect(find.text('Message requests'), findsNothing);
    expect(find.text('No conversations yet'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
Widget _noRow(dynamic _) => const SizedBox.shrink();
