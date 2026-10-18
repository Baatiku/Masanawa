import 'dart:async';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/finance/crypto_models.dart';
import 'package:masanawa/src/finance/crypto_state.dart';
import 'package:masanawa/src/finance/crypto_transport.dart';

class _Session extends SessionController {
 @override SessionState build()=>const SessionSignedOut();
 void signIn(){const user=AuthUser(id:'another-owner',name:'B',locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-18');state=SessionSignedIn(user,const AuthTokens(accessToken:'test',refreshToken:'test',accessExpiresIn:3600,user:user));}
}

class _Transport extends Fake implements CryptoWalletTransport {
 int active=0,peak=0;
 Completer<CryptoBalance>? delayed;
 final deposit=Completer<CryptoIntent>();
 int deposits=0;
 @override Future<CryptoIntent> createDeposit({required String requestId,required String providerCode,required String amount}){deposits++;return deposit.future;}
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
 test('late operation cannot enter a different account history or submit again',()async{
  final transport=_Transport();final container=ProviderContainer(overrides:[sessionProvider.overrideWith(_Session.new),cryptoWalletTransportProvider.overrideWithValue(transport)]);addTearDown(container.dispose);
  await container.read(cryptoWalletProvider.future);
  final operation=container.read(cryptoWalletProvider.notifier).createDeposit(requestId:'private-request',providerCode:'asset-0',amount:'1');
  final expected=expectLater(operation,throwsStateError);
  (container.read(sessionProvider.notifier) as _Session).signIn();await Future<void>.delayed(Duration.zero);await container.read(cryptoWalletProvider.future);
  transport.deposit.complete(CryptoIntent.fromJson({'requestId':'private-request','operation':'deposit','asset':'asset-0','amount':'1','status':'pending'}));
  await expected;expect(container.read(cryptoWalletProvider).requireValue.history,isEmpty);expect(transport.deposits,1);
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
