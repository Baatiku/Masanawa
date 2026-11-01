import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_activity.dart';
import 'package:masanawa/src/gb_wallet/gb_wallet_flow_components.dart';
import 'package:masanawa/src/theme/masanawa_theme.dart';

void main() {
  group('Independent mobile delivery status', () {
    test('accepts only owner-requested operation and explicit provider states', () {
      for (final state in const ['pending', 'delivered', 'failed']) {
        final read = GbDeliveryReadback.read({
          'operationId': 'redeem_original_123',
          'state': state,
          'costMb': 800,
        }, 'redeem_original_123');
        expect(read.operationId, 'redeem_original_123');
        expect(read.costMb, 800);
        expect(read.state, state);
      }
      expect(
        () => GbDeliveryReadback.read({
          'operationId': 'another_account_operation',
          'state': 'delivered',
          'costMb': 800,
        }, 'redeem_original_123'),
        throwsFormatException,
      );
      expect(
        () => GbDeliveryReadback.read({
          'operationId': 'redeem_original_123',
          'state': 'posted',
          'costMb': 800,
        }, 'redeem_original_123'),
        throwsFormatException,
      );
      expect(
        () => GbDeliveryReadback.read({
          'operationId': 'redeem_original_123',
          'state': 'delivered',
          'costMb': 0,
        }, 'redeem_original_123'),
        throwsFormatException,
      );
    });
  });

  for (final width in const [320.0, 360.0, 390.0, 430.0]) {
    testWidgets('review edit and amount rows work at ${width.toInt()}dp and 200% type',
        (tester) async {
      tester.view.physicalSize = Size(width, 700);
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });
      var edits = 0;
      await tester.pumpWidget(MaterialApp(
        theme: buildMasanawaTheme(brightness: Brightness.light),
        home: Builder(builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(2)),
          child: Scaffold(
            body: Center(
              child: GbWalletReviewSheet(
                title: 'Review purchased data balance',
                onEdit: () => edits++,
                onClose: () {},
                children: const [
                  GbWalletReviewLine('Amount', '−1,000,000 MB', emphasize: true),
                  GbWalletReviewLine('Recipient', 'Verified long recipient'),
                  GbWalletInlineNotice(
                    message: 'Confirm only after reviewing all details.',
                  ),
                ],
                action: const FilledButton(
                  onPressed: null,
                  child: Text('Confirm unavailable'),
                ),
              ),
            ),
          ),
        )),
      ));
      await tester.pumpAndSettle();
      expect(find.byTooltip('Edit details'), findsOneWidget);
      await tester.tap(find.byTooltip('Edit details'));
      expect(edits, 1);
      expect(tester.takeException(), isNull);
    });
  }
}
