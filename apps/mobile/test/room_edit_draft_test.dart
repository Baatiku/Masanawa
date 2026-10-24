import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_edit_draft.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

class _CountingStore extends SecureRoomEditDraftStore {
  _CountingStore(super.api, super.roomId, super.kind, super.target);
  final hold = Completer<void>();
  int count = 0;
  @override
  Future<void> write(String value, String? expected) async {
    count++;
    if (count == 1) await hold.future;
    await super.write(value, expected);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const base = RoomEditDraft('post', 'p', 0, 'Original', '');
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));
  test(
    'a burst coalesces pending writes while preserving the final text',
    () async {
      final api = AccountBoundRoomCommunityApi(
        delegate: FakeCommunityApi(),
        ownerAccount: 'a',
        currentAccount: () => 'a',
      );
      final store = _CountingStore(api, 'room', 'post', 'p');
      final session = RoomEditDraftSession(store, base);
      await session.load();
      final first = session.update('First');
      await Future<void>.delayed(Duration.zero);
      expect(store.count, 1);
      final burst = [for (var i = 0; i < 50; i++) session.update('Edit $i')];
      store.hold.complete();
      await Future.wait([first, ...burst]);
      expect(store.count, lessThanOrEqualTo(2));
      expect(RoomEditDraft.decode((await store.read())!).text, 'Edit 49');
    },
  );
  test('queued draft saves survive the editor and cannot clear or overwrite a newer editor', () async {
    final api = AccountBoundRoomCommunityApi(
      delegate: FakeCommunityApi(),
      ownerAccount: 'a',
      currentAccount: () => 'a',
    );
    RoomEditDraftSession session() => RoomEditDraftSession(
      SecureRoomEditDraftStore(api, 'room', 'post', 'p'),
      base,
    );
    final first = session();
    await first.load();
    await Future.wait([first.update('First'), first.update('Latest')]);
    final second = session();
    expect((await second.load())!.text, 'Latest');
    await second.update('Newer editor');
    await expectLater(first.update('Stale overwrite'), throwsStateError);
    await expectLater(first.clear(), throwsStateError);
    expect((await session().load())!.text, 'Newer editor');
  });
  test('secure drafts isolate account, Room and target; old authorization cannot write or clear', () async {
    String? owner = 'a';
    final api = AccountBoundRoomCommunityApi(
      delegate: FakeCommunityApi(),
      ownerAccount: 'a',
      currentAccount: () => owner,
    );
    final a = RoomEditDraftSession(
      SecureRoomEditDraftStore(api, 'room', 'post', 'p'),
      base,
    );
    await a.load();
    await a.update('Private edit');
    expect(
      await SecureRoomEditDraftStore(api, 'other', 'post', 'p').read(),
      isNull,
    );
    expect(
      await SecureRoomEditDraftStore(api, 'room', 'post', 'other').read(),
      isNull,
    );
    owner = 'b';
    await expectLater(a.update('Late old edit'), throwsStateError);
    await expectLater(a.clear(), throwsStateError);
    final b = AccountBoundRoomCommunityApi(
      delegate: FakeCommunityApi(),
      ownerAccount: 'b',
      currentAccount: () => owner,
    );
    expect(
      await SecureRoomEditDraftStore(b, 'room', 'post', 'p').read(),
      isNull,
    );
    owner = 'a';
    expect(
      RoomEditDraft.decode(
        (await SecureRoomEditDraftStore(api, 'room', 'post', 'p').read())!,
      ).text,
      'Private edit',
    );
  });
  test('draft schema rejects mutation authority, wrong targets, malformed revisions and oversized text', () async {
    for (final raw in [
      '{}',
      '{"v":1,"kind":"post","target":"p","revision":-1,"original":"a","text":"b"}',
      base.encode().replaceFirst('"v":1', '"v":1,"requestId":"must-not-send"'),
      RoomEditDraft('reply', 'p', 0, 'x', 'x' * 2001).encode(),
    ])
      expect(() => RoomEditDraft.decode(raw), throwsFormatException);
  });
}
