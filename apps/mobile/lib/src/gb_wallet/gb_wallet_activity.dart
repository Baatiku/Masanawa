import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

class GbActivityItem {
  const GbActivityItem({required this.id,required this.operationId,
    required this.unit,required this.amount,required this.kind,
    required this.status,required this.createdAt});
  final String id, operationId, unit, kind, status;
  /// Server-signed integer MB or NGN kobo; never a decimal guessed by client.
  final int amount;
  final DateTime createdAt;

  factory GbActivityItem.read(Object? source) {
    if (source is! Map) throw const FormatException('Invalid wallet activity');
    final value=Map<String,dynamic>.from(source);
    final id=value['entryId'],operation=value['operationId'];
    final unit=value['unit'],amount=value['amount'],kind=value['kind'];
    final status=value['status'],time=value['createdAt'];
    final parsed=time is String?DateTime.tryParse(time):null;
    if (id is! String || !RegExp(r'^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$').hasMatch(id) ||
        operation is! String || operation.isEmpty || operation.length>160 ||
        (unit!='MB' && unit!='NGN') || amount is! int || amount==0 ||
        kind is! String || kind.isEmpty || kind.length>48 ||
        (status!='completed' && status!='reversed') || parsed==null || !parsed.isUtc) {
      throw const FormatException('Invalid authoritative wallet activity');
    }
    return GbActivityItem(id:id,operationId:operation,unit:unit as String,
      amount:amount,kind:kind,status:status as String,createdAt:parsed);
  }
}

class GbActivityPage {
  const GbActivityPage(this.items,this.nextCursor);
  final List<GbActivityItem> items;
  final String? nextCursor;

  factory GbActivityPage.read(Object? source) {
    if (source is! Map) throw const FormatException('Invalid activity page');
    final data=Map<String,dynamic>.from(source);
    final rows=data['items'],next=data['nextCursor'];
    if (rows is! List || rows.length>31 ||
        (next!=null && (next is! String || next.isEmpty || next.length>1024 ||
          !RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(next)))) {
      throw const FormatException('Invalid wallet activity page');
    }
    return GbActivityPage(List.unmodifiable(rows.map(GbActivityItem.read)),next as String?);
  }
}

abstract class GbActivityTransport {
  Future<GbActivityPage> page({required int limit,String? cursor,
    CancelToken? cancellation});
}

class DioGbActivityTransport implements GbActivityTransport {
  const DioGbActivityTransport(this.dio);
  final Dio dio;
  @override
  Future<GbActivityPage> page({required int limit,String? cursor,
    CancelToken? cancellation}) async {
    if (limit<1 || limit>30 ||
        (cursor!=null && (cursor.isEmpty || cursor.length>1024 ||
          !RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(cursor)))) {
      throw const FormatException('Invalid wallet activity request');
    }
    final response=await dio.get<Object?>(
      '/v1/gb/wallet/activity',queryParameters:{'limit':limit,
        if(cursor!=null)'cursor':cursor},cancelToken:cancellation,
      options:Options(headers:const {'Cache-Control':'no-store'}));
    return GbActivityPage.read(response.data);
  }
}

final gbActivityTransportProvider=Provider<GbActivityTransport>((ref)=>
  DioGbActivityTransport(ref.watch(apiClientProvider).dio));

typedef GbActivityRequest=({GbWalletOwner owner,int limit});
final gbActivityPageProvider=FutureProvider.autoDispose.family<GbActivityPage,GbActivityRequest>(
  (ref,request) async {
    bool sameOwner() {
      final session=ref.read(sessionProvider);
      return session is SessionSignedIn &&
        session.user.id==request.owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch==
          request.owner.authorizationEpoch;
    }
    if(!sameOwner())throw StateError('account_changed');
    final cancel=CancelToken();ref.onDispose(cancel.cancel);
    final result=await ref.watch(gbActivityTransportProvider)
      .page(limit:request.limit,cancellation:cancel);
    if(!sameOwner())throw StateError('account_changed');
    return result;
  });
