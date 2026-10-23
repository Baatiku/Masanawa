import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_community_screen.dart';
import 'package:masanawa/src/features/rooms/room_moderation_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

class _Api extends FakeCommunityApi {
  bool denied = false, loseResponse = false;
  Completer<Map<String, dynamic>>? pending;
  final writes = <Map<String, dynamic>>[];
  final cases = <Map<String, dynamic>>[
    {
      'reviewId': 'review_1',
      'targetId': 'reply_1',
      'targetKind': 'reply',
      'publicReason': 'Room rule violated',
      'canAppeal': true,
      'appeal': null,
    },
  ];
  final reports = <Map<String, dynamic>>[
    {
      'replyId': 'reply_1',
      'postId': 'post_1',
      'excerpt': 'Reported comment',
      'reportCount': 2,
    },
  ];
  final appeals = <Map<String, dynamic>>[
    {
      'appealId': 'appeal_1',
      'reviewId': 'review_1',
      'targetKind': 'reply',
      'reason': 'Please review context',
      'removalReason': 'Room rule violated',
      'status': 'pending',
      'canReview': true,
    },
  ];
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    if (denied)
      throw DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 403),
      );
    if (method == 'GET')
      return resource == 'moderation/cases'
          ? {'moderationVersion': 1, 'items': cases}
          : resource == 'moderation/appeals'
          ? {'moderationVersion': 1, 'items': appeals}
          : {'items': resource.endsWith('summary') ? reports : []};
    writes.add({'resource': resource, ...values});
    if (pending != null) return pending!.future;
    if (resource.startsWith('reply-reports/')) {
      reports.clear();
      return {'reviewed': true, 'decision': values['decision']};
    }
    if (resource.endsWith('/appeal')) {
      cases.single['canAppeal'] = false;
      cases.single['appeal'] = {'status': 'pending'};
    } else {
      appeals.single['status'] = values['decision'];
      appeals.single['canReview'] = false;
      appeals.single['publicReason'] = values['publicReason'];
    }
    if (loseResponse) {
      loseResponse = false;
      throw StateError('lost_after_commit');
    }
    return {
      'moderationVersion': 1,
      'appeal': {'appealId': 'appeal_1', 'status': 'pending'},
    };
  }
}

Future<void> mount(WidgetTester tester, _Api api, {bool narrow = false}) async {
  await tester.pumpWidget(
    MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.linear(narrow ? 2 : 1)),
        child: Directionality(
          textDirection: narrow ? TextDirection.rtl : TextDirection.ltr,
          child: child!,
        ),
      ),
      home: RoomModerationScreen(api: api, roomId: 'room_1'),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> open(WidgetTester tester, String label) async {
  await tester.scrollUntilVisible(
    find.text(label),
    180,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.tap(find.text(label));
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 350));
}

Future<void> confirm(WidgetTester tester) async {
  await tester.enterText(
    find.byType(TextField).last,
    'Please consider the context.',
  );
  await tester.tap(find.text('Confirm'));
  await tester.pumpAndSettle();
}

class _RepliesApi extends FakeCommunityApi {
  @override
  Future<List<Map<String, dynamic>>> items(
    String id,
    String collection,
  ) async => collection == 'timeline'
      ? [
          {
            'id': 'reply_1',
            'parentId': 'post_1',
            'body': 'Visible reply',
            'authorId': 'bob',
          },
        ]
      : [];
}

void main() {
  testWidgets(
    'member appeals their own case explicitly and sees pending, not restored',
    (tester) async {
      final api = _Api();
      await mount(tester, api);
      expect(find.text('Reported replies'), findsNothing);
      await open(tester, 'Appeal removal');
      expect(api.writes, isEmpty);
      await confirm(tester);
      expect(api.writes.single['resource'], 'moderation/cases/review_1/appeal');
      expect(api.writes.single['reason'], 'Please consider the context.');
      expect(api.writes.single['requestId'], isNotEmpty);
      expect(find.text('Awaiting review'), findsOneWidget);
      expect(find.text('Content restored'), findsNothing);
      expect(find.text('Appeal removal'), findsNothing);
    },
  );
  testWidgets('cancel does not submit or change the removal', (tester) async {
    final api = _Api();
    await mount(tester, api);
    await open(tester, 'Appeal removal');
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(api.writes, isEmpty);
    expect(find.text('Appeal removal'), findsOneWidget);
  });
  testWidgets(
    'reply report action uses its own target, then canonical queue readback',
    (tester) async {
      final api = _Api()..role = 'owner';
      await mount(tester, api);
      await open(tester, 'Remove reply');
      await confirm(tester);
      expect(
        api.writes.single,
        containsPair('resource', 'reply-reports/reply_1/review'),
      );
      expect(api.writes.single['decision'], 'removed');
      expect(api.writes.single['publicReason'], isNotEmpty);
      expect(find.text('No reported replies to review.'), findsOneWidget);
    },
  );
  for (final decision in ['restored', 'upheld']) {
    testWidgets(
      'manager confirms $decision and displays recorded author-facing response',
      (tester) async {
        final api = _Api()..role = 'owner';
        await mount(tester, api);
        await open(
          tester,
          decision == 'restored' ? 'Restore content' : 'Uphold removal',
        );
        await confirm(tester);
        expect(
          api.writes.single['resource'],
          'moderation/appeals/appeal_1/review',
        );
        expect(api.writes.single['decision'], decision);
        expect(
          find.text(
            decision == 'restored' ? 'Content restored' : 'Removal upheld',
          ),
          findsOneWidget,
        );
        expect(find.text('Restore content'), findsNothing);
      },
    );
  }
  testWidgets(
    'lost committed appeal response blocks new action until canonical refresh',
    (tester) async {
      final api = _Api()..loseResponse = true;
      await mount(tester, api);
      await open(tester, 'Appeal removal');
      await confirm(tester);
      expect(find.textContaining('outcome is unconfirmed'), findsOneWidget);
      expect(
        tester
            .widget<TextButton>(
              find.widgetWithText(TextButton, 'Appeal removal'),
            )
            .onPressed,
        isNull,
      );
      await tester.tap(find.text('Refresh moderation status'));
      await tester.pumpAndSettle();
      expect(find.text('Awaiting review'), findsOneWidget);
      expect(api.writes, hasLength(1));
    },
  );
  testWidgets('permission loss scrubs private cases and queue', (tester) async {
    final api = _Api()..role = 'owner';
    await mount(tester, api);
    api.denied = true;
    await tester.tap(find.text('Refresh moderation status'));
    await tester.pumpAndSettle();
    expect(find.text('Room rule violated'), findsNothing);
    expect(find.text('Reported comment'), findsNothing);
    expect(find.text('Please review context'), findsNothing);
  });
  testWidgets(
    'API replacement while confirming cannot send the previous account case',
    (tester) async {
      final first = _Api(), second = _Api()..cases.clear();
      await mount(tester, first);
      await open(tester, 'Appeal removal');
      await mount(tester, second);
      await confirm(tester);
      expect(first.writes, isEmpty);
      expect(second.writes, isEmpty);
    },
  );
  testWidgets('late old account write cannot replace new account data', (
    tester,
  ) async {
    final first = _Api()..pending = Completer<Map<String, dynamic>>(),
        second = _Api()..cases.clear();
    await mount(tester, first);
    await open(tester, 'Appeal removal');
    await tester.enterText(find.byType(TextField), 'Context');
    await tester.tap(find.text('Confirm'));
    await tester.pump();
    await mount(tester, second);
    first.pending!.complete({
      'moderationVersion': 1,
      'appeal': {'appealId': 'old'},
    });
    await tester.pumpAndSettle();
    expect(find.text('No removal cases available.'), findsOneWidget);
    expect(find.text('Room rule violated'), findsNothing);
  });
  testWidgets(
    '320dp, 200 percent text and RTL keep review controls reachable',
    (tester) async {
      tester.view.physicalSize = const Size(320, 900);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await mount(tester, _Api()..role = 'owner', narrow: true);
      await open(tester, 'Restore content');
      expect(find.text('Restore content?'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
  testWidgets(
    'visible human replies can be reported independently from the parent post',
    (tester) async {
      final api = _RepliesApi();
      await tester.pumpWidget(
        MaterialApp(
          home: RoomCommunityScreen(api: api, roomId: 'room_1'),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text('Report reply'));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField).last, 'Reply concern');
      await tester.tap(find.text('Submit report'));
      await tester.pumpAndSettle();
      expect(api.actions, contains('reply-reports'));
      expect(api.sent.single['targetId'], 'reply_1');
      expect(find.text('Reply reported for review'), findsOneWidget);
    },
  );
}
