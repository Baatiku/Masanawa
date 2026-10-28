import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers.dart';
import 'gb_wallet_activity.dart';

class GbWalletHold {
  const GbWalletHold({required this.operationId,required this.kind,required this.operationState,
    required this.state,required this.reservedMb,required this.heldMb,required this.chargedMb,
    required this.releasedMb,required this.purchasedReservedMb,required this.welcomeReservedMb,
    required this.createdAt,required this.resolvedAt,required this.entryIds});
  final String operationId,kind,operationState,state;
  final int reservedMb,heldMb,chargedMb,releasedMb,purchasedReservedMb,welcomeReservedMb;
  final DateTime createdAt;final DateTime? resolvedAt;final List<String> entryIds;
  String get title=>switch(kind){
    'reply'=>'Masana reply','connected_call'=>'Masana call','redeem'=>'Data purchase',
    'status_promotion'=>'Promotion','status_boost'=>'Post boost',_=>'MB operation'};
  String get stateLabel=>switch(state){'reserved'=>'Still held','captured'=>'Posted debit',_=>'Released'};
  String get amountLabel=>state=='reserved'?'Held ${groupActivityAmount(heldMb)} MB':
    state=='captured'?'Posted ${groupActivityAmount(chargedMb)} MB · Released ${groupActivityAmount(releasedMb)} MB':
    'Released ${groupActivityAmount(releasedMb)} MB · No posted charge';
  factory GbWalletHold.read(Object? raw){
    if(raw is! Map)throw const FormatException('Invalid reservation');
    String id(Object? v){if(v is! String||!RegExp(r'^[A-Za-z0-9][A-Za-z0-9_:.-]{0,159}$').hasMatch(v))throw const FormatException('Invalid reservation reference');return v;}
    int mb(Object? v){if(v is! int||v<0||v>9007199254740991)throw const FormatException('Invalid reserved MB');return v;}
    DateTime date(Object? v){final value=v is String?DateTime.tryParse(v):null;if(value==null||!value.isUtc)throw const FormatException('Invalid reservation time');return value;}
    final operationId=id(raw['operationId']),kind=raw['kind'],operationState=raw['operationState'],state=raw['state'];
    if(kind is! String||!RegExp(r'^[a-z][a-z0-9_]{0,63}$').hasMatch(kind)||
      !const {'pending','reserved','completed','failed','reversed'}.contains(operationState)||
      !const {'reserved','captured','released'}.contains(state))throw const FormatException('Invalid reservation state');
    final reserved=mb(raw['reservedMb']),held=mb(raw['heldMb']),charged=mb(raw['chargedMb']),released=mb(raw['releasedMb']);
    final purchased=mb(raw['purchasedReservedMb']),welcome=mb(raw['welcomeReservedMb']);
    if(reserved==0||BigInt.from(purchased)+BigInt.from(welcome)!=BigInt.from(reserved)||
      BigInt.from(held)+BigInt.from(charged)+BigInt.from(released)!=BigInt.from(reserved))throw const FormatException('Invalid reservation accounting');
    final created=date(raw['createdAt']),resolved=raw['resolvedAt']==null?null:date(raw['resolvedAt']);
    final entries=raw['entryIds'];
    if(entries is! List||entries.length>16||entries.toSet().length!=entries.length||
      entries.any((e)=>e is! String||!RegExp(r'^mb:\d+$').hasMatch(e)))throw const FormatException('Invalid posted entries');
    if(state=='reserved'){
      if(held!=reserved||charged!=0||released!=0||resolved!=null||entries.isNotEmpty||operationState!='reserved')throw const FormatException('Invalid open reservation');
    }else{
      if(held!=0||resolved==null||resolved.isBefore(created))throw const FormatException('Invalid resolved reservation');
      if(state=='released'&&(charged!=0||entries.isNotEmpty||operationState!='failed'))throw const FormatException('Invalid release');
      if(state=='captured'&&(charged==0||entries.isEmpty||!const {'completed','reversed'}.contains(operationState)))throw const FormatException('Invalid posted debit');
    }
    return GbWalletHold(operationId:operationId,kind:kind,operationState:operationState as String,state:state as String,
      reservedMb:reserved,heldMb:held,chargedMb:charged,releasedMb:released,purchasedReservedMb:purchased,welcomeReservedMb:welcome,
      createdAt:created,resolvedAt:resolved,entryIds:List<String>.unmodifiable(entries));
  }
}
class GbWalletHoldPage {
  const GbWalletHoldPage(this.items,this.nextCursor,this.snapshotAt);
  final List<GbWalletHold> items;final String? nextCursor;final DateTime snapshotAt;
  factory GbWalletHoldPage.read(Object? raw){
    if(raw is! Map||raw['items'] is! List||(raw['items'] as List).length>30)throw const FormatException('Invalid reservation page');
    final cursor=raw['nextCursor'],time=raw['snapshotAt'];
    final at=time is String?DateTime.tryParse(time):null;
    if(at==null||!at.isUtc||(cursor!=null&&(cursor is! String||cursor.isEmpty||cursor.length>2048||!RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(cursor))))throw const FormatException('Invalid reservation page');
    return GbWalletHoldPage(List<GbWalletHold>.unmodifiable((raw['items'] as List).map(GbWalletHold.read)),cursor as String?,at);
  }
}
abstract interface class GbWalletHoldTransport {
  Future<GbWalletHoldPage> page({String? cursor,String state='all',CancelToken? cancellation});
  Future<GbWalletHold> detail(String operationId,{CancelToken? cancellation});
}
final gbWalletHoldTransportProvider=Provider<GbWalletHoldTransport>((ref){
  final api=ref.watch(apiClientProvider);
  return _GatewayHolds(api.dio);
});
class _GatewayHolds implements GbWalletHoldTransport {
  _GatewayHolds(this.dio);final Dio dio;
  @override Future<GbWalletHoldPage> page({String? cursor,String state='all',CancelToken? cancellation})async{
    final response=await dio.get<Object?>('/v1/gb/wallet/activity/holds',
      queryParameters:{'limit':10,'state':state,if(cursor!=null)'cursor':cursor},
      options:Options(headers:const {'Cache-Control':'no-store'}),cancelToken:cancellation);
    return GbWalletHoldPage.read(response.data);
  }
  @override Future<GbWalletHold> detail(String operationId,{CancelToken? cancellation})async{
    final response=await dio.get<Object?>('/v1/gb/wallet/activity/holds/${Uri.encodeComponent(operationId)}',
      options:Options(headers:const {'Cache-Control':'no-store'}),cancelToken:cancellation);
    final data=response.data;
    final hold=GbWalletHold.read(data is Map?data['hold']:null);
    if(hold.operationId!=operationId)throw const FormatException('Mismatched reservation');
    return hold;
  }
}
