import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masanawa/src/finance/bill_beneficiary_book.dart';
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
 test('saved bill shortcuts stay owner scoped and retain no quote, amount or approval',()async{
  const book=BillBeneficiaryBook('one');
  const value={'categoryCode':'AIRTIME','billerCode':'fixture','itemCode':'airtime','customerId':'08030000000','currency':'NGN','name':'Airtime'};
  await book.save({...value,'quoteId':'must-not-persist','amount':'500','approval':'must-not-persist'});
  expect((await book.read()).single,value);expect(await const BillBeneficiaryBook('two').read(),isEmpty);
  await book.save({...value,'name':'New label'});expect(await book.read(),hasLength(1));
  await book.remove(value);expect(await book.read(),isEmpty);
 });
}
