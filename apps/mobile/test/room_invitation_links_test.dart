import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_invitation_links.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

const secret = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';

class _Journal implements RoomInvitationRequestStore {
  String? value;
  bool failRead = false, failWrite = false;
  final writes = <String?>[];
  @override
  Future<String?> read() async {
    if (failRead) throw StateError('storage');
    return value;
  }

  @override
  Future<void> write(String? key) async {
    if (failWrite) throw StateError('storage');
    writes.add(key);
    value = key;
  }
}

class _Api extends FakeCommunityApi {
  final records = <Map<String, dynamic>>[], keys = <String>[];
  bool loseResponse = false, failReads = false, oldProtocol = false;
  Completer<Map<String, dynamic>>? deferred;
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (method == 'GET') {
      if (failReads) throw StateError('outage');
      return {
        'issuanceVersion': oldProtocol ? null : 1,
        'items': records.map((r) => Map<String, dynamic>.from(r)).toList(),
      };
    }
    if (resource != 'invites/issue') throw StateError('unexpected_writer');
    final key = values['requestId'] as String;
    keys.add(key);
    if (deferred != null) return deferred!.future;
    final prior = records.where((r) => r['requestId'] == key);
    if (prior.isNotEmpty) return {...prior.first, 'replayed': true};
    final row = <String, dynamic>{
      'inviteId': 'invite_${records.length}',
      'requestId': key,
      'kind': 'code',
      'status': 'active',
      'expiresAt': '2026-10-24T12:00:00Z',
    };
    records.add(row);
    if (loseResponse) {
      loseResponse = false;
      throw StateError('response_lost_after_commit');
    }
    return {...row, 'token': secret, 'replayed': false};
  }

  @override
  Future<void> revoke(String id, String inviteId) async {
    records.singleWhere((r) => r['inviteId'] == inviteId)['status'] = 'revoked';
  }
}

Future<void> mount(
  WidgetTester tester,
  _Api api,
  _Journal journal, {
  Key? key,
  bool largeText = false,
}) async {
  var next = 0;
  await tester.pumpWidget(
    MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.linear(largeText ? 2 : 1)),
        child: child!,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: RoomInvitationLinks(
            key: key,
            api: api,
            roomId: 'room_1',
            store: journal,
            newRequestId: () => 'request-${++next}',
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

TextButton namedButton(WidgetTester tester, String label) =>
    tester.widget<TextButton>(
      find.ancestor(
        of: find.text(label),
        matching: find.byWidgetPredicate((widget) => widget is TextButton),
      ),
    );
void main() {
  testWidgets(
    'invitation code and recovery controls remain usable at 320dp and 200 percent text',
    (tester) async {
      tester.view.physicalSize = const Size(320, 640);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final api = _Api(), journal = _Journal();
      await mount(tester, api, journal, largeText: true);
      await tester.ensureVisible(find.text('Create invitation code'));
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.text('Copy invitation code'),
        180,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text(secret), findsOneWidget);
      expect(tester.takeException(), isNull);
      await tester.scrollUntilVisible(
        find.text('Revoke original invitation'),
        180,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text('Revoke original invitation'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'persists request before issuance and never stores the one-time code',
    (tester) async {
      final api = _Api(), journal = _Journal();
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(api.keys, ['request-1']);
      expect(journal.value, 'request-1');
      expect(journal.writes, ['request-1']);
      expect(journal.writes, isNot(contains(secret)));
      expect(find.text(secret), findsOneWidget);
      expect(find.text('Copy invitation code'), findsOneWidget);
      expect(find.text('Create invitation code'), findsNothing);
    },
  );
  testWidgets(
    'lost response retries the original grant and requires revoke before replacement',
    (tester) async {
      final api = _Api()..loseResponse = true, journal = _Journal();
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(find.textContaining('outcome is unknown'), findsOneWidget);
      expect(find.text('Create invitation code'), findsNothing);
      await tester.tap(find.text('Retry original invitation request'));
      await tester.pumpAndSettle();
      expect(api.keys, ['request-1', 'request-1']);
      expect(api.records, hasLength(1));
      expect(find.text(secret), findsNothing);
      await tester.tap(find.text('Revoke original invitation'));
      await tester.pumpAndSettle();
      expect(journal.value, isNull);
      expect(find.text('Create invitation code'), findsOneWidget);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(api.keys.last, 'request-2');
      expect(api.records, hasLength(2));
      expect(api.records.first['status'], 'revoked');
    },
  );
  testWidgets(
    'restart restores pending identity but cannot recover or redisplay its code',
    (tester) async {
      final api = _Api(), journal = _Journal();
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(find.text(secret), findsOneWidget);
      await mount(tester, api, journal, key: const ValueKey('restarted'));
      expect(find.text(secret), findsNothing);
      expect(find.text('Create invitation code'), findsNothing);
      expect(find.text('Revoke original invitation'), findsOneWidget);
      expect(api.keys, hasLength(1));
    },
  );
  testWidgets(
    'missing row in capped listing never clears an unresolved original',
    (tester) async {
      final api = _Api(), journal = _Journal()..value = 'older-than-page';
      await mount(tester, api, journal);
      expect(journal.value, 'older-than-page');
      expect(journal.writes, isEmpty);
      expect(find.text('Create invitation code'), findsNothing);
      expect(find.text('Retry original invitation request'), findsOneWidget);
    },
  );
  testWidgets(
    'revocation acknowledgement alone cannot unlock new issuance without readback',
    (tester) async {
      final api = _Api(), journal = _Journal();
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      api.failReads = true;
      await tester.tap(find.text('Revoke original invitation'));
      await tester.pumpAndSettle();
      expect(journal.value, 'request-1');
      expect(find.text('Create invitation code'), findsNothing);
      api.failReads = false;
      await tester.tap(find.text('Refresh invitations'));
      await tester.pumpAndSettle();
      expect(journal.value, isNull);
      expect(find.text('Create invitation code'), findsOneWidget);
    },
  );
  testWidgets(
    'storage failure prevents the first POST and can be retried safely',
    (tester) async {
      final api = _Api(), journal = _Journal()..failWrite = true;
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(api.keys, isEmpty);
      expect(find.textContaining('Could not save'), findsOneWidget);
      journal.failWrite = false;
      await tester.tap(find.text('Create invitation code'));
      await tester.pumpAndSettle();
      expect(api.keys, hasLength(1));
      expect(find.text(secret), findsOneWidget);
    },
  );
  testWidgets(
    'an unreadable request journal blocks issuance until recovery succeeds',
    (tester) async {
      final api = _Api(), journal = _Journal()..failRead = true;
      await mount(tester, api, journal);
      expect(find.byType(LinearProgressIndicator), findsNothing);
      expect(namedButton(tester, 'Create invitation code').onPressed, isNull);
      journal.failRead = false;
      await tester.tap(find.text('Retry invitation recovery'));
      await tester.pumpAndSettle();
      expect(
        namedButton(tester, 'Create invitation code').onPressed,
        isNotNull,
      );
    },
  );
  testWidgets(
    'older Gateway protocol never receives a potentially duplicating issuance request',
    (tester) async {
      final api = _Api()..oldProtocol = true, journal = _Journal();
      await mount(tester, api, journal);
      expect(namedButton(tester, 'Create invitation code').onPressed, isNull);
      expect(api.keys, isEmpty);
    },
  );
  testWidgets(
    'account API replacement clears a displayed code and rejects late original responses',
    (tester) async {
      final api = _Api()..deferred = Completer<Map<String, dynamic>>(),
          journal = _Journal();
      await mount(tester, api, journal);
      await tester.tap(find.text('Create invitation code'));
      await tester.pump();
      final replacement = _Api(), nextJournal = _Journal();
      await mount(tester, replacement, nextJournal);
      api.deferred!.complete({
        'inviteId': 'old-invite',
        'status': 'active',
        'replayed': false,
        'token': secret,
      });
      await tester.pumpAndSettle();
      expect(find.text(secret), findsNothing);
      expect(nextJournal.value, isNull);
      expect(replacement.keys, isEmpty);
    },
  );
  for (final status in ['accepted', 'expired', 'revoked']) {
    testWidgets(
      'server-confirmed $status original clears the journal without recreating a grant',
      (tester) async {
        final api = _Api(), journal = _Journal()..value = 'finished';
        api.records.add({
          'inviteId': 'done',
          'kind': 'code',
          'requestId': 'finished',
          'status': status,
        });
        await mount(tester, api, journal);
        expect(journal.value, isNull);
        expect(api.keys, isEmpty);
        expect(find.text('Revoke'), findsNothing);
        expect(
          namedButton(tester, 'Create invitation code').onPressed,
          isNotNull,
        );
      },
    );
  }
}
