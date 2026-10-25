import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_request_screen.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/state/session_state.dart';

class _SignedOut extends SessionController {
  @override
  SessionState build() => const SessionSignedOut();
}

const _fan = AuthUser(
  id: 'request-fan', name: 'Requester', locale: 'en', status: 'ACTIVE',
  role: 'USER', isNewUser: false, createdAt: '2026-10-25T00:00:00Z',
);

class _SignedIn extends SessionController {
  @override
  SessionState build() => const SessionSignedIn(_fan, AuthTokens(
    accessToken: 'fixture-token', refreshToken: 'fixture-refresh',
    accessExpiresIn: 900, user: _fan,
  ));
}

ApiClient _requestFixture(List<String> sentKeys) {
  final dio = Dio(BaseOptions(baseUrl: kApiBaseUrl));
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    if (options.method == 'GET' &&
        options.path == '/v1/gb/wallet/requests') {
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'requests': <Object>[]},
      ));
      return;
    }
    if (options.method == 'POST' &&
        options.path == '/v1/gb/wallet/requests') {
      sentKeys.add((options.data as Map)['idempotencyKey'] as String);
    }
    handler.reject(DioException(requestOptions: options,
      response: Response(requestOptions: options, statusCode: 503),
      type: DioExceptionType.badResponse));
  }));
  return ApiClient(dio: dio);
}

void main() {
  testWidgets('signed-out Request cannot construct payment or creation POST',
      (tester) async {
    await tester.pumpWidget(ProviderScope(
      overrides: [sessionProvider.overrideWith(_SignedOut.new)],
      child: const MaterialApp(home: GbRequestScreen()),
    ));
    expect(find.text('Request MB'), findsOneWidget);
    expect(find.text('New request'), findsOneWidget);
    expect(find.text('Incoming'), findsOneWidget);
    expect(find.text('Sent'), findsOneWidget);
    final button = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Send request'));
    expect(button.onPressed, isNull);
    expect(find.text('Confirm payment'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Request quick amounts are draft-only and show payer roles',
      (tester) async {
    tester.view.physicalSize = const Size(390, 1050);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final keys = <String>[];
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        apiClientProvider.overrideWithValue(_requestFixture(keys)),
      ],
      child: const MaterialApp(home: GbRequestScreen()),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Requests you can choose to pay'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('request-quick-100')));
    await tester.pump();
    expect(tester.widget<TextField>(find.byKey(
      const ValueKey('request-custom-mb'))).controller!.text, '100');
    expect(keys, isEmpty);
    await tester.enterText(find.byKey(const ValueKey('request-custom-mb')), '1');
    await tester.enterText(find.byType(TextField).first, '@payer');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(
      FilledButton, 'Send request')).onPressed, isNotNull,
      reason: 'Requests allow any positive whole MB, including 1 MB');
    await tester.ensureVisible(find.text('Sent'));
    await tester.tap(find.text('Sent'));
    await tester.pump();
    expect(find.text('Requests you asked others to pay'), findsOneWidget);
    expect(find.text('Confirm payment'), findsNothing);
    expect(keys, isEmpty);
    expect(tester.takeException(), isNull);
  });

  testWidgets('same quick amount retains original retry key after uncertainty',
      (tester) async {
    final keys = <String>[];
    await tester.pumpWidget(ProviderScope(
      overrides: [
        sessionProvider.overrideWith(_SignedIn.new),
        apiClientProvider.overrideWithValue(_requestFixture(keys)),
      ],
      child: const MaterialApp(home: GbRequestScreen()),
    ));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, '@payer');
    await tester.ensureVisible(find.byKey(const ValueKey('request-quick-100')));
    await tester.tap(find.byKey(const ValueKey('request-quick-100')));
    await tester.pump();
    await tester.ensureVisible(find.text('Send request'));
    await tester.tap(find.text('Send request'));
    await tester.pumpAndSettle();
    expect(keys, hasLength(1));
    expect(find.textContaining('Retry without changing'), findsOneWidget);
    await tester.ensureVisible(find.byKey(const ValueKey('request-quick-100')));
    await tester.tap(find.byKey(const ValueKey('request-quick-100')));
    await tester.pump();
    await tester.ensureVisible(find.text('Send request'));
    await tester.tap(find.text('Send request'));
    await tester.pumpAndSettle();
    expect(keys, hasLength(2));
    expect(keys[1], keys[0]);
    expect(tester.takeException(), isNull);
  });
}
