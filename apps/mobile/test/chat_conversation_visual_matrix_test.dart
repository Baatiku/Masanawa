import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/screens/chat/ai_chat_screen.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/state/wallet_state.dart';
import 'package:masanawa/src/commerce/wallet_models.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

const captureChatGoldens = bool.fromEnvironment('CHAT_CAPTURE_GOLDENS');

class _FallbackMaterialDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  const _FallbackMaterialDelegate();
  @override bool isSupported(Locale locale) => true;
  @override Future<MaterialLocalizations> load(Locale locale) async =>
      const DefaultMaterialLocalizations();
  @override bool shouldReload(covariant _FallbackMaterialDelegate old) => false;
}


class _VisualChats extends AiChatController {
  @override
  AiChatState build() => AiChatState(threads: {
    'visual-agent': ChatThread(characterId: 'visual-agent', messages: [
      AiChatMessage(id: 'user-one', isUser: true,
        text: 'Hello, can you explain this clearly?',
        createdAt: DateTime(2026, 10, 30, 12), deliveryStatus: 'delivered'),
      AiChatMessage(id: 'assistant-one', isUser: false,
        text: 'Yes. Here is a clear and useful explanation with enough words '
          'to measure the conversation bubble at narrow widths.',
        createdAt: DateTime(2026, 10, 30, 12, 1),
        deliveryStatus: 'delivered'),
      AiChatMessage(id: 'user-two', isUser: true,
        text: 'Thank you 🙏',
        createdAt: DateTime(2026, 10, 30, 12, 2),
        deliveryStatus: 'delivered'),
    ]),
  });
  @override void openThread(String characterId) {}
  @override void closeThread() {}
  @override void setDraft(String characterId, String value) {}
  @override void setDraftAttachments(String characterId,
      List<ChatAttachment> value) {}
}

class _VisualDirectory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() => const AgentDirectoryState(
    loading: false,
    agents: [
      AgentDirectoryEntry(
        characterId: 'visual-agent', characterVersionId: 'v1',
        displayName: 'Amina', roleLabel: 'AI', about: '',
        presence: AgentPresence.available, supportAgent: true),
    ],
  );
  @override Future<void> refresh() async {}
}

const _user = AuthUser(id: 'visual-owner', name: 'Fan', locale: 'en',
  status: 'ACTIVE', role: 'USER', isNewUser: false, createdAt: '2026-10-12');
const _tokens = AuthTokens(accessToken: 'test', refreshToken: 'test-refresh',
  accessExpiresIn: 3600, user: _user);

class _VisualSession extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_user, _tokens);
}
class _VisualWallet extends WalletController {
  @override Future<WalletView?> build() async => null;
  @override Future<void> refresh() async {}
}

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));
  const cases = [
    ('conversation_320_light', 320.0, 760.0, Brightness.light, 1.0, TextDirection.ltr, 'en'),
    ('conversation_390_dark', 390.0, 760.0, Brightness.dark, 1.0, TextDirection.ltr, 'en'),
    ('conversation_320_large_type', 320.0, 760.0, Brightness.light, 2.0, TextDirection.ltr, 'en'),
    ('conversation_360_rtl', 360.0, 760.0, Brightness.light, 1.0, TextDirection.rtl, 'en'),
    ('conversation_320_rtl_large_type', 320.0, 760.0, Brightness.dark, 2.0, TextDirection.rtl, 'en'),
    ('conversation_430_light', 430.0, 760.0, Brightness.light, 1.0, TextDirection.ltr, 'en'),
    ('conversation_430_dark', 430.0, 760.0, Brightness.dark, 1.0, TextDirection.ltr, 'en'),
    ('conversation_360_hausa', 360.0, 760.0, Brightness.light, 1.0, TextDirection.ltr, 'ha'),
    ('conversation_360_arabic', 360.0, 760.0, Brightness.light, 1.0, TextDirection.rtl, 'ar'),
    ('conversation_landscape_640', 640.0, 360.0, Brightness.light, 1.0, TextDirection.ltr, 'en'),
  ];
  for (final (name, width, height, brightness, scale, direction, locale) in cases) {
    testWidgets('Conversation viewport $name is stable', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = Size(width, height);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(ProviderScope(overrides: [
        aiChatProvider.overrideWith(_VisualChats.new),
        agentDirectoryProvider.overrideWith(_VisualDirectory.new),
        sessionProvider.overrideWith(_VisualSession.new),
        walletProvider.overrideWith(_VisualWallet.new),
      ], child: MaterialApp(
        theme: buildMasanawaTheme(brightness: brightness),
        builder: (context, child) => Localizations.override(
          context: context,
          locale: Locale(locale),
          delegates: const [_FallbackMaterialDelegate()],
          child: child ?? const SizedBox.shrink(),
        ),
        home: MediaQuery(
          data: MediaQueryData(size: Size(width, height),
              textScaler: TextScaler.linear(scale)),
          child: Directionality(
            textDirection: direction,
            child: const AiChatScreen(characterId: 'visual-agent'),
          ),
        ),
      )));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      // Large accessibility fonts may place later messages outside the lazy
      // viewport; assert the route and any rendering errors instead.
      expect(find.byType(AiChatScreen), findsOneWidget);
      if (captureChatGoldens) {
        await expectLater(
          find.byType(AiChatScreen),
          matchesGoldenFile('goldens/chat_matrix/$name.png'),
        );
      }
    });
  }
}
