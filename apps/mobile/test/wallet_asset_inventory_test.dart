import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
void main(){
 test('owned assets survive disabled deposits and unavailable prices',(){
  const route=CryptoRoute(providerCode:'btc',asset:'BTC',network:'Bitcoin');
  const snapshot=CryptoWalletSnapshot(holdingRoutes:[route],capabilities:CryptoCapabilities(deposits:false,withdrawals:false,conversions:false,fiatOnRamp:false,fiatCurrencies:[],fiatSettlementProviderCode:null),depositRoutes:[],conversionRoutes:[],history:[],balances:{'btc':'0.25'},selectedProviderCode:'btc');
  expect(snapshot.assetRoutes.single.providerCode,'btc');expect(snapshot.selectedBalance,'0.25');
  expect(snapshot.selectedRoute?.network,'Bitcoin');expect(snapshot.copyWith().assetRoutes.single,route);
 });
}
