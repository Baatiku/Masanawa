import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/calls/mb_call_intent.dart';

class _Store implements MbCallIntentStore {
  String? value;
  bool fail = false;
  @override
  Future<String?> read() async => value;
  @override
  Future<void> write(String? next) async {
    if (fail) throw StateError('Encrypted storage unavailable');
    value = next;
  }
}

void main() {
  test('persist original operation before dispatch; unknown remains locked', () async {
    final store = _Store();
    final journal = MbCallIntentJournal(store);
    await journal.prepare('owner-1','character-1','original-call-key');
    expect((await journal.forOwner('owner-1'))?.submitted,false);
    expect(await journal.forOwner('owner-2'),isNull);
    await journal.markSubmitted('owner-1','original-call-key');
    expect((await MbCallIntentJournal(store).forOwner('owner-1'))?.submitted,true);
    await expectLater(journal.prepare('owner-1','character-2','another-call-key'),throwsStateError);
    await expectLater(journal.clear('owner-2','original-call-key'),throwsStateError);
    await journal.clear('owner-1','original-call-key');
    expect(await journal.forOwner('owner-1'),isNull);
  });
  test('failed encrypted write blocks call mutation', () async {
    final store = _Store()..fail = true;
    final journal = MbCallIntentJournal(store);
    await expectLater(journal.prepare('owner-1','character-1','original-call-key'),throwsStateError);
    expect(await journal.forOwner('owner-1'),isNull);
  });
}
