/// A public navigation hint, never payment approval or a trusted price quote.
class WalletPaymentRequest {
  const WalletPaymentRequest({required this.accountNumber,required this.userId,required this.expiresAt,this.amountAtomic});
  final String accountNumber,userId;
  final DateTime expiresAt;
  final String? amountAtomic;
  Uri get link=>Uri.https('masanawa.com','/pay',{
    'v':'1','asset':'MSNW','account':accountNumber,'recipient':userId,
    'expires':expiresAt.toUtc().toIso8601String(),if(amountAtomic!=null)'amount':amountAtomic!,
  });
  String get route=>Uri(path:'/wallet/pay',query:link.query).toString();
}
WalletPaymentRequest? parseWalletPaymentRequest(Uri uri,{DateTime? now,bool internal=false}){
  if(uri.toString().length>2000||uri.userInfo.isNotEmpty||uri.hasPort||uri.fragment.isNotEmpty)return null;
  final validLocation=internal
    ?!uri.hasScheme&&!uri.hasAuthority&&uri.path=='/wallet/pay'
    :uri.scheme=='https'&&uri.host=='masanawa.com'&&uri.path=='/pay';
  if(!validLocation)return null;
  final q=uri.queryParametersAll;
  if(q.keys.any((k)=>!const{'v','asset','account','recipient','expires','amount'}.contains(k))||q.values.any((v)=>v.length!=1))return null;
  final p=uri.queryParameters,account=p['account'],user=p['recipient'],amount=p['amount'];
  if(p['v']!='1'||p['asset']!='MSNW'||account==null||!RegExp(r'^8[0-9]{9}$').hasMatch(account)||
    user==null||!RegExp(r'^[A-Za-z0-9:_-]{1,128}$').hasMatch(user)||
    amount!=null&&!RegExp(r'^[1-9][0-9]{0,23}$').hasMatch(amount))return null;
  final expires=DateTime.tryParse(p['expires']??''),time=(now??DateTime.now()).toUtc();
  if(expires==null||!expires.isUtc||!expires.isAfter(time)||expires.isAfter(time.add(const Duration(days:7))))return null;
  return WalletPaymentRequest(accountNumber:account,userId:user,expiresAt:expires,amountAtomic:amount);
}
