import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/rooms/room_moderation_screen.dart';

import 'room_community_screen_test.dart' show FakeCommunityApi;

const own = 'moderation/cases',
    flagged = 'reply-reports/summary',
    queue = 'moderation/appeals',
    audit = 'reply-reports/reviews';

class _Pages extends FakeCommunityApi {
  _Pages({this.prefix = ''}) {
    role = 'owner';
  }
  final String prefix;
  final reads = <Map<String, dynamic>>[];
  bool fail = false, denied = false, repeated = false, legacy = false;
  Completer<Map<String, dynamic>>? pending;
  Map<String, dynamic> row(String path, int n) => switch (path) {
    own => {
      'reviewId': 'case_$n',
      'targetKind': 'reply',
      'publicReason': '${prefix}Case $n',
      'canAppeal': false,
    },
    flagged => {
      'replyId': 'reply_$n',
      'excerpt': '${prefix}Reported $n',
      'reportCount': 1,
    },
    queue => {
      'appealId': 'appeal_$n',
      'targetKind': 'reply',
      'reason': '${prefix}Appeal $n',
      'status': 'upheld',
      'canReview': false,
    },
    _ => {
      'reviewId': 'review_$n',
      'decision': 'dismissed',
      'reviewedAt': '${prefix}Audit $n',
    },
  };
  @override
  Future<Map<String, dynamic>> request(
    String id,
    String method,
    String resource,
    Map<String, dynamic> values,
  ) async {
    reads.add({'room': id, 'resource': resource, ...values});
    final older = values['cursor'] != null;
    if (older) {
      if (pending != null) return pending!.future;
      if (denied)
        throw DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 403),
        );
      if (fail) throw StateError('outage');
    }
    return {
      'moderationVersion': 1,
      if (!legacy) 'pageVersion': 1,
      'items': older
          ? [row(resource, 1), row(resource, 2)]
          : [row(resource, 1)],
      'nextCursor': legacy
          ? null
          : older && !repeated
          ? null
          : '$resource-next',
    };
  }
}

Future<void> mount(
  WidgetTester tester,
  _Pages api, {
  String roomId = 'room_1',
  bool narrow = false,
}) async {
  if (narrow) {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  }
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
      home: RoomModerationScreen(api: api, roomId: roomId),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> tap(WidgetTester tester, String label) async {
  await tester.scrollUntilVisible(
    find.text(label),
    180,
    scrollable: find.byType(Scrollable).first,
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text(label));
  await tester.pumpAndSettle();
}

void main() {
  for (final entry in {
    own: 'removal cases',
    flagged: 'reported replies',
    queue: 'author appeals',
    audit: 'review history',
  }.entries) {
    testWidgets(
      '${entry.value} page appends and deduplicates its own independent collection',
      (tester) async {
        final api = _Pages();
        await mount(tester, api);
        if (entry.key == audit) await tap(tester, 'Reply review history');
        await tap(tester, 'Load more ${entry.value}');
        final pages = api.reads.where((r) => r['cursor'] != null).toList();
        expect(pages, [
          {
            'room': 'room_1',
            'resource': entry.key,
            'cursor': '${entry.key}-next',
          },
        ]);
        expect(find.text('Load more ${entry.value}'), findsNothing);
        expect(tester.takeException(), isNull);
      },
    );
  }
  testWidgets('transient page failure retains original cursor and can retry', (
    tester,
  ) async {
    final api = _Pages()..fail = true;
    await mount(tester, api);
    await tap(tester, 'Load more removal cases');
    expect(find.text('Case 1'), findsOneWidget);
    api.fail = false;
    await tap(tester, 'Retry removal cases');
    expect(find.text('Case 2'), findsOneWidget);
    expect(
      api.reads.where((r) => r['cursor'] != null).map((r) => r['cursor']),
      [own + '-next', own + '-next'],
    );
  });
  testWidgets('denied page clears all cached moderation details and actions', (
    tester,
  ) async {
    final api = _Pages()..denied = true;
    await mount(tester, api);
    await tap(tester, 'Load more removal cases');
    expect(find.text('Case 1'), findsNothing);
    expect(find.text('Reported 1'), findsNothing);
    expect(find.text('Appeal 1'), findsNothing);
    expect(
      find.text('Moderation access changed. Refresh its current status.'),
      findsOneWidget,
    );
    expect(find.text('No removal cases available.'), findsNothing);
  });
  testWidgets('demoted manager cannot continue a manager queue', (
    tester,
  ) async {
    final api = _Pages();
    await mount(tester, api);
    api.role = 'member';
    await tap(tester, 'Load more reported replies');
    expect(api.reads.where((r) => r['cursor'] != null), isEmpty);
    expect(find.text('Reported replies'), findsNothing);
    expect(find.text('Case 1'), findsNothing);
  });
  testWidgets(
    'repeated cursor is rejected without appending a misleading page',
    (tester) async {
      final api = _Pages()..repeated = true;
      await mount(tester, api);
      await tap(tester, 'Load more removal cases');
      expect(find.text('Case 2'), findsNothing);
      expect(find.text('Retry removal cases'), findsOneWidget);
    },
  );
  testWidgets(
    'legacy first-page responses remain usable without invented older pages',
    (tester) async {
      final api = _Pages()..legacy = true;
      await mount(tester, api);
      expect(find.text('Case 1'), findsOneWidget);
      expect(find.text('Load more removal cases'), findsNothing);
    },
  );
  testWidgets('old account page cannot enter replacement API', (tester) async {
    final api = _Pages(prefix: 'Old ')
      ..pending = Completer<Map<String, dynamic>>();
    await mount(tester, api);
    await tester.tap(find.text('Load more removal cases'));
    await tester.pump();
    await mount(tester, _Pages(prefix: 'New '));
    api.pending!.complete({
      'moderationVersion': 1,
      'pageVersion': 1,
      'items': [api.row(own, 2)],
      'nextCursor': null,
    });
    await tester.pumpAndSettle();
    expect(find.text('New Case 1'), findsOneWidget);
    expect(find.text('Old Case 2'), findsNothing);
  });
  testWidgets('late page is discarded after Room route replacement', (
    tester,
  ) async {
    final api = _Pages()..pending = Completer<Map<String, dynamic>>();
    await mount(tester, api);
    await tester.tap(find.text('Load more removal cases'));
    await tester.pump();
    await mount(tester, api, roomId: 'room_2');
    api.pending!.complete({
      'moderationVersion': 1,
      'pageVersion': 1,
      'items': [api.row(own, 2)],
      'nextCursor': null,
    });
    await tester.pumpAndSettle();
    expect(find.text('Case 2'), findsNothing);
  });
  testWidgets('320dp 200 percent RTL retains manual paging', (tester) async {
    final api = _Pages();
    await mount(tester, api, narrow: true);
    await tap(tester, 'Load more removal cases');
    expect(tester.takeException(), isNull);
    expect(api.reads.any((r) => r['cursor'] != null), isTrue);
  });
}
