import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/features/home_feed/status_post_body.dart';

void main() {
  const longBody =
      'A long Masana explanation about privacy, language, the community and '
      'why each paragraph deserves a clear preview. '
      'Every listener should be able to read the whole teaching before moving '
      'on to another update. '
      'This example is deliberately longer than five compact lines so that '
      'the expansion is visible and can be tested with larger text.';

  testWidgets('feed has a separate accessible expansion without navigation',
      (tester) async {
    var parentTaps = 0;
    Future<void> render(String account, String post) => tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: SizedBox(
              width: 260,
              child: InkWell(
                onTap: () => parentTaps++,
                child: StatusPostBody(
                  accountKey: account,
                  postId: post,
                  body: longBody,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await render('fan1', 'post1');
    expect(find.text('See more'), findsOneWidget);
    Text body() => tester.widget<Text>(find.text(longBody));
    expect(body().maxLines, 5);
    await tester.tap(find.text('See more'));
    await tester.pump();
    expect(parentTaps, 0);
    expect(body().maxLines, isNull);
    expect(find.text('See less'), findsOneWidget);
    await tester.ensureVisible(find.text('See less'));
    await tester.tap(find.text('See less'));
    await tester.pump();
    expect(body().maxLines, 5);
    await tester.ensureVisible(find.text('See more'));
    await tester.tap(find.text('See more'));
    await tester.pump();
    await render('fan2', 'post1');
    expect(body().maxLines, 5);
    await tester.ensureVisible(find.text('See more'));
    await tester.tap(find.text('See more'));
    await tester.pump();
    await render('fan2', 'post2');
    expect(body().maxLines, 5);
  });

  testWidgets('detail is complete and Saved stays short', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(
      body: Column(children: [
        StatusPostBody(accountKey: 'a', postId: '1', body: longBody,
          mode: StatusPostBodyMode.detail),
        StatusPostBody(accountKey: 'a', postId: '1', body: longBody,
          mode: StatusPostBodyMode.saved),
      ]),
    )));
    final texts = tester.widgetList<Text>(find.text(longBody)).toList();
    expect(texts.map((text) => text.maxLines), [null, 4]);
    expect(find.text('See more'), findsNothing);
  });

  testWidgets('narrow 200%-text RTL feed expands without overflow',
      (tester) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(2)),
        child: Directionality(textDirection: TextDirection.rtl, child: child!),
      ),
      home: const Scaffold(body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(12), child: StatusPostBody(
          accountKey: 'a', postId: 'b', body: longBody,
        )),
      )),
    ));
    await tester.pumpAndSettle();
    expect(find.text('See more'), findsOneWidget);
    await tester.ensureVisible(find.text('See more'));
    await tester.tap(find.text('See more'));
    await tester.pumpAndSettle();
    expect(find.text('See less'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
