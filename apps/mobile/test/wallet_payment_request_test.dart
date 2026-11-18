import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/wallet_payment_request.dart';
import 'package:masanawa/src/core/shell_deep_link.dart';
import 'package:masanawa/src/core/pending_deep_link.dart';
void main(){
 final now=DateTime.now().toUtc();
 final request=WalletPaymentRequest(accountNumber:'8123456789',userId:'user_fixture',expiresAt:now.add(const Duration(hours:1)),amountAtomic:'1000001');
 test('request preserves exact recipient and atomic amount through navigation and sign-in',(){
  final parsed=parseWalletPaymentRequest(request.link,now:now)!;
  expect(parsed.userId,'user_fixture');expect(parsed.amountAtomic,'1000001');
  expect(shellDeepLinkRoute(request.link),request.route);
  final pending=PendingDeepLink()..offer(request.link);
  expect(pending.take(ready:false),isNull);expect(pending.take(ready:true),request.link);
  expect(parseWalletPaymentRequest(Uri.parse(request.route),internal:true,now:now)?.accountNumber,'8123456789');
 });
 test('rejects malicious host, duplicate fields, unsupported asset and stale requests',(){
  for(final link in [request.link.replace(host:'evil.example'),request.link.replace(scheme:'http'),Uri.parse('${request.link}&amount=2'),request.link.replace(queryParameters:{...request.link.queryParameters,'asset':'BTC'}),request.link.replace(queryParameters:{...request.link.queryParameters,'expires':now.subtract(const Duration(seconds:1)).toIso8601String()}),request.link.replace(queryParameters:{...request.link.queryParameters,'amount':'1.5'}),request.link.replace(queryParameters:{...request.link.queryParameters,'recipient':'wrong/user'})]){
   expect(parseWalletPaymentRequest(link,now:now),isNull);
  }
 });
}
