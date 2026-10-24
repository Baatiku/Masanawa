import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';
import 'package:masanawa/src/human_chat/search_highlight.dart';

class SearchJourneyTransport extends HumanCommunicationTransport {
  SearchJourneyTransport() : super(ApiClient(dio: Dio()));
  final events = StreamController<HumanJson>.broadcast();
  final queries = <String>[];
  bool offline = false;
  @override
  Stream<HumanJson> stream(int after) => events.stream;

  @override
  Future<HumanJson> request(String method, String path,
      {Object? data, Map<String,dynamic>? query}) async {
    if (path == '/conversations/thread') {
      return {
        'id':'thread','peer':{'handle':'alice','displayName':'Alice'},
        'state':'accepted','initiator':false,
        'updatedAt':'2026-10-24T10:00:00Z',
      };
    }
    if (path == '/conversations/thread/messages') {
      final q=(query?['query'] as String? ?? '').toLowerCase();
      queries.add(q);
      if (offline) {
        throw DioException(
          requestOptions:RequestOptions(path:path),
          type:DioExceptionType.connectionError,
        );
      }
      final candidates=<HumanJson>[
        {'id':'first','text':'Alpha and ALPHA are both matches',
          'mine':false,'deleted':false,'createdAt':'2026-10-24T08:00:00Z'},
        {'id':'second','text':'Another unrelated message',
          'mine':true,'deleted':false,'createdAt':'2026-10-24T09:00:00Z'},
        {'id':'deleted','text':'',
          'mine':false,'deleted':true,'createdAt':'2026-10-24T10:00:00Z'},
      ];
      return {
        'items':q.isEmpty ? candidates
          : candidates.where((m)=>m['deleted'] != true
              && (m['text'] as String).toLowerCase().contains(q)).toList(),
        'nextCursor':null,
      };
    }
    if (path == '/conversations/thread/read') return {'ok':true};
    if (path == '/events') return {'cursor':0,'items':[]};
    throw StateError('Unexpected $method $path');
  }
  Future<void> cleanup() async {
    cancel();
    await events.close();
  }
}

void main() {
  setUp(() => FlutterSecureStorage.setMockInitialValues({}));

  testWidgets('highlights repeated case-insensitive matches without losing original text', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: HumanSearchHighlight(
        text:'Alpha and ALPHA are both matches',
        query:'alpha',
      )),
    ));
    final widget=tester.widget<Text>(find.byType(Text).last);
    final span=widget.textSpan! as TextSpan;
    final parts=span.children!.cast<TextSpan>();
    expect(parts.where((p)=>p.style?.backgroundColor != null).length, 2);
    expect(parts.map((p)=>p.text).join(), 'Alpha and ALPHA are both matches');
  });

  testWidgets('search shows authorized matches, count and tombstones stay out of search', (tester) async {
    final t=SearchJourneyTransport();
    await tester.pumpWidget(ProviderScope(overrides:[
      humanAccountProvider.overrideWithValue('bob'),
      humanCommunicationTransportProvider.overrideWithValue(t),
    ], child: const MaterialApp(home:HumanChatScreen(conversationId:'thread'))));
    await tester.pumpAndSettle();
    expect(find.text('Another unrelated message'),findsOneWidget);
    expect(find.text('Message deleted'),findsOneWidget);
    await tester.tap(find.byKey(const Key('human-conversation-search-toggle')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('human-message-search-input')),'ALPHA');
    await tester.tap(find.byKey(const Key('human-message-search-run')));
    await tester.pumpAndSettle();
    expect(t.queries.last,'alpha');
    expect(find.text('1 matching messages'),findsOneWidget);
    expect(find.text('Another unrelated message'),findsNothing);
    expect(find.text('Message deleted'),findsNothing);
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds:5));
    await tester.pump();
    await t.cleanup();
  });

  testWidgets('clear and close restore original unfiltered thread and keep input bounded', (tester) async {
    final t=SearchJourneyTransport();
    await tester.pumpWidget(ProviderScope(overrides:[
      humanAccountProvider.overrideWithValue('bob'),
      humanCommunicationTransportProvider.overrideWithValue(t),
    ], child:const MaterialApp(home:HumanChatScreen(conversationId:'thread'))));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('human-conversation-search-toggle')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('human-message-search-input')),'missing');
    await tester.tap(find.byKey(const Key('human-message-search-run')));
    await tester.pumpAndSettle();
    expect(find.text('No matching messages. Try another search.'),findsOneWidget);
    expect(find.text('0 matching messages'),findsOneWidget);
    await tester.tap(find.byKey(const Key('human-message-search-clear')));
    await tester.pumpAndSettle();
    expect(find.text('Another unrelated message'),findsOneWidget);
    expect(find.text('0 matching messages'),findsNothing);

    await tester.enterText(find.byKey(const Key('human-message-search-input')),'alpha');
    await tester.tap(find.byKey(const Key('human-message-search-run')));
    await tester.pumpAndSettle();
    expect(find.text('1 matching messages'),findsOneWidget);
    await tester.tap(find.byKey(const Key('human-conversation-search-toggle')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('human-message-search-input')),findsNothing);
    expect(find.text('Another unrelated message'),findsOneWidget);
    expect(t.queries.last,'');
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds:5));
    await tester.pump();
    await t.cleanup();
  });

  testWidgets('offline search never claims no matches and Refresh recovers original search', (tester) async {
    final t=SearchJourneyTransport();
    await tester.pumpWidget(ProviderScope(overrides:[
      humanAccountProvider.overrideWithValue('bob'),
      humanCommunicationTransportProvider.overrideWithValue(t),
    ], child:const MaterialApp(home:HumanChatScreen(conversationId:'thread'))));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('human-conversation-search-toggle')));
    await tester.pumpAndSettle();
    t.offline=true;
    await tester.enterText(find.byKey(const Key('human-message-search-input')),'alpha');
    await tester.tap(find.byKey(const Key('human-message-search-run')));
    await tester.pumpAndSettle();
    expect(find.textContaining('Could not load search results'), findsOneWidget);
    expect(find.text('No matching messages. Try another search.'),findsNothing);
    t.offline=false;
    await tester.tap(find.text('Refresh'));
    await tester.pumpAndSettle();
    expect(find.text('1 matching messages'),findsOneWidget);
    expect(find.textContaining('Could not load search results'),findsNothing);
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds:5));
    await tester.pump();
    await t.cleanup();
  });
}
