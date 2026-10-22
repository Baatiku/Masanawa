import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/finance/wallet_asset_overview.dart';
void main(){
 test('owned assets survive disabled deposits and unavailable prices',(){
  const route=CryptoRoute(providerCode:'btc',asset:'BTC',network:'Bitcoin');
  const snapshot=CryptoWalletSnapshot(holdingRoutes:[route],capabilities:CryptoCapabilities(deposits:false,withdrawals:false,conversions:false,fiatOnRamp:false,fiatCurrencies:[],fiatSettlementProviderCode:null),depositRoutes:[],conversionRoutes:[],history:[],balances:{'btc':'0.25'},selectedProviderCode:'btc');
  expect(snapshot.assetRoutes.single.providerCode,'btc');expect(snapshot.selectedBalance,'0.25');
  expect(snapshot.selectedRoute?.network,'Bitcoin');expect(snapshot.copyWith().assetRoutes.single,route);
 });
 test('marks only authoritative held routes as Available and obscures provider amounts',(){
  const btc=CryptoRoute(providerCode:'btc',asset:'BTC',network:'bitcoin');
  const fixture=CryptoWalletSnapshot(
    holdingRoutes:[btc],holdingsVerified:true,
    capabilities:CryptoCapabilities(deposits:true,withdrawals:true,conversions:false,
      fiatOnRamp:false,fiatCurrencies:[],fiatSettlementProviderCode:null),
    depositRoutes:[],conversionRoutes:[],history:[],
    balances:{'btc':'0.25'},reservedBalances:{'btc':'0.10'},
    selectedProviderCode:'btc',
  );
  expect(fixture.verifiedCustodyFor('btc'),isTrue);
  expect(walletAssetBalanceLabel(fixture,'btc',hidden:false),'Available: 0.25');
  expect(walletAssetBalanceLabel(fixture,'btc',hidden:true),'••••');
  final outage=fixture.copyWith(holdingsVerified:false);
  expect(outage.verifiedCustodyFor('btc'),isFalse);
  expect(walletAssetBalanceLabel(outage,'btc',hidden:false),
    'Provider-reported: 0.25 (custody unverified)');
  final removed=fixture.copyWith(holdingRoutes:[]);
  expect(removed.verifiedCustodyFor('btc'),isFalse);
  expect(walletAssetBalanceLabel(removed,'btc',hidden:false),
    'Provider-reported: 0.25 (custody unverified)');
  expect(walletAssetBalanceLabel(removed,'missing',hidden:false),'Available balance unavailable');
 });

}
