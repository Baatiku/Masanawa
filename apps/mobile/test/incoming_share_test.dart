import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/share_intake/incoming_share.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Map<String, Object?> payload({
    String token = 'share-001',
    String text = 'A private message',
    List<Map<String, Object?>> items = const [],
  }) => {'token': token, 'text': text, 'items': items};

  test('plain text and exact supported media get bounded metadata only', () {
    final draft = IncomingShareDraft.decode(payload(items: [
      {'name': 'portrait.jpg', 'mime': 'image/jpeg', 'size': 150},
      {'name': 'clip.mp4', 'mime': 'video/mp4', 'size': 8000},
      {'name': 'contract.pdf', 'mime': 'application/pdf', 'size': null},
    ]))!;
    expect(draft.text, 'A private message');
    expect(draft.items.map((item) => item.kind), ['image', 'video', 'doc']);
    expect(draft.warning, isNull);
  });

  test('unsupported MIME, oversize, empty and excessive items fail closed', () {
    for (final items in [
      [{'name': 'bad.gif', 'mime': 'image/gif', 'size': 100}],
      [{'name': 'huge.pdf', 'mime': 'application/pdf', 'size': 8 * 1024 * 1024 + 1}],
      List.generate(5, (i) => {'name': 'photo$i.jpg', 'mime': 'image/jpeg', 'size': 10}),
    ]) {
      expect(IncomingShareDraft.decode(payload(items: items))!.warning, isNotNull);
    }
    expect(IncomingShareDraft.decode(payload(text: ''))!.warning, isNotNull);
    expect(IncomingShareDraft.decode(payload(text: List.filled(10001, 'x').join()))!.warning, isNotNull);
    expect(IncomingShareDraft.decode({'token': '', 'text': 'hi', 'items': []}), isNull);
    expect(IncomingShareDraft.decode({'token': 't', 'text': 12, 'items': []}), isNull);
  });

  test('share token and authorization epoch fence reads and account switches', () async {
    const channel = MethodChannel('masanawa/incoming_share');
    final messenger = TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    var current = payload(items: [
      {'name': 'photo.png', 'mime': 'image/png', 'size': 64},
    ]);
    final cleared = <String?>[];
    messenger.setMockMethodCallHandler(channel, (call) async {
      if (call.method == 'peek') return current;
      if (call.method == 'read') return 'aGVsbG8=';
      if (call.method == 'clear') {
        cleared.add((call.arguments as Map)['token'] as String?);
        return null;
      }
      throw MissingPluginException();
    });
    final shares = IncomingShareService.instance;
    try {
      shares.updateAuthorization('account-a', 5);
      await shares.initialize();
      expect(shares.authorized('account-a', 5, 'share-001'), isTrue);
      expect(shares.authorized('account-b', 5, 'share-001'), isFalse);
      expect(await shares.read('share-001', 0), 'aGVsbG8=');

      shares.updateAuthorization('account-a', 6);
      await Future<void>.delayed(Duration.zero);
      expect(shares.pending, isNull);
      expect(shares.authorized('account-a', 6, 'share-001'), isFalse);
      expect(cleared, contains('share-001'));
      await expectLater(shares.read('share-001', 0), throwsStateError);

      current = payload(token: 'share-002');
      await shares.refresh();
      expect(shares.authorized('account-a', 6, 'share-002'), isTrue);
      shares.updateAuthorization('account-b', 7);
      await Future<void>.delayed(Duration.zero);
      expect(shares.pending, isNull);
    } finally {
      await shares.clear();
      messenger.setMockMethodCallHandler(channel, null);
    }
  });
}
