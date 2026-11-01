import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/state/ai_chat_state.dart';

void main() {
  test(
    'pending optional backup never blocks the canonical inference turn',
    () async {
      final unresolved = Completer<void>();
      var requestMade = false;
      startOptionalChatMediaBackup(() {
        requestMade = true;
        return unresolved.future;
      });
      expect(requestMade, isTrue);
      // The inference path continues even though auxiliary backup is unresolved.
      expect(unresolved.isCompleted, isFalse);
      unresolved.completeError(StateError('Backup endpoint offline'));
      await Future<void>.delayed(Duration.zero);
    },
  );

  test('synchronous backup failure is non-fatal', () {
    expect(
      () => startOptionalChatMediaBackup(() => throw StateError('Offline')),
      returnsNormally,
    );
  });
}
