import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_api.dart';
import 'package:masanawa/src/features/rooms/room_edit_draft.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const base = RoomEditDraft('post', 'p', 0, 'Original', '');
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));
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
