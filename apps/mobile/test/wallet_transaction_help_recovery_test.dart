import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/wallet_transaction_help.dart';

class SupportFake {
  SupportFake() {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (request, handler) async {
      requests.add(request);
      try {
        final result = await responder(request);
        handler.resolve(Response<dynamic>(
          requestOptions: request,
          statusCode: 200,
          data: result,
        ));
      } on DioException catch (e) {
        handler.reject(e);
      }
    }));
  }

  final dio = Dio(BaseOptions(baseUrl: 'https://wallet.example'));
  final requests = <RequestOptions>[];
  late Future<Map<String, Object?>> Function(RequestOptions) responder;

  DioException reject(RequestOptions request, int status, String code) =>
      DioException(
        requestOptions: request,
        response: Response<dynamic>(
          requestOptions: request,
          statusCode: status,
          data: {'error': code},
        ),
        type: DioExceptionType.badResponse,
      );

  Map<String, Object?> receipt(String operation, {
    String reason = 'pending',
    String caseId = 'case-one',
  }) => {
    'operationId': operation,
    'caseId': caseId,
    'reason': reason,
    'state': 'open',
    'createdAt': '2026-10-24T12:00:00.000Z',
  };

  Map<String, Object?> notFound(String operation) => {
    'error': 'wallet.support_not_found',
    'operationId': operation,
  };

  int get posts => requests.where((r) => r.method == 'POST').length;
  int get gets => requests.where((r) => r.method == 'GET').length;
}

Widget page(SupportFake fake, {
  String operation = 'operation-A',
  String? Function()? token,
  bool Function()? authorized,
}) => MaterialApp(
  home: Scaffold(
    body: WalletTransactionHelp(
      dio: fake.dio,
      baseUrl: 'https://wallet.example/',
      operationId: operation,
      accessToken: token ?? () => 'token-A',
      authorized: authorized ?? () => true,
    ),
  ),
);

Future<void> check404(WidgetTester tester, SupportFake fake) async {
  await tester.pumpWidget(page(fake));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('first read-only absence is required before case creation; POST does not mutate payment', (tester) async {
    final fake = SupportFake();
    fake.responder = (request) async {
      expect(request.uri.path, '/v1/wallet/support');
      expect(request.headers['Authorization'], 'Bearer token-A');
      expect(request.headers['Cache-Control'], 'no-store');
      if (request.method == 'GET') {
        expect(request.queryParameters['operationId'], 'operation-A');
        throw fake.reject(request, 404, 'wallet.support_not_found');
      }
      expect(request.data, {'operationId': 'operation-A', 'reason': 'pending'});
      return fake.receipt('operation-A');
    };
    await check404(tester, fake);
    expect(fake.posts, 0);
    expect(find.byKey(const Key('wallet-support-open')), findsOneWidget);
    await tester.tap(find.byKey(const Key('wallet-support-open')));
    await tester.pumpAndSettle();
    expect(fake.posts, 1);
    expect(find.text('Case: case-one'), findsOneWidget);
    expect(find.text('Status: open'), findsOneWidget);
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
  });

  testWidgets('network and denied operation never authorize new support case', (tester) async {
    final fake = SupportFake();
    fake.responder = (r) async {
      throw fake.reject(r, 404, 'wallet.operation_not_found');
    };
    await tester.pumpWidget(page(fake));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
    expect(find.textContaining('Case status unavailable'), findsOneWidget);
    fake.responder = (r) async {
      throw DioException(
        requestOptions: r,
        type: DioExceptionType.connectionError,
      );
    };
    await tester.tap(find.byKey(const Key('wallet-support-check')));
    await tester.pumpAndSettle();
    expect(fake.posts, 0);
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
  });

  testWidgets('interrupted POST reads original persisted case, never POSTs twice', (tester) async {
    final fake = SupportFake();
    var committed = false;
    fake.responder = (r) async {
      if (r.method == 'GET') {
        if (!committed) throw fake.reject(r, 404, 'wallet.support_not_found');
        return fake.receipt('operation-A', caseId: 'original-case');
      }
      committed = true;
      throw DioException(
        requestOptions: r,
        type: DioExceptionType.connectionError,
      );
    };
    await check404(tester, fake);
    await tester.tap(find.byKey(const Key('wallet-support-open')));
    await tester.pumpAndSettle();
    expect(fake.posts, 1);
    expect(fake.gets, 2);
    expect(find.text('Case: original-case'), findsOneWidget);
    expect(find.byKey(const Key('wallet-support-retry-original')), findsNothing);
  });

  testWidgets('unconfirmed original request retries same operation and frozen reason only', (tester) async {
    final fake = SupportFake();
    var attempts = 0;
    fake.responder = (r) async {
      if (r.method == 'GET') {
        throw fake.reject(r, 404, 'wallet.support_not_found');
      }
      attempts++;
      if (attempts == 1) {
        throw DioException(
          requestOptions: r,
          type: DioExceptionType.connectionError,
        );
      }
      return fake.receipt('operation-A', reason: 'not_received', caseId: 'same-case');
    };
    await check404(tester, fake);
    await tester.tap(find.text('Still pending'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Not received').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('wallet-support-open')));
    await tester.pumpAndSettle();
    expect(fake.posts, 1);
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
    expect(find.byKey(const Key('wallet-support-retry-original')), findsOneWidget);
    await tester.tap(find.byKey(const Key('wallet-support-retry-original')));
    await tester.pumpAndSettle();
    expect(fake.posts, 2);
    final posted = fake.requests.where((r) => r.method == 'POST').toList();
    expect(posted.map((r) => r.data), everyElement({
      'operationId': 'operation-A',
      'reason': 'not_received',
    }));
    expect(find.text('Case: same-case'), findsOneWidget);
  });

  testWidgets('late old-operation case never appears after switching selected operation', (tester) async {
    final fake = SupportFake();
    final old = Completer<Map<String, Object?>>();
    fake.responder = (r) async {
      if (r.queryParameters['operationId'] == 'operation-A') return old.future;
      return fake.receipt('operation-B', caseId: 'case-B');
    };
    await tester.pumpWidget(page(fake));
    await tester.pump();
    await tester.pumpWidget(page(fake, operation: 'operation-B'));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-B'), findsOneWidget);
    old.complete(fake.receipt('operation-A', caseId: 'secret-case-A'));
    await tester.pumpAndSettle();
    expect(find.text('Case: secret-case-A'), findsNothing);
    expect(find.text('Case: case-B'), findsOneWidget);
  });

  testWidgets('token rotation hides previously rendered case and performs scoped readback', (tester) async {
    final fake = SupportFake();
    var token = 'token-A';
    fake.responder = (r) async {
      if (r.headers['Authorization'] == 'Bearer token-A') {
        return fake.receipt('operation-A', caseId: 'secret-case-A');
      }
      return fake.receipt('operation-A', caseId: 'case-B');
    };
    await tester.pumpWidget(page(fake, token: () => token));
    await tester.pumpAndSettle();
    expect(find.text('Case: secret-case-A'), findsOneWidget);
    token = 'token-B';
    await tester.pumpWidget(page(fake, token: () => token));
    await tester.pumpAndSettle();
    expect(find.text('Case: secret-case-A'), findsNothing);
    expect(find.text('Case: case-B'), findsOneWidget);
    expect(fake.requests.last.headers['Authorization'], 'Bearer token-B');
  });

  testWidgets('missing fields or mismatched operation cannot be treated as a valid support case', (tester) async {
    final fake = SupportFake();
    fake.responder = (_) async {
      return {
        'operationId': 'operation-foreign',
        'caseId': 'foreign-private-id',
        'reason': 'pending',
        'state': 'open',
        'createdAt': '2026-10-24T12:00:00Z',
      };
    };
    await tester.pumpWidget(page(fake));
    await tester.pumpAndSettle();
    expect(find.text('Case: foreign-private-id'), findsNothing);
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
    expect(find.textContaining('Support status unavailable'), findsOneWidget);
  });

  testWidgets('signed-out and denied owner cannot render case or submit support', (tester) async {
    final fake = SupportFake();
    var signedIn = true;
    var caseId = 'case-one';
    fake.responder = (_) async => fake.receipt('operation-A', caseId: caseId);
    await tester.pumpWidget(page(fake, authorized: () => signedIn));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-one'), findsOneWidget);
    signedIn = false;
    await tester.pumpWidget(page(fake, authorized: () => signedIn));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-one'), findsNothing);
    expect(find.text('Sign in to view this operation'), findsOneWidget);
    expect(fake.posts, 0);
    // A new authorization lease might reuse a test token; no stale case may
    // reappear before another server-scoped GET confirms this owner/operation.
    signedIn = true;
    caseId = 'new-session-case';
    await tester.pumpWidget(page(fake, authorized: () => signedIn));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-one'), findsNothing);
    expect(find.text('Case: new-session-case'), findsOneWidget);
    expect(fake.gets, 2);
  });

  testWidgets('explicit server 401 revokes a previously rendered case', (tester) async {
    final fake = SupportFake();
    var deny = false;
    fake.responder = (request) async {
      if (deny) throw fake.reject(request, 401, 'msnw.auth_required');
      return fake.receipt('operation-A');
    };
    await tester.pumpWidget(page(fake));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-one'), findsOneWidget);
    deny = true;
    await tester.tap(find.text('Refresh case'));
    await tester.pumpAndSettle();
    expect(find.text('Case: case-one'), findsNothing);
    expect(find.byKey(const Key('wallet-support-open')), findsNothing);
    expect(find.textContaining('Case status unavailable'), findsOneWidget);
    expect(fake.posts, 0);
  });
}
