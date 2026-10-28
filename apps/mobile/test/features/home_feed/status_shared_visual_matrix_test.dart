import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/feed_api.dart';
import 'package:masanawa/src/features/home_feed/feed_inline_media_card.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';
import 'package:masanawa/src/features/home_feed/status_post_body.dart';
import 'package:masanawa/src/features/home_feed/status_post_boost_action.dart';
import 'package:masanawa/src/features/home_feed/status_post_social_proof.dart';
import 'package:masanawa/src/features/home_feed/status_post_action_row.dart';
import 'package:masanawa/src/localization/masanawa_localization.dart';

const _id = '7d0e6c21-8c4f-48cc-a92a-8c53a74b61e5';

FeedPost _fixture() => FeedPost.fromJson({
  'id': _id,
  'author': {'type': 'masana', 'id': 'official', 'displayName': 'Masanawa'},
  'kind': 'text',
  'body': List.filled(24, 'A real approved Home update.').join(' '),
  'media': <String>[],
  'publishedAt': '2026-10-28T00:00:00Z',
  'likeCount': 12,
  'commentCount': 4,
  'viewerLiked': false,
  'verifiedViewCount': 0,
  'boostEligible': true,
});

class _StaleImageGrants implements FeedMediaApi {
  final first = Completer<FeedMediaGrant>();
  final second = Completer<FeedMediaGrant>();
  int requests = 0;
  @override Future<FeedMediaGrant> getGrant(String postId, String mediaId) {
    requests++;
    return requests == 1 ? first.future : second.future;
  }
}

class _OfflineImageGrant implements FeedMediaApi {
  int attempts=0;
  @override Future<FeedMediaGrant> getGrant(String postId,String mediaId) async {
    attempts++;
    throw DioException(
      requestOptions:RequestOptions(path:'/v1/posts/$postId/media/$mediaId'),
      type:DioExceptionType.connectionError,
    );
  }
}

void main() {
  testWidgets('shared post body, counts and Boost survive 320dp/200% Hausa, RTL, dark and reduced motion',
      (tester) async {
    await tester.binding.setSurfaceSize(const Size(320, 700));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final post = _fixture();
    final boosted = <String>[];
    for (final ha in [false, true]) {
      for (final dark in [false, true]) {
        for (final rtl in [false, true]) {
          await tester.pumpWidget(MaterialApp(
            locale: Locale(ha ? 'ha' : 'en'),
            localizationsDelegates: MasanawaLocalization.delegates,
            supportedLocales: MasanawaLocalization.supportedLocales,
            theme: dark ? ThemeData.dark() : ThemeData.light(),
            home: Directionality(
              textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
              child: MediaQuery(
                data: const MediaQueryData(
                  disableAnimations: true,
                  textScaler: TextScaler.linear(2),
                ),
                child: Scaffold(body: SingleChildScrollView(
                  child: Column(children: [
                    StatusPostBody(accountKey: 'owner', postId: post.id,
                      body: post.body),
                    StatusPostSocialProof(post: post),
                    StatusPostBoostAction(post: post, enabled: true,
                      onBoost: boosted.add),
                    StatusPostActionRow(post:post,
                      onLike:(){},onComment:(){},onShare:(){}),
                  ]),
                )),
              ),
            ),
          ));
          await tester.pumpAndSettle();
          expect(find.text(ha ? '0 kallo' : '0 views'), findsOneWidget);
          expect(find.text(ha ? 'Ƙara yaɗawa' : 'Boost'), findsOneWidget);
          final boost = find.byKey(const ValueKey('status-boost-$_id'));
          expect(tester.getSize(boost).height, greaterThanOrEqualTo(48));
          final socialActions=find.descendant(
            of:find.byType(StatusPostActionRow),
            matching:find.byType(TextButton),
          );
          expect(socialActions,findsNWidgets(3));
          expect(find.byTooltip(ha?'Raba':'Share'),findsOneWidget);
          expect(find.byTooltip(ha?'Sharhi':'Comment'),findsOneWidget);
          for(final action in socialActions.evaluate()){
            expect(action.size!.height,greaterThanOrEqualTo(48));
          }
          await tester.tap(boost);
          expect(boosted.last, _id);
          expect(tester.takeException(), isNull);
          await tester.pumpWidget(const SizedBox.shrink());
        }
      }
    }
    expect(boosted, hasLength(8));
  });

  testWidgets('late first-account image grant cannot replace second-account approved original',
      (tester) async {
    final api = _StaleImageGrants();
    Widget view(String owner) => MaterialApp(home: Scaffold(body:
      FeedInlineMediaCard(
        api: api,
        accountKey: owner,
        postId: 'original-post',
        mediaId: 'original-media',
        mediaCount: 1,
        renderer: (grant) => Text(grant.url.host),
      ),
    ));
    await tester.pumpWidget(view('first-owner'));
    await tester.pump();
    await tester.pumpWidget(view('second-owner'));
    await tester.pump();
    expect(api.requests, 2);
    api.first.complete(FeedMediaGrant(
      mediaId: 'original-media', kind: 'image',
      url: Uri.parse('https://first-owner.example.test/image'),
      expiresAt: DateTime.now().add(const Duration(minutes: 2)),
    ));
    await tester.pump();
    expect(find.text('first-owner.example.test'), findsNothing);
    api.second.complete(FeedMediaGrant(
      mediaId: 'original-media', kind: 'image',
      url: Uri.parse('https://second-owner.example.test/image'),
      expiresAt: DateTime.now().add(const Duration(minutes: 2)),
    ));
    await tester.pumpAndSettle();
    expect(find.text('second-owner.example.test'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('offline authorized-image failure is retryable, semantic and never a fake original',
      (tester) async {
    final semantics=tester.ensureSemantics();
    final offline=_OfflineImageGrant();
    await tester.pumpWidget(MaterialApp(home:Scaffold(body:
      FeedInlineMediaCard(
        api:offline,
        accountKey:'authorized-owner',
        postId:'post',mediaId:'image',mediaCount:1,
        renderer:(_)=>const Text('Never present an offline original'),
      ),
    )));
    await tester.pumpAndSettle();
    expect(find.text('Image unavailable · retry preview'),findsOneWidget);
    expect(find.text('Never present an offline original'),findsNothing);
    expect(find.byType(CircularProgressIndicator),findsNothing);
    expect(find.bySemanticsLabel(RegExp('Image unavailable')),findsOneWidget);
    expect(find.byTooltip('Image unavailable · retry preview'),findsNothing,
      reason:'Retry is a visible labelled button, not a hidden icon');
    expect(offline.attempts,1);
    await tester.tap(find.text('Image unavailable · retry preview'));
    await tester.pumpAndSettle();
    expect(offline.attempts,2,
      reason:'Retry asks for a fresh scoped grant instead of displaying stale bytes');
    expect(find.text('Never present an offline original'),findsNothing);
    expect(tester.takeException(),isNull);
    // Flutter verifies active semantics handles before addTearDown callbacks.
    semantics.dispose();
  });
}
