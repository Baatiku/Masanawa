import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Recovery metadata only: no credential/approval, and never an offline queue.
class WalletPendingOperationStore {
  const WalletPendingOperationStore(this.owner,{this.storage=const FlutterSecureStorage()});
  final String owner;
  final FlutterSecureStorage storage;
  String get key=>'wallet.crypto.pending.v1.$owner';
  static bool valid(Map<String,dynamic> row)=>
    const ['withdraw','convert'].contains(row['operation']) &&
    row['requestId'] is String && RegExp(r'^request_[a-zA-Z0-9-]{16,100}$').hasMatch(row['requestId']) &&
    row['providerCode'] is String && RegExp(r'^[a-zA-Z0-9_-]{1,40}$').hasMatch(row['providerCode']) &&
    row['amount'] is String && RegExp(r'^[0-9]{1,30}(\.[0-9]{1,18})?$').hasMatch(row['amount']);
  Future<Map<String,dynamic>?> read() async {
    final raw=await storage.read(key:key);
    if(raw==null)return null;
    final value=jsonDecode(raw);
    if(value is! Map)throw const FormatException('Invalid recovery reference');
    final row=value.cast<String,dynamic>();
    if(!valid(row))throw const FormatException('Invalid recovery reference');
    return row;
  }
  Future<void> save(Map<String,dynamic> row) async {
    if(owner.isEmpty||!valid(row))throw const FormatException('Invalid recovery reference');
    final prior=await read();
    if(prior!=null && prior['requestId']!=row['requestId'])throw StateError('Check the previous operation first.');
    await storage.write(key:key,value:jsonEncode(row));
  }
  Future<void> clear(String requestId)async{
    final prior=await read();
    if(prior?['requestId']==requestId)await storage.delete(key:key);
  }
}
