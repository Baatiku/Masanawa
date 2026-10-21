import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Device-local explicit shortcuts; never stores an amount, quote or approval.
class BillBeneficiaryBook{
 const BillBeneficiaryBook(this.owner,{this.storage=const FlutterSecureStorage()});
 final String owner;final FlutterSecureStorage storage;
 String get key=>'wallet.bill-beneficiaries.v1.$owner';
 static const fields={'categoryCode','billerCode','itemCode','customerId','currency','name'};
 static bool valid(Map value)=>value.keys.toSet().containsAll(fields)&&fields.every((k)=>value[k] is String&&(value[k] as String).isNotEmpty&&(value[k] as String).length<=180)&&value['currency']=='NGN';
 static String identity(Map value)=>jsonEncode([value['categoryCode'],value['billerCode'],value['itemCode'],value['customerId']]);
 Future<List<Map<String,String>>> read()async{
  final raw=await storage.read(key:key);if(raw==null)return[];
  if(raw.length>64000)throw const FormatException('Invalid saved bills');
  final rows=jsonDecode(raw);if(rows is! List||rows.length>50)throw const FormatException('Invalid saved bills');
  return[for(final row in rows)if(row is Map&&valid(row)){for(final k in fields)k:row[k] as String}];
 }
 Future<void> save(Map<String,String> value)async{
  if(owner.isEmpty||!valid(value))throw const FormatException('Invalid beneficiary');
  final rows=await read(),id=identity(value);
  await storage.write(key:key,value:jsonEncode([{for(final k in fields)k:value[k]},...rows.where((r)=>identity(r)!=id)].take(50).toList()));
 }
 Future<void> remove(Map<String,String> value)async{
  final rows=await read(),id=identity(value);await storage.write(key:key,value:jsonEncode(rows.where((r)=>identity(r)!=id).toList()));
 }
}
