import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/phone/country_codes.dart';
import 'package:masanawa/src/core/phone/country_subdivisions.dart';

void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 test('offline bundled ISO 3166-2 registry matches the shared country version',()async{
   final regions=await CountrySubdivisions.load();
   expect(CountrySubdivisions.version,kContactGeographyVersion);
   expect(regions.forCountry('NG').length,37);
   expect(regions.forCountry('NG').any((s)=>s.code=='NG-FC'),isTrue);
   expect(regions.forCountry('GH').length,16);
   expect(regions.forCountry('ZZ'),isEmpty);
 });
 test('corrupt or out-of-date metadata cannot be presented as authoritative',(){
   expect(()=>CountrySubdivisions.fromJson('{"version":"old","countries":[]}'),
       throwsFormatException);
   expect(()=>CountrySubdivisions.fromJson('{"version":"$kContactGeographyVersion","countries":[]}'),
       throwsFormatException);
 });
}
