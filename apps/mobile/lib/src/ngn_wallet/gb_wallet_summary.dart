import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers.dart';
import '../state/session_state.dart';
import '../localization/international_digits.dart';
typedef GbWalletOwner = ({String accountId,int authorizationEpoch});
String ngnMoney(int kobo){
 if(kobo<0)throw const FormatException('Invalid NGN amount');
 final whole=(kobo~/100).toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'),(_)=>',');
 return '₦$whole${kobo%100==0?'':'.${(kobo%100).toString().padLeft(2,'0')}'}';
}
String ngnInput(int kobo)=>kobo%100==0?'${kobo~/100}':'${kobo~/100}.${(kobo%100).toString().padLeft(2,'0')}';
int? parseNgnInput(String input){
 final text=normalizeInternationalDigits(input).trim().replaceAll('٫','.');
 if(!RegExp(r'^(?:0|[1-9][0-9]{0,7})(?:\.[0-9]{1,2})?$').hasMatch(text))return null;
 final parts=text.split('.');final n=int.parse(parts.first)*100+(parts.length==1?0:int.parse(parts.last.padRight(2,'0')));
 return n>0&&n<=1000000000?n:null;
}
class GbWalletBalance{
 const GbWalletBalance({required this.totalKobo,required this.availableKobo,required this.reservedKobo,required this.frozen});
 final int totalKobo,availableKobo,reservedKobo;final bool frozen;
 factory GbWalletBalance.fromJson(Object? response){
  if(response is! Map||response['balance'] is! Map)throw const FormatException('Invalid NGN wallet');
  final raw=response['balance'] as Map;
  if(raw['currency']!='NGN'||raw['unit']!='kobo')throw const FormatException('Invalid wallet currency');
  int read(String key){final n=raw[key];if(n is! int||n<0||n>9007199254740991)throw const FormatException('Invalid amount');return n;}
  final total=read('totalKobo'),available=read('availableKobo'),held=read('reservedKobo');
  if(available!=(total-held).clamp(0,total)||raw['frozen'] is! bool)throw const FormatException('Inconsistent balance');
  return GbWalletBalance(totalKobo:total,availableKobo:available,reservedKobo:held,frozen:raw['frozen'] as bool);
 }
}
final gbWalletSummaryProvider=FutureProvider.autoDispose.family<GbWalletBalance,GbWalletOwner>((ref,owner)async{
 bool current(){final s=ref.read(sessionProvider);return s is SessionSignedIn&&s.user.id==owner.accountId&&ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;}
 if(!current())throw StateError('account_changed');final cancel=CancelToken();ref.onDispose(cancel.cancel);
 final response=await ref.watch(apiClientProvider).dio.get<Object?>('/v1/ngn/wallet/summary',cancelToken:cancel,options:Options(headers:const {'Cache-Control':'no-store'}));
 if(!current())throw StateError('account_changed');return GbWalletBalance.fromJson(response.data);
});
