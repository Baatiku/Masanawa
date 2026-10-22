import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/wallet_recent_activity.dart';

Map<String, Object> item(String id, {String status = 'pending'}) => {
  'id': id,
  'reference': 'reference-$id',
  'category': 'Transfers',
  'title': 'Sent $id',
  'amountAtomic': '1250000',
  'decimals': 6,
  'asset': 'MSNW',
  'status': status,
  'incoming': false,
  'createdAt': '2026-10-22T12:00:00Z',
  'details': <String, String>{},
};

Dio stubbedDio(Future<Map<String, Object>> Function(RequestOptions) response) {
  final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        try {
          final result = await response(options);
          handler.resolve(
            Response<Map<String, dynamic>>(
              requestOptions: options,
              statusCode: 200,
              data: Map<String, dynamic>.from(result),
            ),
          );
        } catch (error) {
          handler.reject(
            DioException(
              requestOptions: options,
              type: DioExceptionType.connectionError,
              error: error,
            ),
          );
        }
      },
    ),
  );
  return dio;
}

Widget preview({
  required Dio dio,
  required String? owner,
  required String? Function() current,
  required String? Function() token,
  required VoidCallback viewAll,
  int refreshKey = 0,
  bool hidden = false,
}) => MaterialApp(
  home: Scaffold(
    body: SingleChildScrollView(
      child: WalletRecentActivity(
        dio: dio,
        baseUrl: 'https://example.test',
        accountId: owner,
        currentUserId: current,
        accessToken: token,
        onViewAll: viewAll,
        refreshKey: refreshKey,
        hideAmounts: hidden,
      ),
    ),
  ),
);

void main() {
  testWidgets(
    'home preview uses authoritative status and opens existing history',
    (tester) async {
      var queries = 0;
      var opened = 0;
      final dio = stubbedDio((req) async {
        queries++;
        expect(req.uri.path, '/v1/wallet/msnw/activity');
        expect(req.queryParameters['limit'], '3');
        expect(req.headers['Authorization'], 'Bearer live-token');
        expect(req.method, 'GET');
        return {
          'items': [
            item('one', status: 'pending'),
            item('two', status: 'completed'),
          ],
        };
      });
      await tester.pumpWidget(
        preview(
          dio: dio,
          owner: 'a',
          current: () => 'a',
          token: () => 'live-token',
          viewAll: () => opened++,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Sent one'), findsOneWidget);
      expect(find.text('Transfers · pending'), findsOneWidget);
      expect(find.text('−1.25 MSNW'), findsNWidgets(2));
      await tester.tap(find.text('View all'));
      expect(opened, 1);
      await tester.pumpWidget(
        preview(
          dio: dio,
          owner: 'a',
          current: () => 'a',
          token: () => 'live-token',
          viewAll: () => opened++,
          hidden: true,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('−1.25 MSNW'), findsNothing);
      expect(find.text('••••'), findsNWidgets(2));
      expect(queries, 1); // Privacy-eye redraw must not refetch the ledger.
    },
  );

  testWidgets('320dp / 200% text keeps the activity preview navigable', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final dio = stubbedDio(
      (_) async => {
        'items': [item('long-id-for-a-transaction-that-may-be-larger')],
      },
    );
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(
          size: Size(320, 800),
          textScaler: TextScaler.linear(2),
        ),
        child: preview(
          dio: dio,
          owner: 'a',
          current: () => 'a',
          token: () => 't',
          viewAll: () {},
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('View all'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'account switch hides prior identity before an old request completes',
    (tester) async {
      final oldRequest = Completer<Map<String, Object>>();
      final dio = stubbedDio((req) async {
        if (req.headers['Authorization'] == 'Bearer a-token') {
          return oldRequest.future;
        }
        return {
          'items': [item('fresh')],
        };
      });
      String current = 'a';
      String token = 'a-token';
      await tester.pumpWidget(
        preview(
          dio: dio,
          owner: 'a',
          current: () => current,
          token: () => token,
          viewAll: () {},
        ),
      );
      await tester.pump();
      current = 'b';
      token = 'b-token';
      await tester.pumpWidget(
        preview(
          dio: dio,
          owner: 'b',
          current: () => current,
          token: () => token,
          viewAll: () {},
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text('Sent fresh'), findsOneWidget);
      oldRequest.complete({
        'items': [item('secret')],
      });
      await tester.pumpAndSettle();
      expect(find.text('Sent secret'), findsNothing);
      expect(find.text('Sent fresh'), findsOneWidget);
    },
  );

  testWidgets('outage shows retry, not fabricated empty history', (
    tester,
  ) async {
    var offline = true;
    final dio = stubbedDio((_) async {
      if (offline) throw StateError('disconnected');
      return {'items': <Object>[]};
    });
    await tester.pumpWidget(
      preview(
        dio: dio,
        owner: 'a',
        current: () => 'a',
        token: () => 'token',
        viewAll: () {},
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Activity unavailable'), findsOneWidget);
    expect(find.text('No recorded activity yet.'), findsNothing);
    offline = false;
    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(find.text('No recorded activity yet.'), findsOneWidget);
  });
}
