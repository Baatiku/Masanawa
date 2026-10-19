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
    for (final entry in const {
      'NGN per MSNW': '1500.00',
      'Minimum MSNW': '1',
      'Maximum MSNW': '100',
      'Inventory MSNW': '100',
    }.entries) {
      final field = find.widgetWithText(TextFormField, entry.key);
      await tester.scrollUntilVisible(field, 120, scrollable: find.byType(Scrollable).first);
      await tester.enterText(field, entry.value);
    }
    await tester.ensureVisible(find.byKey(const ValueKey('p2p-review-offer')));
    await tester.tap(find.byKey(const ValueKey('p2p-review-offer')));
    await tester.pumpAndSettle();
    expect(find.text('Review sell offer'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('p2p-publish-offer')));
    await tester.pumpAndSettle();
    expect(attempts, 1);
    expect(find.textContaining('could not be confirmed'), findsOneWidget);
    expect(find.text('1500.00 NGN / MSNW'), findsOneWidget);
    expect(find.text('Return to My Offers'), findsOneWidget);
  });
}
