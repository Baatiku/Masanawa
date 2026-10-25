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

class GbActivityAmounts {
  const GbActivityAmounts(this.received,this.spent,this.net);
  final int received,spent,net;
  factory GbActivityAmounts.read(Object? raw) {
    if(raw is! Map)throw const FormatException('Invalid posted totals');
    final received=raw['received'],spent=raw['spent'],net=raw['net'];
    if(received is! int||spent is! int||net is! int||received<0||spent<0||
       net!=received-spent)throw const FormatException('Invalid posted units');
    return GbActivityAmounts(received,spent,net);
  }
}

class GbActivityPeriodSummary {
  const GbActivityPeriodSummary({required this.days,required this.fromAt,
    required this.toAt,required this.mb,required this.ngn});
  final int days;
  final DateTime fromAt,toAt;
  final GbActivityAmounts mb,ngn;

  factory GbActivityPeriodSummary.read(Object? raw,int expectedDays) {
    if(raw is! Map||raw['periodDays']!=expectedDays||
       (expectedDays!=7&&expectedDays!=30))
      throw const FormatException('Unverified activity period');
    final from=raw['fromAt'],to=raw['toAt'];
    final fromAt=from is String?DateTime.tryParse(from):null;
    final toAt=to is String?DateTime.tryParse(to):null;
    if(fromAt==null||toAt==null||!fromAt.isUtc||!toAt.isUtc||
       !toAt.isAfter(fromAt)||
       toAt.difference(fromAt)!=Duration(days:expectedDays))
      throw const FormatException('Invalid activity window');
    return GbActivityPeriodSummary(days:expectedDays,fromAt:fromAt,toAt:toAt,
      mb:GbActivityAmounts.read(raw['MB']),ngn:GbActivityAmounts.read(raw['NGN']));
  }
}

abstract class GbActivityTransport {
  Future<GbActivityPage> page({required int limit,String? cursor,
    String unit='all',
    CancelToken? cancellation});
  Future<GbActivityItem> detail({required String entryId,
    CancelToken? cancellation});
  Future<GbActivityPeriodSummary> summary({required int days,
    CancelToken? cancellation});
}

class DioGbActivityTransport implements GbActivityTransport {
  const DioGbActivityTransport(this.dio);
  final Dio dio;
  @override
  Future<GbActivityPage> page({required int limit,String? cursor,
    String unit='all',
    CancelToken? cancellation}) async {
    if (limit<1 || limit>30 ||
        !const {'all','MB','NGN'}.contains(unit) ||
        (cursor!=null && (cursor.isEmpty || cursor.length>1024 ||
          !RegExp(r'^[A-Za-z0-9_-]+$').hasMatch(cursor)))) {
      throw const FormatException('Invalid wallet activity request');
    }
    final response=await dio.get<Object?>(
      '/v1/gb/wallet/activity',queryParameters:{'limit':limit,'unit':unit,
        if(cursor!=null)'cursor':cursor},cancelToken:cancellation,
      options:Options(headers:const {'Cache-Control':'no-store'}));
    return GbActivityPage.read(response.data);
  }

  @override
  Future<GbActivityItem> detail({required String entryId,
    CancelToken? cancellation}) async {
    if(!RegExp(r'^(mb:\d+|ngn:[A-Za-z0-9_:.-]{1,160})$').hasMatch(entryId)) {
      throw const FormatException('Invalid transaction reference');
    }
    final result=await dio.get<Object?>(
      '/v1/gb/wallet/activity/${Uri.encodeComponent(entryId)}',
      cancelToken:cancellation,
      options:Options(headers:const {'Cache-Control':'no-store'}));
    if(result.data is! Map || (result.data as Map)['item']==null) {
      throw const FormatException('Transaction is unavailable');
    }
    final item=GbActivityItem.read((result.data as Map)['item']);
    if(item.id!=entryId)throw const FormatException('Mismatched transaction');
    return item;
  }

  @override
  Future<GbActivityPeriodSummary> summary({required int days,
    CancelToken? cancellation}) async {
    if(days!=7&&days!=30)throw const FormatException('Invalid activity period');
    final response=await dio.get<Object?>('/v1/gb/wallet/activity/summary',
      queryParameters:{'days':days},cancelToken:cancellation,
      options:Options(headers:const {'Cache-Control':'no-store'}));
    return GbActivityPeriodSummary.read(response.data,days);
  }
}

final gbActivityTransportProvider=Provider<GbActivityTransport>((ref)=>
  DioGbActivityTransport(ref.watch(apiClientProvider).dio));

typedef GbActivityRequest=({GbWalletOwner owner,int limit,String unit});
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
      .page(limit:request.limit,unit:request.unit,cancellation:cancel);
    if(!sameOwner())throw StateError('account_changed');
    return result;
  });

typedef GbActivityDetailRequest=({GbWalletOwner owner,String entryId});
final gbActivityDetailProvider=FutureProvider.autoDispose.family<GbActivityItem,GbActivityDetailRequest>(
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
    final item=await ref.watch(gbActivityTransportProvider).detail(
      entryId:request.entryId,cancellation:cancel);
    if(!sameOwner())throw StateError('account_changed');
    return item;
  });

typedef GbActivitySummaryRequest=({GbWalletOwner owner,int days});
final gbActivitySummaryProvider=FutureProvider.autoDispose.family<GbActivityPeriodSummary,GbActivitySummaryRequest>(
  (ref,request) async {
    final session=ref.read(sessionProvider);
    bool sameOwner(){
      final active=ref.read(sessionProvider);
      return active is SessionSignedIn && active.user.id==request.owner.accountId &&
        ref.read(sessionProvider.notifier).authorizationEpoch==
          request.owner.authorizationEpoch;
    }
    if(session is! SessionSignedIn||!sameOwner())throw StateError('account_changed');
    final cancel=CancelToken();ref.onDispose(cancel.cancel);
    final result=await ref.watch(gbActivityTransportProvider).summary(
      days:request.days,cancellation:cancel);
    if(!sameOwner())throw StateError('account_changed');
    return result;
  });
