import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';

void main() {
  test('uncertain upload reuses ID only for same name and exact bytes', () {
    final original = roomMediaRetryIdentity('room-request-1', 'voice.m4a', [1, 2, 3]);
    expect(roomMediaRetryMatches(original, roomMediaRetryIdentity(
      'room-request-1', 'voice.m4a', [1, 2, 3])), isTrue);
    expect(roomMediaRetryMatches(original, roomMediaRetryIdentity(
      'room-request-1', 'voice.m4a', [1, 9, 3])), isFalse);
    expect(roomMediaRetryMatches(original, roomMediaRetryIdentity(
      'room-request-2', 'voice.m4a', [1, 2, 3])), isFalse);
    expect(roomMediaRetryMatches(original, roomMediaRetryIdentity(
      'room-request-1', 'other.m4a', [1, 2, 3])), isFalse);
    expect(original.keys, containsAll(['requestId', 'name', 'size', 'sha256']));
    expect(original.containsKey('dataBase64'), isFalse);
  });
}
