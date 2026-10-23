import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_human_compose_screen.dart';

FeedPost _published(String author) => FeedPost(
  id: '381026c2-9d56-47b1-b73d-1784e24e41e2',
  authorMasanaId: '',
  authorType: 'human',
  authorId: author,
  authorHandle: 'self',
  authorName: 'Me',
  kind: 'text',
  body: 'Public post',
  mediaIds: const [],
  publishedAt: DateTime.utc(2026, 10, 23),
  likeCount: 0,
  commentCount: 0,
  liked: false,
  saved: false,
);

class _Publisher implements HumanStatusPublisher {
  _Publisher({required this.accountId});
  final String accountId;
  final requests = <({String body, String key})>[];
  bool failOnce = false;
  @override
  Future<FeedPost> publishHumanText(String body, String key) async {
    requests.add((body: body, key: key));
    if (failOnce) {
      failOnce = false;
      throw StateError('ambiguous network response');
    }
    return _published(accountId);
  }
}

Future<void> _mount(
  WidgetTester tester,
  _Publisher sender, {
  bool Function()? accountCurrent,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => TextButton(
            onPressed: () => Navigator.push<bool>(
              context,
              MaterialPageRoute<bool>(
                builder: (_) => StatusHumanComposeScreen(
                  accountKey: sender.accountId,
                  publisher: sender,
                  isAccountCurrent: accountCurrent ?? () => true,
                ),
              ),
            ),
            child: const Text('Create'),
          ),
        ),
      ),
    ),
  );
  await tester.tap(find.text('Create'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets(
    'human text preview is explicitly Public and publishing uses own account',
    (tester) async {
      final publisher = _Publisher(accountId: 'fan-one');
      await _mount(tester, publisher);
      await tester.enterText(find.byType(TextField), 'Hello neighbours');
      await tester.pump();
      await tester.tap(find.text('Preview'));
      await tester.pumpAndSettle();
      expect(find.text('Public Status preview'), findsOneWidget);
      expect(find.textContaining('Audience: Public'), findsOneWidget);
      expect(publisher.requests, isEmpty);
      await tester.tap(find.text('Edit'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Publish'));
      await tester.pumpAndSettle();
      expect(publisher.requests, hasLength(1));
      expect(publisher.requests.single.body, 'Hello neighbours');
      expect(publisher.requests.single.key, startsWith('human-status-'));
      expect(find.text('Create'), findsOneWidget);
    },
  );

  testWidgets(
    'unknown response retains original request key and text on retry',
    (tester) async {
      final publisher = _Publisher(accountId: 'fan-one')..failOnce = true;
      await _mount(tester, publisher);
      await tester.enterText(find.byType(TextField), 'Uncertain post');
      await tester.pump();
      await tester.tap(find.text('Publish'));
      await tester.pumpAndSettle();
      expect(find.textContaining('Publication not confirmed'), findsOneWidget);
      expect(find.text('Uncertain post'), findsOneWidget);
      await tester.tap(find.text('Retry publish'));
      await tester.pumpAndSettle();
      expect(publisher.requests, hasLength(2));
      expect(publisher.requests[0].key, publisher.requests[1].key);
      expect(publisher.requests[0].body, publisher.requests[1].body);
    },
  );

  testWidgets('no post allowed after account authorization switches', (
    tester,
  ) async {
    final publisher = _Publisher(accountId: 'fan-one');
    var authorized = false;
    await _mount(tester, publisher, accountCurrent: () => authorized);
    expect(find.textContaining('Your account changed'), findsOneWidget);
    expect(find.text('Publish'), findsNothing);
    expect(publisher.requests, isEmpty);
  });

  testWidgets('empty or whitespace-only posts cannot publish', (tester) async {
    final publisher = _Publisher(accountId: 'fan-one');
    await _mount(tester, publisher);
    expect(
      tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
      isNull,
    );
    await tester.enterText(find.byType(TextField), '   ');
    await tester.pump();
    expect(
      tester.widget<FilledButton>(find.byType(FilledButton)).onPressed,
      isNull,
    );
    expect(publisher.requests, isEmpty);
  });
}
