import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/msnw_p2p_screen.dart';

void main() {
  test('P2P cards show only available profile display text',(){
    expect(p2pSafeTraderDisplay(null),'Masanawa trader');
    expect(p2pSafeTraderDisplay('  '),'Masanawa trader');
    expect(p2pSafeTraderDisplay('  Amina  Daura\nTrader '),'Amina Daura Trader');
    final tooLong='A'*60;
    expect(p2pSafeTraderDisplay(tooLong).length,49);
    expect(p2pSafeTraderDisplay(tooLong),endsWith('…'));
  });
}
