import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_transaction_history.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  testWidgets('wallet history keeps its search when the custody balance refreshes',
      (tester) async {
    var historyRequests = 0;
    final dio = Dio()..interceptors.add(InterceptorsWrapper(
      onRequest: (request, handler) {
        historyRequests++;
        handler.resolve(Response<dynamic>(
          requestOptions: request, statusCode: 200,
          data: <String, dynamic>{'items': <dynamic>[], 'nextCursor': null},
        ));
      },
    ));

    Widget page(int refresh) => MaterialApp(
      theme: buildMasanawaTheme(brightness: Brightness.light),
      home: Scaffold(body: MsnwTransactionHistory(
        key: const ValueKey('account-history'),
        dio: dio,
        baseUrl: 'https://example.invalid',
        expectedUserId: 'fan-a',
        currentUserId: () => 'fan-a',
        accessToken: () => 'credential-a',
        refreshKey: refresh,
      )),
    );
    await tester.pumpWidget(page(0));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField).first, 'Electricity');
    await tester.pump(const Duration(milliseconds: 350));
    await tester.pumpAndSettle();
    final before = historyRequests;
    await tester.pumpWidget(page(1));
    await tester.pumpAndSettle();
    expect(historyRequests, greaterThan(before));
    expect(tester.widget<TextField>(find.byType(TextField).first).controller!.text,
        'Electricity');
    expect(find.text('No transactions match your filters.'), findsOneWidget);
  });
}
