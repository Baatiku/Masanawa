import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/core/providers.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';
import 'package:masanawa/src/gb_wallet/gb_retained_finance_api.dart';
import 'package:masanawa/src/gb_wallet/gb_retained_finance_screens.dart';
import 'package:masanawa/src/state/session_state.dart';

const id = '10000000-0000-4000-8000-000000000001';
final groupId = base64Url
    .encode(
      utf8.encode(
        jsonEncode([
          1,
          'pending',
          id,
          '2026-10-27',
          '2026-10-27T10:30:00.000Z',
          1,
        ]),
      ),
    )
    .replaceAll('=', '');
Map<String, dynamic> group() => {
  'id': groupId,
  'campaignId': id,
  'postId': id,
  'kind': 'pending',
  'day': '2026-10-27',
  'eventCount': 1,
  'halfMb': 1,
};
Map<String, dynamic> inquiry({
  String reference = 'mb:1',
  String state = 'open',
  int revision = 1,
}) => {
  'id': id,
  'targetKind': 'activity',
  'reference': reference,
  'category': 'amount',
  'state': state,
  'revision': revision,
  'createdAt': '2026-10-27T10:00:00.000Z',
  'updatedAt': '2026-10-27T10:00:00.000Z',
};

class FinanceSession extends SessionController {
  int epoch = 1;
  @override
  int get authorizationEpoch => epoch;
  SessionState signed() {
    final user = AuthUser(
      id: 'owner',
      name: 'Owner',
      locale: 'en',
      status: 'ACTIVE',
      role: 'ADMIN',
      isNewUser: false,
      createdAt: '2026-10-27T00:00:00Z',
    );
    return SessionSignedIn(
      user,
      AuthTokens(
        accessToken: 'fixture',
        refreshToken: 'fixture',
        accessExpiresIn: 900,
        user: user,
      ),
    );
  }

  @override
  SessionState build() => signed();
  void reauthenticate() {
    epoch++;
    state = signed();
  }
}

Future<ProviderContainer> draw(
  WidgetTester tester,
  Dio dio,
  Widget screen, {
  bool narrow = false,
}) async {
  final client = ApiClient(dio: dio)
    ..authenticatedAccountId = 'owner'
    ..accessToken = 'fixture';
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sessionProvider.overrideWith(FinanceSession.new),
        apiClientProvider.overrideWithValue(client),
      ],
      child: MaterialApp(
        locale: Locale(narrow ? 'ha' : 'en'),
        localizationsDelegates: MasanawaLocalization.delegates,
        supportedLocales: MasanawaLocalization.supportedLocales,
        home: Directionality(
          textDirection: narrow ? TextDirection.rtl : TextDirection.ltr,
          child: MediaQuery(
            data: MediaQueryData(textScaler: TextScaler.linear(narrow ? 2 : 1)),
            child: screen,
          ),
        ),
      ),
    ),
  );
  await tester.pump();
  await tester.pump();
  return ProviderScope.containerOf(tester.element(find.byType(MaterialApp)));
}

void main() {
  test(
    'half-MB values stay exact and missing/invalid fields never become invented zero',
    () {
      expect(financeHalfMb(1), '0.5 MB');
      expect(financeHalfMb(3), '1.5 MB');
      expect(financeHalfMb(null), 'Amount unavailable');
      for (final value in [null, -1, 0.5, 9007199254740992]) {
        expect(() => financeCount(value), throwsFormatException);
      }
      expect(
        () => LegacyFinanceGroup.read({...group(), 'halfMb': 0.5}),
        throwsFormatException,
      );
      expect(
        () => WalletInquiry.read({...inquiry(), 'state': 'paid'}),
        throwsFormatException,
      );
    },
  );
  test(
    'a mismatched inquiry acknowledgement cannot be shown as the requested original receipt',
    () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) => h.resolve(
            Response(
              requestOptions: o,
              data: {'case': inquiry(reference: 'mb:other')},
            ),
          ),
        ),
      );
      await expectLater(
        GbRetainedFinanceApi(
          dio,
          () => true,
        ).submit('activity', 'mb:1', 'amount'),
        throwsFormatException,
      );
    },
  );
  testWidgets(
    'historical groups open exact pending receipts and preserve original references',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: o.path.endsWith('/legacy-history')
                    ? {
                        'items': [group()],
                        'nextCursor': null,
                        'snapshotAt': '2026-10-27T10:30:00.000Z',
                      }
                    : {
                        'group': {
                          'campaignId': id,
                          'kind': 'pending',
                          'day': '2026-10-27',
                          'eventCount': 1,
                        },
                        'items': [
                          {
                            'key': 'allocation:$id',
                            'reference': 'original-operation',
                            'at': '2026-10-27T10:00:00.000Z',
                            'halfMb': 1,
                          },
                        ],
                        'nextCursor': null,
                      },
              ),
            );
          },
        ),
      );
      await draw(tester, dio, const GbLegacyFinanceHistoryScreen());
      await tester.pumpAndSettle();
      await tester.ensureVisible(
        find.textContaining('Historical allocation · pending'),
      );
      await tester.tap(find.textContaining('Historical allocation · pending'));
      await tester.pumpAndSettle();
      expect(find.text('original-operation'), findsOneWidget);
      expect(find.textContaining('0.5 MB'), findsWidgets);
      expect(find.textContaining('not released or redeemable'), findsOneWidget);
    },
  );
  testWidgets(
    'lost inquiry acknowledgement permits explicit idempotent retry and never calls a payment endpoint',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      var calls = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            expect(o.path, '/v1/gb/wallet/inquiries');
            expect(o.method, 'POST');
            calls++;
            if (calls == 1) {
              h.reject(
                DioException(
                  requestOptions: o,
                  type: DioExceptionType.connectionError,
                ),
              );
              return;
            }
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: {'case': inquiry()},
              ),
            );
          },
        ),
      );
      await draw(
        tester,
        dio,
        const Scaffold(
          body: GbWalletInquiryButton(
            targetKind: 'activity',
            reference: 'mb:1',
          ),
        ),
      );
      await tester.pumpAndSettle();
      Future<void> ask() async {
        await tester.tap(find.text('Ask about this entry'));
        await tester.pumpAndSettle();
        await tester.tap(find.text('Amount'));
        await tester.pumpAndSettle();
      }

      await ask();
      expect(calls, 1);
      expect(find.textContaining('Could not confirm'), findsOneWidget);
      await ask();
      expect(calls, 2);
      expect(find.textContaining('Inquiry received'), findsOneWidget);
    },
  );
  testWidgets(
    'same-account reauthentication fences a delayed historical response',
    (tester) async {
      final dio = Dio(), pending = Completer<void>();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) async {
            await pending.future;
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: {
                  'items': [group()],
                  'nextCursor': null,
                },
              ),
            );
          },
        ),
      );
      final container = await draw(
        tester,
        dio,
        const GbLegacyFinanceHistoryScreen(),
      );
      (container.read(sessionProvider.notifier) as FinanceSession)
          .reauthenticate();
      await tester.pump();
      pending.complete();
      await tester.pumpAndSettle();
      expect(find.textContaining('Session changed'), findsOneWidget);
      expect(
        find.textContaining('Historical allocation · pending'),
        findsNothing,
      );
    },
  );
  testWidgets('cached ADMIN role does not expose financial inquiry review', (
    tester,
  ) async {
    final dio = Dio();
    addTearDown(() => dio.close(force: true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (o, h) =>
            h.resolve(Response(requestOptions: o, data: {'canReview': false})),
      ),
    );
    await draw(tester, dio, const Scaffold(body: GbFinanceReviewEntry()));
    await tester.pumpAndSettle();
    expect(
      find.byKey(const Key('settings-wallet-inquiry-review')),
      findsNothing,
    );
  });
  testWidgets(
    'review edits require recent authentication and never claim a balance change',
    (tester) async {
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      var writes = 0;
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) {
            if (o.method == 'PUT') {
              writes++;
              h.reject(
                DioException(
                  requestOptions: o,
                  type: DioExceptionType.badResponse,
                  response: Response(
                    requestOptions: o,
                    statusCode: 403,
                    data: {
                      'error': {'code': 'fresh_auth_required'},
                    },
                  ),
                ),
              );
              return;
            }
            h.resolve(
              Response(
                requestOptions: o,
                statusCode: 200,
                data: {
                  'items': [inquiry()],
                  'nextCursor': null,
                },
              ),
            );
          },
        ),
      );
      await draw(tester, dio, const GbWalletInquiriesScreen(admin: true));
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text('Acknowledge'));
      await tester.tap(find.text('Acknowledge'));
      await tester.pumpAndSettle();
      expect(writes, 1);
      expect(find.textContaining('Sign in again'), findsOneWidget);
      expect(find.textContaining('never changes your balance'), findsOneWidget);
    },
  );
  testWidgets(
    'Hausa RTL historical activity wraps at 320dp with 200 percent text',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(320, 700));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final dio = Dio();
      addTearDown(() => dio.close(force: true));
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (o, h) => h.resolve(
            Response(
              requestOptions: o,
              statusCode: 200,
              data: {
                'items': [group()],
                'nextCursor': null,
              },
            ),
          ),
        ),
      );
      await draw(
        tester,
        dio,
        const GbLegacyFinanceHistoryScreen(),
        narrow: true,
      );
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.byType(Card),
        250,
        scrollable: find.byType(Scrollable).first,
      );
      expect(tester.takeException(), isNull);
      expect(find.textContaining('0.5 MB'), findsOneWidget);
    },
  );
}
