import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa_admin/src/screens/admin_record_detail_page.dart';

void main() {
  testWidgets('failed detail request is recoverable on the same page', (tester) async {
    var calls = 0;
    await tester.pumpWidget(MaterialApp(
      home: AdminRecordDetailPage<String>(
        title: 'External receipts',
        subtitle: 'Billing',
        emptyTitle: 'No receipts',
        load: () async {
          calls++;
          if (calls == 1) throw StateError('offline');
          return ['Verified receipt'];
        },
        itemBuilder: (_, value) => ListTile(title: Text(value)),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Could not load records. Check your connection.'), findsOneWidget);
    expect(find.text('External receipts'), findsOneWidget);
    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(calls, 2);
    expect(find.text('Verified receipt'), findsOneWidget);
  });
}
