import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/p2p_order_messages.dart';

const orderId = 'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa';
const storageKey = 'masanawa.p2p.message.buyer.$orderId';
Map<String, dynamic> message(
  String body, {
  String id = 'message-1',
  bool own = true,
}) => {
  'message_id': id,
  'body': body,
  'is_own': own,
  'sender_role': own ? 'buyer' : 'seller',
  'created_at': '2026-10-23T03:00:00.123456Z',
};
DioException missing() => DioException(
  requestOptions: RequestOptions(path: '/request'),
  response: Response(
    requestOptions: RequestOptions(path: '/request'),
    statusCode: 404,
  ),
);

class Fixture {
  String? user = 'buyer';
  bool canSend = true;
  bool failSend = false;
  bool failLoad = false;
  bool denied = false;
  bool found = true;
  int sends = 0;
  int reads = 0;
  String? sentKey;
  String? savedBeforeSend;
  final items = <Map<String, dynamic>>[];
  Completer<Map<String, dynamic>>? held;
  final cursors = <String?>[];
  Widget page({bool small = false}) => MaterialApp(
    home: MediaQuery(
      data: MediaQueryData(textScaler: TextScaler.linear(small ? 2 : 1)),
      child: Directionality(
        textDirection: small ? TextDirection.rtl : TextDirection.ltr,
        child: P2pOrderMessagesPage(
          orderId: orderId,
          expectedUserId: 'buyer',
          currentUserId: () => user,
          loadPage: (cursor) async {
            reads++;
            cursors.add(cursor);
            if (held != null) return held!.future;
            if (denied)
              throw DioException(
                requestOptions: RequestOptions(path: '/messages'),
                response: Response(
                  requestOptions: RequestOptions(path: '/messages'),
                  statusCode: 403,
                ),
              );
            if (failLoad) throw StateError('offline');
            return {
              'items': List.of(items),
              'canSend': canSend,
              'orderState': canSend ? 'disputed' : 'completed',
              'nextCursor': null,
            };
          },
          send: (body, key) async {
            sends++;
            sentKey = key;
            savedBeforeSend = await const FlutterSecureStorage().read(
              key: storageKey,
            );
            if (failSend) throw StateError('lost acknowledgement');
            final accepted = message(body);
            items.add(accepted);
            return accepted;
          },
          findRequest: (key) async {
            if (!found) throw missing();
            final saved = await const FlutterSecureStorage().read(
              key: storageKey,
            );
            final accepted = message(
              (jsonDecode(saved!) as Map)['body'] as String,
            );
            items.add(accepted);
            return accepted;
          },
        ),
      ),
    ),
  );
}

Future<void> settle(WidgetTester tester) async {
  for (var n = 0; n < 12; n++) {
    await tester.pump(const Duration(milliseconds: 30));
  }
}

void main() {
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));
  testWidgets(
    'persists original identity before sending and shows server acceptance, never read ticks',
    (tester) async {
      final f = Fixture();
      await tester.pumpWidget(f.page());
      await settle(tester);
      expect(
        find.text('No messages yet. Keep this conversation about the order.'),
        findsOneWidget,
      );
      await tester.enterText(
        find.byType(TextField),
        'Sannu, please check your bank.',
      );
      await tester.tap(find.text('Send message'));
      await settle(tester);
      expect(f.sends, 1);
      expect((jsonDecode(f.savedBeforeSend!) as Map)['requestKey'], f.sentKey);
      expect(find.text('Sannu, please check your bank.'), findsOneWidget);
      expect(find.text('Accepted by server'), findsOneWidget);
      expect(await const FlutterSecureStorage().read(key: storageKey), isNull);
      await tester.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'unknown outcome locks composer, reads original status before same-key retry',
    (tester) async {
      final f = Fixture()
        ..failSend = true
        ..found = false;
      await tester.pumpWidget(f.page());
      await settle(tester);
      await tester.enterText(find.byType(TextField), 'Payment sent');
      await tester.tap(find.text('Send message'));
      await settle(tester);
      final key = f.sentKey;
      expect(f.sends, 1);
      expect(tester.widget<TextField>(find.byType(TextField)).enabled, isFalse);
      await tester.tap(find.text('Check send status'));
      await settle(tester);
      expect(f.sends, 1);
      f.failSend = false;
      await tester.tap(find.text('Retry original message'));
      await settle(tester);
      expect(f.sends, 2);
      expect(f.sentKey, key);
      expect(find.text('Accepted by server'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'restart recovers an accepted original request without a second POST',
    (tester) async {
      FlutterSecureStorage.setMockInitialValues({
        storageKey: jsonEncode({
          'body': 'Recovered message',
          'requestKey': 'original_request_0001',
        }),
      });
      final f = Fixture();
      await tester.pumpWidget(f.page());
      await settle(tester);
      expect(f.sends, 0);
      expect(find.text('Recovered message'), findsOneWidget);
      expect(await const FlutterSecureStorage().read(key: storageKey), isNull);
      await tester.pumpWidget(const SizedBox());
    },
  );
  testWidgets('terminal orders retain history with no new message action', (
    tester,
  ) async {
    final f = Fixture()..canSend = false;
    f.items.add(message('Historic reply', own: false));
    await tester.pumpWidget(f.page());
    await settle(tester);
    expect(find.text('Historic reply'), findsOneWidget);
    expect(find.text('Read-only order history'), findsOneWidget);
    expect(tester.widget<TextField>(find.byType(TextField)).enabled, isFalse);
    await tester.tap(find.text('Send message'));
    expect(f.sends, 0);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets(
    'account switch removes private history and ignores in-flight result',
    (tester) async {
      final f = Fixture();
      f.items.add(message('Private bank discussion'));
      await tester.pumpWidget(f.page());
      await settle(tester);
      expect(find.text('Private bank discussion'), findsOneWidget);
      f.held = Completer();
      await tester.tap(find.byTooltip('Refresh messages'));
      await tester.pump();
      f.user = 'other';
      await tester.pump(const Duration(seconds: 1));
      f.held!.complete({
        'items': [message('Late secret')],
        'canSend': true,
        'nextCursor': null,
      });
      await settle(tester);
      expect(find.text('Private bank discussion'), findsNothing);
      expect(find.text('Late secret'), findsNothing);
      expect(
        find.text('Sign in to the original account to view this discussion.'),
        findsOneWidget,
      );
      await tester.pumpWidget(const SizedBox());
    },
  );
  testWidgets(
    'permission revocation removes cached messages and disables composer',
    (tester) async {
      final f = Fixture();
      f.items.add(message('Private reply'));
      await tester.pumpWidget(f.page());
      await settle(tester);
      f.denied = true;
      await tester.tap(find.byTooltip('Refresh messages'));
      await settle(tester);
      expect(find.text('Private reply'), findsNothing);
      expect(find.byType(TextField), findsNothing);
      expect(find.text('Discussion access restricted.'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    },
  );
  testWidgets('refresh failure retains authorized history and provides retry', (
    tester,
  ) async {
    final f = Fixture();
    f.items.add(message('Saved history'));
    await tester.pumpWidget(f.page());
    await settle(tester);
    f.failLoad = true;
    await tester.tap(find.byTooltip('Refresh messages'));
    await settle(tester);
    expect(find.text('Saved history'), findsOneWidget);
    expect(find.text('Retry refresh'), findsOneWidget);
    f.failLoad = false;
    await tester.tap(find.text('Retry refresh'));
    await settle(tester);
    expect(find.byKey(const ValueKey('discussion-error')), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });
  testWidgets(
    '320dp 200 percent RTL remains usable with unknown-send recovery',
    (tester) async {
      tester.view.physicalSize = const Size(320, 850);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final f = Fixture()..failSend = true;
      await tester.pumpWidget(f.page(small: true));
      await settle(tester);
      await tester.scrollUntilVisible(find.byType(TextField), 200);
      await tester.enterText(find.byType(TextField), 'A message');
      await tester.ensureVisible(find.text('Send message'));
      await tester.tap(find.text('Send message'));
      await settle(tester);
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    },
  );
}
