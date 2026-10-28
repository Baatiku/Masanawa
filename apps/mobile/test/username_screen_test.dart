import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/settings/username_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  @override
  SessionState build() => signed('owner');
  SessionSignedIn signed(String id) {
    final user = AuthUser(
      id: id,
      name: 'Zainab',
      locale: 'en',
      status: 'ACTIVE',
      role: 'fan',
      isNewUser: false,
      createdAt: '2026-10-28T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: id,
        refreshToken: 'r',
        accessExpiresIn: 900,
        user: user,
      ),
    );
  }

  void switchOwner() => state = signed('other');
}

class _Server {
  final calls = <RequestOptions>[];
  String current = 'zainab';
  bool available = true, uncertain = false;
  Completer<void>? delayed;
  late final dio = Dio(BaseOptions(baseUrl: 'https://test.invalid'))
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          calls.add(request);
          if (request.path.endsWith('/availability')) {
            if (delayed != null) await delayed!.future;
            handler.resolve(
              Response(
                requestOptions: request,
                statusCode: 200,
                data: {
                  'username': request.queryParameters['username'],
                  'available': available,
                },
              ),
            );
            return;
          }
          if (request.method == 'PATCH') {
            current = (request.data as Map)['username'] as String;
            if (uncertain) {
              handler.reject(
                DioException(
                  requestOptions: request,
                  type: DioExceptionType.receiveTimeout,
                ),
              );
              return;
            }
          }
          handler.resolve(
            Response(
              requestOptions: request,
              statusCode: 200,
              data: {'username': current},
            ),
          );
        },
      ),
    );
}

Future<ProviderContainer> _mount(
  WidgetTester tester,
  _Server server, {
  bool rtl = false,
}) async {
  final container = ProviderContainer(
    overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: server.dio)),
    ],
  );
  addTearDown(container.dispose);
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp(
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(rtl ? 2 : 1)),
          child: Directionality(
            textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
            child: child!,
          ),
        ),
        home: const UsernameScreen(),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return container;
}

void main() {
  testWidgets(
    'checks availability before explicit version-bound save; reserved/taken names do not save',
    (tester) async {
      final server = _Server();
      await _mount(tester, server);
      expect(find.text('Current: @zainab'), findsOneWidget);
      final input = find.byKey(const ValueKey('username-input')),
          save = find.byKey(const ValueKey('username-save'));
      await tester.enterText(input, 'zainab.bala');
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pumpAndSettle();
      expect(find.text('This username is available.'), findsOneWidget);
      expect(server.calls.where((r) => r.method == 'PATCH'), isEmpty);
      await tester.ensureVisible(save);
      await tester.tap(save);
      await tester.pumpAndSettle();
      expect(server.calls.where((r) => r.method == 'PATCH').single.data, {
        'username': 'zainab.bala',
        'expectedUsername': 'zainab',
      });
      expect(find.text('Current: @zainab.bala'), findsOneWidget);
      server.available = false;
      await tester.enterText(input, 'someone.else');
      await tester.pump(const Duration(milliseconds: 400));
      await tester.pumpAndSettle();
      expect(find.text('This username is already in use.'), findsOneWidget);
      expect(tester.widget<FilledButton>(save).onPressed, isNull);
    },
  );
  testWidgets('uncertain save requires readback and does not repeat PATCH', (
    tester,
  ) async {
    final server = _Server()..uncertain = true;
    await _mount(tester, server);
    await tester.enterText(
      find.byKey(const ValueKey('username-input')),
      'zainab.bala',
    );
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    final save = find.byKey(const ValueKey('username-save'));
    await tester.ensureVisible(save);
    await tester.tap(save);
    await tester.pumpAndSettle();
    expect(tester.widget<FilledButton>(save).onPressed, isNull);
    await tester.ensureVisible(find.text('Reload username'));
    await tester.tap(find.text('Reload username'));
    await tester.pumpAndSettle();
    expect(find.text('Current: @zainab.bala'), findsOneWidget);
    expect(server.calls.where((r) => r.method == 'PATCH'), hasLength(1));
  });
  testWidgets('late availability is fenced on account change', (tester) async {
    final server = _Server()..delayed = Completer<void>();
    final container = await _mount(tester, server);
    await tester.enterText(
      find.byKey(const ValueKey('username-input')),
      'old.name',
    );
    await tester.pump(const Duration(milliseconds: 400));
    server.current = 'other';
    (container.read(sessionProvider.notifier) as _Session).switchOwner();
    await tester.pumpAndSettle();
    server.delayed!.complete();
    await tester.pumpAndSettle();
    expect(find.text('Current: @other'), findsOneWidget);
    expect(find.text('This username is available.'), findsNothing);
    expect(server.calls.where((r) => r.method == 'PATCH'), isEmpty);
    expect(tester.takeException(), isNull);
  });
  testWidgets('320dp and large RTL text remain scrollable without overflow', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await _mount(tester, _Server(), rtl: true);
    await tester.ensureVisible(find.byKey(const ValueKey('username-save')));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
