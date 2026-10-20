import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_custody_send.dart';
import 'package:masanawa/src/finance/msnw_wallet_home.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));
  testWidgets('account number is formatted and copied without spaces', (tester) async {
    final dio = Dio()..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      expect(options.path, endsWith('/v1/wallet/account'));
      expect(options.headers['Authorization'], 'Bearer session');
      handler.resolve(Response(requestOptions: options, data: {'accountNumber': '8000000001'}));
    }));
    String? copied;
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform, (call) async {
      if (call.method == 'Clipboard.setData') copied = (call.arguments as Map)['text'] as String;
      return null;
    });
    addTearDown(() => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(SystemChannels.platform, null));
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: MsnwAccountBadge(
      dio: dio, baseUrl: 'https://example.invalid', accountId: 'one',
      currentUserId: () => 'one', accessToken: () => 'session'))));
    await tester.pumpAndSettle();
    expect(find.text('8000 000 001'), findsOneWidget);
    await tester.tap(find.byTooltip('Copy Masanawa account number'));
    await tester.pumpAndSettle();
    expect(copied, '8000000001');
  });
  testWidgets('old account read cannot replace a new account number', (tester) async {
    final reads = <Completer<Map<String, dynamic>>>[];
    final dio = Dio()..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      final read = Completer<Map<String, dynamic>>(); reads.add(read);
      handler.resolve(Response(requestOptions: options, data: await read.future));
    }));
    String account = 'one';
    Widget page() => MaterialApp(home: Scaffold(body: MsnwAccountBadge(
      dio: dio, baseUrl: 'https://example.invalid', accountId: account,
      currentUserId: () => account, accessToken: () => 'session-$account')));
    await tester.pumpWidget(page());
    for (var i = 0; i < 10 && reads.isEmpty; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    expect(reads, hasLength(1));
    account = 'two'; await tester.pumpWidget(page());
    for (var i = 0; i < 10 && reads.length < 2; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
    expect(reads, hasLength(2));
    reads[1].complete({'accountNumber': '8000000002'});
    await tester.pumpAndSettle();
    reads[0].complete({'accountNumber': '8000000001'});
    await tester.pumpAndSettle();
    expect(find.text('8000 000 002'), findsOneWidget);
    expect(find.text('8000 000 001'), findsNothing);
  });
  testWidgets('complete account input looks up a recipient before entering an amount', (tester) async {
    final queries = <String>[];
    final dio = Dio()..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      expect(options.path, endsWith('/v1/wallet/lookup'));
      queries.add(options.queryParameters['query'] as String);
      handler.resolve(Response(requestOptions: options, data: {
        'found': true, 'userId': 'receiver', 'displayName': 'Test Recipient',
        'handle': 'recipient', 'accountNumber': '8000000002',
      }));
    }));
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: MsnwCustodySendSheet(
      dio: dio, baseUrl: 'https://example.invalid', expectedUserId: 'one',
      currentUserId: () => 'one', accessToken: () => 'session', onCompleted: () {}))));
    await tester.pumpAndSettle();
    final input = find.widgetWithText(TextField, 'Masanawa account number or @handle');
    await tester.enterText(input, '80000');
    await tester.pump(const Duration(milliseconds: 350)); expect(queries, isEmpty);
    await tester.enterText(input, '8000000002');
    await tester.pump(const Duration(milliseconds: 350)); await tester.pumpAndSettle();
    expect(queries, ['8000000002']);
    expect(find.text('Test Recipient'), findsOneWidget);
    expect(find.text('@recipient'), findsOneWidget);
    await tester.enterText(input, '800'); await tester.pump();
    expect(find.text('Test Recipient'), findsNothing);
  });
}
