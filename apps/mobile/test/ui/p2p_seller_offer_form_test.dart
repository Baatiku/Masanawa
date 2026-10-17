import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

void main() {
  testWidgets('seller edits all amounts on one page and retains data after error',
      (tester) async {
    var attempts = 0;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: MsnwP2pSellerOfferForm(
          methods: const [
            {'method_id': 'bank-1', 'bank_name': 'Test bank',
             'account_number': '0123456789'},
          ],
          onPublish: (payload) async {
            attempts++;
            throw StateError('offline');
          },
        ),
      ),
    ));
    final fields = find.byType(TextFormField);
    expect(fields, findsNWidgets(5));
    await tester.enterText(fields.at(1), '1500.00');
    await tester.enterText(fields.at(2), '1');
    await tester.enterText(fields.at(3), '100');
    await tester.enterText(fields.at(4), '100');
    await tester.ensureVisible(find.byKey(const ValueKey('p2p-review-offer')));
    await tester.tap(find.byKey(const ValueKey('p2p-review-offer')));
    await tester.pumpAndSettle();
    expect(find.text('Review sell offer'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('p2p-publish-offer')));
    await tester.pumpAndSettle();
    expect(attempts, 1);
    expect(find.textContaining('could not be confirmed'), findsOneWidget);
    expect(find.text('1500.00 NGN per MSNW'), findsOneWidget);
    expect(find.text('Return to My Offers'), findsOneWidget);
  });
}
