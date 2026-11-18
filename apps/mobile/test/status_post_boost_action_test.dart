import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_boost_action.dart';

FeedPost post(String id, {bool boostEligible = true}) => FeedPost(
  id: id,
  authorMasanaId: 'platform-masana',
  kind: 'text',
  body: 'A published, reviewed post',
  mediaIds: const [],
  publishedAt: DateTime.utc(2026, 10, 28),
  likeCount: 0,
  commentCount: 0,
  liked: false,
  saved: false,
  boostEligible: boostEligible,
);

void main() {
  testWidgets('Boost is a 48dp secondary action and sends only the current post',
      (tester) async {
    final tapped = <String>[];
    Future<void> render(String id) => tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Center(child: SizedBox(width: 280,
        child: StatusPostBoostAction(
          post: post(id),
          enabled: true,
          onBoost: tapped.add,
        )))),
    ));

    await render('first');
    expect(find.byKey(const ValueKey('status-boost-first')), findsOneWidget);
    expect(tester.getSize(find.byKey(const ValueKey('status-boost-first'))).height,
        greaterThanOrEqualTo(48));
    await tester.tap(find.text('Boost'));
    expect(tapped, ['first']);

    await render('another');
    expect(find.byKey(const ValueKey('status-boost-first')), findsNothing);
    await tester.tap(find.text('Boost'));
    expect(tapped, ['first', 'another']);
  });

  testWidgets('Unsafe or unfunded eligibility and disabled capability hide Boost',
      (tester) async {
    Future<void> render({required bool eligible, required bool enabled,
        ValueChanged<String>? onBoost}) => tester.pumpWidget(MaterialApp(
      home: Scaffold(body: StatusPostBoostAction(
        post: post('hidden', boostEligible: eligible),
        enabled: enabled,
        onBoost: onBoost,
      )),
    ));

    await render(eligible: false, enabled: true, onBoost: (_) {});
    expect(find.text('Boost'), findsNothing);
    await render(eligible: true, enabled: false, onBoost: (_) {});
    expect(find.text('Boost'), findsNothing);
    await render(eligible: true, enabled: true);
    expect(find.text('Boost'), findsNothing);
  });
}
