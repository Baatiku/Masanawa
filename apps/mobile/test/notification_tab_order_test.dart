import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/screens/settings/notification_preferences_screen.dart';
import 'package:masanawa/src/state/session_state.dart';

class _Session extends SessionController {
  int _epoch = 1;
  @override int get authorizationEpoch => _epoch;
  @override
  SessionState build() => signedIn('owner');
  void switchAccount() => state = signedIn('other');
  void reauthenticateSameAccount() {
    ++_epoch;
    state = signedIn('owner');
  }
  void rotateTokenWithinEpoch() => state = signedIn('owner');
  SessionState signedIn(String id) {
    final user = AuthUser(id: id, name: 'Fan', locale: 'en',
      status: 'ACTIVE', role: 'USER', isNewUser: false,
      createdAt: '2026-10-25T00:00:00Z');
    return SessionSignedIn(user, AuthTokens(accessToken: 'fixture',
      refreshToken: 'fixture', accessExpiresIn: 900, user: user));
  }
}

void main() {
  testWidgets('mark read commits only after account-scoped server acknowledgement; failed write retries',
      (tester) async {
    var attempts = 0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.method == 'PUT' && options.path.endsWith('/notice-1/read')) {
        attempts++;
        if (attempts == 1) {
          handler.reject(DioException(requestOptions: options,
            type: DioExceptionType.connectionError, message: 'offline'));
        } else {
          handler.resolve(Response<Map<String, dynamic>>(
            requestOptions: options, statusCode: 200,
            data: {'readAt': '2026-10-25T18:00:00Z'}));
        }
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: options.path.endsWith('/history') ? {'items': [
          {'id': 'notice-1', 'category': 'status', 'title': 'New Status post',
            'createdAt': '2026-10-25T16:00:00Z', 'readAt': null},
        ]} : {'preferences': {
          'messages': true, 'calls': true, 'status': true,
          'wallet': true, 'quietStart': null, 'quietEnd': null,
          'utcOffsetMinutes': 0,
        }},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Mark as read'), findsOneWidget);
    await tester.tap(find.byTooltip('Mark as read'));
    await tester.pumpAndSettle();
    expect(attempts, 1);
    expect(find.byTooltip('Retry mark as read'), findsOneWidget);
    expect(find.textContaining('Read failed'), findsOneWidget);
    expect(find.byIcon(Icons.done_all), findsNothing);
    await tester.tap(find.byTooltip('Retry mark as read'));
    await tester.pumpAndSettle();
    expect(attempts, 2);
    expect(find.byIcon(Icons.done_all), findsOneWidget);
    expect(find.byTooltip('Retry mark as read'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('late read receipt from old account cannot mark a new account alert',
      (tester) async {
    final pending = Completer<RequestInterceptorHandler>();
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.method == 'PUT') {
        pending.complete(handler);
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: options.path.endsWith('/history') ? {'items': [
          {'id': 'same-id', 'category': 'wallet',
            'title': 'Account-owned alert',
            'createdAt': '2026-10-25T16:00:00Z', 'readAt': null},
        ]} : {'preferences': {
          'messages': true, 'calls': true, 'status': true,
          'wallet': true, 'quietStart': null, 'quietEnd': null,
          'utcOffsetMinutes': 0,
        }},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Mark as read'));
    await tester.pump();
    final container = ProviderScope.containerOf(
      tester.element(find.byType(NotificationPreferencesScreen)));
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    await tester.pumpAndSettle();
    (await pending.future).resolve(Response<Map<String, dynamic>>(
      requestOptions: RequestOptions(path: '/agent/notifications/history/same-id/read'),
      statusCode: 200, data: {'readAt': '2026-10-25T18:00:00Z'},
    ));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Mark as read'), findsOneWidget);
    expect(find.byIcon(Icons.done_all), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Activity opens first and Preferences opens its own content', (tester) async {
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      handler.resolve(Response(requestOptions: options, statusCode: 200,
        data: options.path.endsWith('/history') ? {'items': []} : {
          'preferences': {'messages': true, 'calls': true, 'status': true,
            'wallet': true, 'quietStart': null, 'quietEnd': null,
            'utcOffsetMinutes': 0},
        }));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    expect(tester.getCenter(find.text('Activity')).dx,
      lessThan(tester.getCenter(find.text('Preferences')).dx));
    expect(find.text('No recent alerts yet.'), findsOneWidget);
    expect(find.text('Choose your updates'), findsNothing);
    await tester.tap(find.text('Preferences'));
    await tester.pumpAndSettle();
    expect(find.text('Choose your updates'), findsOneWidget);
    expect(find.text('No recent alerts yet.'), findsNothing);
    final container = ProviderScope.containerOf(
      tester.element(find.byType(NotificationPreferencesScreen)));
    (container.read(sessionProvider.notifier) as _Session).switchAccount();
    await tester.pumpAndSettle();
    expect(find.text('No recent alerts yet.'), findsOneWidget);
    expect(find.text('Choose your updates'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('parallel Activity and Preferences fetches both populate',
      (tester) async {
    final pendingPrefs = Completer<RequestInterceptorHandler>();
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path.endsWith('/preferences')) {
        pendingPrefs.complete(handler);
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'items': [
          {'id': 'alert-1', 'category': 'messages',
            'title': 'Amina replied',
            'createdAt': '2026-10-25T12:00:00Z'},
        ]},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    // One GET is intentionally pending; do not wait for its progress spinner.
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Amina replied'), findsOneWidget);
    await tester.tap(find.text('Preferences'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Loading preferences…'), findsOneWidget);
    (await pendingPrefs.future).resolve(Response<Map<String, dynamic>>(
      requestOptions: RequestOptions(path: '/agent/notifications/preferences'),
      statusCode: 200,
      data: {'preferences': {
        'messages': true, 'calls': false, 'status': true,
        'wallet': true, 'quietStart': null, 'quietEnd': null,
        'utcOffsetMinutes': 60,
      }},
    ));
    await tester.pumpAndSettle();
    expect(find.text('Loading preferences…'), findsNothing);
    expect(tester.widget<SwitchListTile>(find.byKey(
      const Key('notification-messages'))).value, isTrue);
    expect(tester.widget<SwitchListTile>(find.byKey(
      const Key('notification-calls'))).value, isFalse);
    await tester.tap(find.text('Activity'));
    await tester.pumpAndSettle();
    expect(find.text('Amina replied'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('failed Activity refresh retains trusted visible alerts and Retry',
      (tester) async {
    var historyFetches = 0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path.endsWith('/history')) {
        if (historyFetches++ > 0) {
          handler.reject(DioException(requestOptions: options,
            type: DioExceptionType.connectionError,
            message: 'offline'));
        } else {
          handler.resolve(Response<Map<String, dynamic>>(
            requestOptions: options, statusCode: 200,
            data: {'items': [
              {'id': 'original', 'category': 'wallet',
                'title': 'Verified wallet update',
                'createdAt': '2026-10-25T12:00:00Z'},
            ]},
          ));
        }
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'preferences': {
          'messages': true, 'calls': true, 'status': true,
          'wallet': true, 'quietStart': null, 'quietEnd': null,
          'utcOffsetMinutes': 60,
        }},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Verified wallet update'), findsOneWidget);
    final refresh = tester.state<RefreshIndicatorState>(
      find.byType(RefreshIndicator).first).show();
    await tester.pumpAndSettle();
    await refresh;
    expect(find.text('Verified wallet update'), findsOneWidget);
    expect(find.text('Recent alerts remain available'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('same-user reauthentication drops previous-epoch late alerts and resets tabs',
      (tester) async {
    final oldResponse = Completer<RequestInterceptorHandler>();
    var historyCalls = 0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path.endsWith('/history')) {
        if (historyCalls++ == 0) {
          oldResponse.complete(handler);
          return;
        }
        handler.resolve(Response<Map<String, dynamic>>(
          requestOptions: options, statusCode: 200,
          data: {'items': [
            {'id': 'fresh', 'category': 'status',
              'title': 'Alert from the new authorization',
              'createdAt': '2026-10-25T16:00:00Z'},
          ]},
        ));
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'preferences': {
          'messages': true, 'calls': true, 'status': true,
          'wallet': true, 'quietStart': null, 'quietEnd': null,
          'utcOffsetMinutes': 0,
        }},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await tester.tap(find.text('Preferences'));
    await tester.pump();
    final container = ProviderScope.containerOf(
        tester.element(find.byType(NotificationPreferencesScreen)));
    (container.read(sessionProvider.notifier) as _Session)
        .reauthenticateSameAccount();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Alert from the new authorization'), findsOneWidget);
    // Even if the old server response succeeds, its authorization was revoked.
    (await oldResponse.future).resolve(Response<Map<String, dynamic>>(
      requestOptions: RequestOptions(path: '/agent/notifications/history'),
      statusCode: 200, data: {'items': [
        {'id': 'stale', 'category': 'messages',
          'title': 'Private alert from earlier session',
          'createdAt': '2026-10-25T12:00:00Z'},
      ]},
    ));
    await tester.pumpAndSettle();
    expect(find.text('Private alert from earlier session'), findsNothing);
    expect(find.text('Alert from the new authorization'), findsOneWidget);
    expect(find.text('Choose your updates'), findsNothing);
    expect(historyCalls, 2);
    expect(tester.takeException(), isNull);
  });

  testWidgets('rotating a token in the same authorization epoch preserves visible Activity',
      (tester) async {
    var historyCalls = 0;
    final dio = Dio();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      if (options.path.endsWith('/history')) {
        historyCalls++;
        handler.resolve(Response<Map<String, dynamic>>(
          requestOptions: options, statusCode: 200,
          data: {'items': [
            {'id': 'safe', 'category': 'messages',
              'title': 'Retained same-session alert',
              'createdAt': '2026-10-25T12:00:00Z'},
          ]},
        ));
        return;
      }
      handler.resolve(Response<Map<String, dynamic>>(
        requestOptions: options, statusCode: 200,
        data: {'preferences': {
          'messages': true, 'calls': true, 'status': true,
          'wallet': true, 'quietStart': null, 'quietEnd': null,
          'utcOffsetMinutes': 0,
        }},
      ));
    }));
    addTearDown(() => dio.close(force: true));
    await tester.pumpWidget(ProviderScope(overrides: [
      sessionProvider.overrideWith(_Session.new),
      apiClientProvider.overrideWithValue(ApiClient(dio: dio)),
    ], child: const MaterialApp(home: NotificationPreferencesScreen())));
    await tester.pumpAndSettle();
    expect(find.text('Retained same-session alert'), findsOneWidget);
    final container = ProviderScope.containerOf(
        tester.element(find.byType(NotificationPreferencesScreen)));
    (container.read(sessionProvider.notifier) as _Session)
        .rotateTokenWithinEpoch();
    await tester.pumpAndSettle();
    expect(find.text('Retained same-session alert'), findsOneWidget);
    expect(historyCalls, 1);
  });
}
