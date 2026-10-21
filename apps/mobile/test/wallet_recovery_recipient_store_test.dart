import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:masanawa/src/finance/wallet_pending_operation.dart';
import 'package:masanawa/src/finance/wallet_recipient_book.dart';
void main(){
 TestWidgetsFlutterBinding.ensureInitialized();
 setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
 test('recovery survives a new store, stays owner-scoped and cannot be replaced by a second payment',()async{
  const original={'operation':'withdraw','requestId':'request_00000000-0000-7000-8000-000000000001','providerCode':'btc','amount':'0.1'};
  const a=WalletPendingOperationStore('a');await a.save(original);
  expect(await const WalletPendingOperationStore('a').read(),original);
  expect(await const WalletPendingOperationStore('b').read(),isNull);
  await expectLater(a.save({...original,'requestId':'request_00000000-0000-7000-8000-000000000002'}),throwsStateError);
  await a.clear('another-reference');expect(await a.read(),isNotNull);
  await a.clear(original['requestId']!);expect(await a.read(),isNull);
 });
 test('recipient save/delete is explicit and cannot leak into another account',()async{
  const book=WalletRecipientBook('a');await book.save(userId:'recipient-a',accountNumber:'8123456789',name:'Amina');
  expect((await book.read()).single['userId'],'recipient-a');expect(await const WalletRecipientBook('b').read(),isEmpty);
  await book.remove('recipient-a');expect(await book.read(),isEmpty);
 });
}
