import 'dart:convert';
import 'package:flutter/services.dart';

class PhoneSubdivision {
  const PhoneSubdivision(this.code,this.name);
  final String code,name;
}
class CountrySubdivisions {
  CountrySubdivisions._(this._data);
  final Map<String,List<PhoneSubdivision>> _data;
  static Future<CountrySubdivisions> load() async => fromJson(
    await rootBundle.loadString('assets/country_subdivisions.json'));
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
