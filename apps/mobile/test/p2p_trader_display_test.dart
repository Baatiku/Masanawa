import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

void main() {
  test('P2P offer trust text never fabricates success without a sufficient cohort', () {
    expect(p2pMerchantHistoryLabel({}), 'Not enough trading history');
    expect(p2pMerchantHistoryLabel({'completed_orders_30d': 4,'closed_orders_30d': 4}),
      'Not enough trading history');
    expect(p2pMerchantHistoryLabel({'completed_orders_30d': 5,'closed_orders_30d': 5}),
      '5 completed orders · last 30 days');
    expect(p2pMerchantHistoryLabel({'completed_orders_30d': 3,'closed_orders_30d': 6}),
      '3 completed orders · last 30 days');
    expect(p2pMerchantHistoryLabel({'completed_orders_30d': 7,'closed_orders_30d': 6}),
      'Not enough trading history');
    expect(p2pMerchantHistoryLabel({'completed_orders_30d': -1,'closed_orders_30d': 6}),
      'Not enough trading history');
  });

  test('P2P cards show only available profile display text',(){
    expect(p2pSafeTraderDisplay(null),'Masanawa trader');
    expect(p2pSafeTraderDisplay('  '),'Masanawa trader');
    expect(p2pSafeTraderDisplay('  Amina  Daura\nTrader '),'Amina Daura Trader');
    final tooLong='A'*60;
    expect(p2pSafeTraderDisplay(tooLong).length,49);
    expect(p2pSafeTraderDisplay(tooLong),endsWith('…'));
  });
}
