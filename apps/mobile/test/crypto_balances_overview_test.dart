import 'dart:async';
import 'package:masanawa/src/state/session_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/finance/crypto_transport.dart';

class _Session extends SessionController { @override SessionState build()=>const SessionSignedOut(); }

class _Transport extends Fake implements CryptoWalletTransport {
 int active=0,peak=0;
 Completer<CryptoBalance>? delayed;
 @override Future<CryptoCapabilities> capabilities()async=>const CryptoCapabilities(deposits:true,withdrawals:true,conversions:false,fiatOnRamp:false,fiatCurrencies:[],fiatSettlementProviderCode:null);
 @override Future<List<CryptoRoute>> depositRoutes()async=>[for(var i=0;i<6;i++)CryptoRoute(providerCode:'asset-$i',asset:'A$i',network:'network-$i')];
 @override Future<List<CryptoIntent>> history({int limit=50})async=>[];
 @override Future<CryptoBalance> balance(String code)async{
  if(delayed!=null){final pending=delayed!;delayed=null;return pending.future;}
  active++;if(active>peak)peak=active;
  await Future<void>.delayed(Duration.zero);active--;
  if(code=='asset-4')throw StateError('unavailable');
  return CryptoBalance(providerCode:code,amount:code=='asset-0'?'0':'12.5');
 }
}
void main(){
 test('loads all supported balances with bounded concurrency and preserves real zero on partial failure',()async{
  final transport=_Transport();final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),cryptoWalletTransportProvider.overrideWithValue(transport)]);addTearDown(container.dispose);
  final snapshot=await container.read(cryptoWalletProvider.future);
  expect(snapshot.depositRoutes,hasLength(6));expect(snapshot.balances['asset-0'],'0');expect(snapshot.balances['asset-5'],'12.5');expect(snapshot.balances.containsKey('asset-4'),isFalse);expect(transport.peak,lessThanOrEqualTo(4));
 });
 test('late single-asset refresh cannot overwrite a refreshed wallet generation',()async{
  final transport=_Transport();final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),cryptoWalletTransportProvider.overrideWithValue(transport)]);addTearDown(container.dispose);
  await container.read(cryptoWalletProvider.future);
  final delayed=Completer<CryptoBalance>();transport.delayed=delayed;
  final old=container.read(cryptoWalletProvider.notifier).refreshBalance('asset-0');
  await Future<void>.delayed(Duration.zero);
  await container.read(cryptoWalletProvider.notifier).refresh();
  delayed.complete(const CryptoBalance(providerCode:'asset-0',amount:'999'));
  await old;
  expect(container.read(cryptoWalletProvider).requireValue.balances['asset-0'],'0');
 });
}
