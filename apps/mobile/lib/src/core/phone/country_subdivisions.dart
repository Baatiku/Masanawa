import 'dart:convert';
import 'package:flutter/services.dart';

class PhoneSubdivision {
  const PhoneSubdivision(this.code,this.name);
  final String code,name;
}
class CountrySubdivisions {
  CountrySubdivisions._(this._data);
  final Map<String,List<PhoneSubdivision>> _data;
  static Future<CountrySubdivisions> load() async {
    // This JSON is over Flutter's loadString isolate threshold. Decode the
    // bundled asset directly so fake-async auth widget tests and startup do
    // not wait on an out-of-band compute isolate.
    final bytes=await rootBundle.load('assets/country_subdivisions.json');
    return fromJson(utf8.decode(bytes.buffer.asUint8List(
      bytes.offsetInBytes,bytes.lengthInBytes)));
  }
  static CountrySubdivisions fromJson(String raw){
    final decoded=jsonDecode(raw) as Map<String,dynamic>;
    final regions=<String,List<PhoneSubdivision>>{};
    for(final country in decoded.entries){
      regions[country.key]=(country.value as List<dynamic>).map((entry){
        final row=entry as Map<String,dynamic>;
        return PhoneSubdivision(row['code'] as String,row['name'] as String);
      }).toList(growable:false);
    }
    return CountrySubdivisions._(regions);
  }
  List<PhoneSubdivision> forCountry(String iso)=>_data[iso]??const [];
}
