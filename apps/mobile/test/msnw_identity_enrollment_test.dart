import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_identity_enrollment.dart';

class _Adapter implements HttpClientAdapter {
  int submissions = 0;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    Object body;
    var status = 200;
    if (options.method == 'POST') {
      submissions++;
      body = {'error': 'funding.bank_identity_rejected'};
      status = 422;
    } else if (options.path.endsWith('/banks')) {
      body = {'banks': [{'name': 'Test Bank', 'code': '007'}]};
    } else {
      body = {
        'state': 'awaiting_bank_identity',
        'profile': {
          'legalName': 'Amina Yusuf', 'email': 'amina@example.com',
          'phone': '+2348012345678', 'legalNameEditable': false,
          'emailEditable': false, 'phoneEditable': false,
        },
      };
    }
    return ResponseBody.fromString(jsonEncode(body), status,
        headers: {Headers.contentTypeHeader: ['application/json']});
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  testWidgets('rejected bank verification retains saved details and permits correction', (tester) async {
    final adapter = _Adapter();
    final dio = Dio()..httpClientAdapter = adapter;
    Widget screen() => MaterialApp(home: Scaffold(body: SingleChildScrollView(
      child: MsnwIdentityEnrollment(
        dio: dio, baseUrl: 'https://example.test', expectedUserId: 'owner',
        currentUserId: () => 'owner', accessToken: () => 'token',
        onQualified: () => fail('Rejected identity must not qualify'),
      ),
    )));
    await tester.pumpWidget(screen());
    await tester.pumpAndSettle();
    Finder field(String label) => find.widgetWithText(TextFormField, label);
    await tester.enterText(field('BVN'), '22222222222');
    await tester.enterText(field('Bank account number'), '0123456789');
    await tester.ensureVisible(find.text('Bank').last);
    await tester.tap(find.text('Bank').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Test Bank').last);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byType(CheckboxListTile));
    await tester.tap(find.byType(CheckboxListTile));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Submit details'));
    await tester.tap(find.text('Submit details'));
    await tester.pumpAndSettle();
    expect(adapter.submissions, 1);
    expect(find.textContaining('Bank identity details were not accepted.'), findsOneWidget);
    final fields = tester.widgetList<TextFormField>(find.byType(TextFormField)).toList();
    expect(fields[0].controller!.text, 'Amina Yusuf');
    expect(fields[1].controller!.text, 'amina@example.com');
    expect(fields[3].controller!.text, isEmpty);
    expect(fields[4].controller!.text, isEmpty);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(screen());
    await tester.pumpAndSettle();
    expect(tester.widgetList<TextFormField>(find.byType(TextFormField)).first.controller!.text,
        'Amina Yusuf');
    expect(find.text('Bank verification required'), findsOneWidget);
    expect(find.text('Verified'), findsNothing);
  });
}
