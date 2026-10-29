import 'visual_test_fonts.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/agents/agent_directory.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/profile/masana_profile_screen.dart';
import 'package:masanawa/src/state/agent_directory_state.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

final _agent = AgentDirectoryEntry(
  characterId: 'fixture-official',
  characterVersionId: 'v1',
  displayName: 'Example Public Official',
  roleLabel: 'Former governor',
  countryName: 'Nigeria',
  presence: AgentPresence.unknown,
  publicOfficialSimulation: true,
  about:
      'Explore the public life, career and documented views behind this AI persona. '
      'This profile uses synthetic facts to demonstrate the design.',
  publicOfficial: PublicOfficialIdentity(
    'Example Public Official',
    'Former governor',
    'https://grokipedia.com/page/Example',
    DateTime.utc(2026, 10, 28),
    DateTime.utc(2099),
    dateOfBirth: '1964-05-14',
    stateOfOrigin: 'Kaduna',
  ),
);

class _Directory extends AgentDirectoryController {
  @override
  AgentDirectoryState build() =>
      AgentDirectoryState(loading: false, agents: [_agent]);
}

class _Session extends SessionController {
  @override
  SessionState build() {
    const user = AuthUser(
      id: 'fixture-owner',
      name: 'Test',
      locale: 'en',
      status: 'ACTIVE',
      role: 'USER',
      isNewUser: false,
      createdAt: '2026-10-19',
    );
    return const SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'test',
        refreshToken: 'test',
        accessExpiresIn: 3600,
        user: user,
      ),
    );
  }
}

void main() {
  setUpAll(loadVisualTestFonts);
  for (final large in [false, true]) {
    testWidgets(
      'full profile shows equal Chat/Call and balanced facts ${large ? 'at 200% text' : 'in design capture'}',
      (tester) async {
        tester.view.physicalSize = Size(large ? 320 : 390, large ? 700 : 1100);
        tester.view.devicePixelRatio = 1;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        final baseTheme = buildMasanawaTheme(brightness: Brightness.light);
        final dio = Dio()
          ..interceptors.add(
            InterceptorsWrapper(
              onRequest: (r, h) => h.resolve(
                Response(
                  requestOptions: r,
                  statusCode: 200,
                  data: {'items': [], 'nextCursor': null},
                ),
              ),
            ),
          );
        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              sessionProvider.overrideWith(_Session.new),
              agentDirectoryProvider.overrideWith(_Directory.new),
              apiClientProvider.overrideWithValue(
                ApiClient(dio: dio)..accessToken = 'test',
              ),
            ],
            child: MaterialApp(
              theme: baseTheme.copyWith(
                appBarTheme: baseTheme.appBarTheme.copyWith(
                  titleTextStyle: baseTheme.appBarTheme.titleTextStyle
                      ?.copyWith(fontFamily: 'Roboto'),
                ),
              ),
              builder: (_, child) => MediaQuery(
                data: MediaQueryData(
                  textScaler: TextScaler.linear(large ? 2 : 1),
                ),
                child: child!,
              ),
              initialRoute: '/profile',
              home: const SizedBox.shrink(),
              routes: {
                '/profile': (_) => MasanaProfileScreen(agent: _agent),
              },
            ),
          ),
        );
        await tester.pumpAndSettle();
        final chat = find.widgetWithText(FilledButton, 'Chat');
        final call = find.widgetWithText(FilledButton, 'Call');
        final chatRect = tester.getRect(chat), callRect = tester.getRect(call);
        expect(chatRect.width, callRect.width);
        expect(chatRect.height, callRect.height);
        expect(chatRect.top, callRect.top);
        if (!large) {
          expect(chat.hitTestable(), findsOneWidget);
          expect(call.hitTestable(), findsOneWidget);
          await expectLater(
            find.byType(Scaffold),
            matchesGoldenFile('goldens/persona-profile-full-phone.png'),
          );
        }
        await tester.ensureVisible(find.text('Biography'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
      },
    );
  }
}
