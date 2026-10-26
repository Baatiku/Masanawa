import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'gb_data_catalogue.dart';

/// Persisted *before* the first purchase POST. A lost HTTP response is not
/// permission to dispatch a second provider call, even after an app restart.
class GbPendingDataPurchase {
  const GbPendingDataPurchase({required this.idempotencyKey,
    required this.bundleId,required this.version,required this.recipientPhone,
    required this.costMb});
  final String idempotencyKey,bundleId,version,recipientPhone;
  final int costMb;

  factory GbPendingDataPurchase.fromJson(Object? raw) {
    if(raw is! Map)throw const FormatException('Invalid pending data purchase');
    final v=Map<String,dynamic>.from(raw);
    final key=v['idempotencyKey'],bundleId=v['bundleId'],version=v['version'];
    final phone=v['recipientPhone'],cost=v['costMb'];
    if(key is! String||!RegExp(r'^redeem_[a-f0-9]{48}$').hasMatch(key)||
       bundleId is! String||bundleId.length<3||bundleId.length>260||
       version is! String||version.isEmpty||version.length>128||
       phone is! String||normalizeNigerianDataPhone(phone)!=phone||
       cost is! int||cost<1000||cost>1000000||cost%1000!=0)
      throw const FormatException('Invalid pending data purchase');
    return GbPendingDataPurchase(idempotencyKey:key,bundleId:bundleId,
      version:version,recipientPhone:phone,costMb:cost);
  }
  Map<String,Object> toJson()=>{'idempotencyKey':idempotencyKey,
    'bundleId':bundleId,'version':version,'recipientPhone':recipientPhone,
    'costMb':costMb};
}

/// Only the signed-in owner resolves its own encrypted record. A stable
/// account-keyed slot survives fresh authorization without exposing a record
/// under another user's slot.
class GbDataPendingStore {
  const GbDataPendingStore();
  static const _storage=FlutterSecureStorage();
  String _slot(String accountId)=>
    'gb-data-original-v1-${sha256.convert(utf8.encode(accountId))}';
  Future<GbPendingDataPurchase?> read(String accountId) async {
    final value=await _storage.read(key:_slot(accountId));
    return value==null?null:GbPendingDataPurchase.fromJson(jsonDecode(value));
  }
  Future<void> write(String accountId,GbPendingDataPurchase pending)=>
    _storage.write(key:_slot(accountId),value:jsonEncode(pending.toJson()));
  Future<void> clear(String accountId)=>_storage.delete(key:_slot(accountId));
}

final gbDataPendingStoreProvider=Provider<GbDataPendingStore>(
  (ref)=>const GbDataPendingStore());
