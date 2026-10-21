import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Explicit, device-local shortcuts. Every use requires new server inquiry.
class WalletRecipientBook {
  const WalletRecipientBook(this.owner,{this.storage=const FlutterSecureStorage()});
  final String owner;
  final FlutterSecureStorage storage;
  String get key=>'wallet.recipients.v1.$owner';
  Future<List<Map<String,String>>> read()async{
    final raw=await storage.read(key:key);
    if(raw==null)return [];
    final list=jsonDecode(raw);
    if(list is! List||list.length>50)throw const FormatException('Invalid saved recipients');
    return [for(final item in list)if(item is Map&&item['userId'] is String&&item['accountNumber'] is String&&RegExp(r'^8[0-9]{9}$').hasMatch(item['accountNumber'])&&item['name'] is String)
      {'userId':item['userId'],'accountNumber':item['accountNumber'],'name':((item['name'] as String).length>100?(item['name'] as String).substring(0,100):item['name'] as String)}];
  }
  Future<void> save({required String userId,required String accountNumber,required String name})async{
    if(owner.isEmpty||userId.isEmpty||!RegExp(r'^8[0-9]{9}$').hasMatch(accountNumber))throw const FormatException('Recipient unavailable');
    final rows=await read();
    await storage.write(key:key,value:jsonEncode([{'userId':userId,'accountNumber':accountNumber,'name':name.length>100?name.substring(0,100):name},...rows.where((r)=>r['userId']!=userId)].take(50).toList()));
  }
  Future<void> remove(String userId)async{
    final rows=await read();await storage.write(key:key,value:jsonEncode(rows.where((r)=>r['userId']!=userId).toList()));
  }
}
