import 'dart:convert';
import 'package:flutter/services.dart';
import 'country_codes.dart';

class PhoneSubdivision {
  const PhoneSubdivision(this.code,this.name);
  final String code,name;
}
class CountrySubdivisions {
  CountrySubdivisions._(this._data);
  final Map<String,List<PhoneSubdivision>> _data;
  static const version=kContactGeographyVersion;
  static Future<CountrySubdivisions> load() async {
    // Offline-by-default, pinned to the same generator/version as Gateway.
    // No network, GPS, or residence inference on signup.
    final bytes=await rootBundle.load('assets/contact_geography.json');
    return fromJson(utf8.decode(bytes.buffer.asUint8List(
      bytes.offsetInBytes,bytes.lengthInBytes)));
  }
  static CountrySubdivisions fromJson(String raw){
    final decoded=jsonDecode(raw) as Map<String,dynamic>;
    if(decoded['version']!=version)throw const FormatException('Country geography version mismatch');
    final regions=<String,List<PhoneSubdivision>>{};
    for(final record in decoded['countries'] as List<dynamic>){
      final country=record as Map<String,dynamic>;
      final iso=country['iso'] as String;
      final matching=kPhoneCountries.where((c)=>c.iso==iso).firstOrNull;
      if(matching==null||matching.dialCode!=country['dialCode']||regions.containsKey(iso))
        throw const FormatException('Unsupported country calling code');
      regions[iso]=(country['subdivisions'] as List<dynamic>).map((entry){
        final row=entry as Map<String,dynamic>;
        final code=row['code'] as String;
        final name=row['name'] as String;
        if(!code.startsWith('$iso-')||name.isEmpty)throw const FormatException('Invalid ISO 3166-2 subdivision');
        return PhoneSubdivision(code,name);
      }).toList(growable:false);
    }
    if(regions.length!=kPhoneCountries.length)throw const FormatException('Incomplete country data');
    return CountrySubdivisions._(regions);
  }
  List<PhoneSubdivision> forCountry(String iso)=>_data[iso]??const [];
}
