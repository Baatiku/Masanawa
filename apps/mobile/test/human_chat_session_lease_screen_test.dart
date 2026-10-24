import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

class LeaseConversationTransport extends HumanCommunicationTransport {
  LeaseConversationTransport(this.content) : super(ApiClient(dio: Dio()));
  final String content;
  final events = StreamController<HumanJson>.broadcast();
  Completer<HumanJson>? pendingRefresh;
  final paths = <String>[];

  @override
  Stream<HumanJson> stream(int after) => events.stream;

  @override
  Future<HumanJson> request(String method, String path,
      {Object? data, Map<String, dynamic>? query}) async {
    paths.add('$method $path');
    if (path == '/conversations/thread') {
      return {
        'id':'thread',
        'peer':{'handle':'peer','displayName':'Private peer'},
        'state':'accepted',
        'initiator':false,
        'updatedAt':'2026-10-24T09:00:00Z',
      };
    }
    if (path == '/conversations/thread/messages') {
      if (pendingRefresh != null) return pendingRefresh!.future;
      return {
        'items':[{
          'id':'incoming',
          'text':content,
          'mine':false,
          'deleted':false,
          'createdAt':'2026-10-24T09:00:00Z',
        }],
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
  setUp(() {
    FlutterSecureStorage.setMockInitialValues({});
  });

  testWidgets('same account with fresh transport remounts and removes old private message rows', (tester) async {
    final before = LeaseConversationTransport('Previous session private text');
    final after = LeaseConversationTransport('New authorized session');
    final lease = StateProvider<HumanCommunicationTransport>((ref) => before);
    final container = ProviderContainer(overrides:[
      humanAccountProvider.overrideWithValue('alice'),
      humanCommunicationTransportProvider.overrideWith(
        (ref) => ref.watch(lease),
      ),
    ]);
    await tester.pumpWidget(UncontrolledProviderScope(
      container:container,
      child:const MaterialApp(home:HumanChatScreen(conversationId:'thread')),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Previous session private text'),findsOneWidget);
    expect(find.text('New authorized session'),findsNothing);

    before.cancel(); // Old lease revoked upon new authorization epoch.
    container.read(lease.notifier).state=after;
    await tester.pumpAndSettle();
    expect(find.text('Previous session private text'),findsNothing);
    expect(find.text('New authorized session'),findsOneWidget);
    expect(find.text('Private peer'),findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    // VoiceNoteRecorder.close has an existing delayed temporary-file cleanup.
    // Advance fake time after all remounted recorder instances are disposed.
    await tester.pump(const Duration(seconds: 5));
    await tester.pump();
    container.dispose();
    await before.cleanup();
    await after.cleanup();
  });

  testWidgets('same account fresh session discards old in-flight private history response', (tester) async {
    final before = LeaseConversationTransport('Old session');
    final after = LeaseConversationTransport('Fresh session');
    final lease = StateProvider<HumanCommunicationTransport>((ref)=>before);
    final container = ProviderContainer(overrides:[
      humanAccountProvider.overrideWithValue('alice'),
      humanCommunicationTransportProvider.overrideWith(
        (ref)=>ref.watch(lease),
      ),
    ]);
    await tester.pumpWidget(UncontrolledProviderScope(
      container:container,
      child:const MaterialApp(home:HumanChatScreen(conversationId:'thread')),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Old session'),findsOneWidget);

    before.pendingRefresh=Completer<HumanJson>();
    before.events.add({'sequence':1,'conversationId':'thread'});
    await tester.pump();
    before.cancel();
    container.read(lease.notifier).state=after;
    await tester.pumpAndSettle();
    expect(find.text('Fresh session'),findsOneWidget);
    before.pendingRefresh!.complete({
      'items':[{
        'id':'late','text':'Forbidden late previous session','mine':false,
        'deleted':false,'createdAt':'2026-10-24T09:00:00Z',
      }],
      'nextCursor':null,
    });
    await tester.pumpAndSettle();
    expect(find.text('Forbidden late previous session'),findsNothing);
    expect(find.text('Fresh session'),findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    // VoiceNoteRecorder.close has an existing delayed temporary-file cleanup.
    // Advance fake time after all remounted recorder instances are disposed.
    await tester.pump(const Duration(seconds: 5));
    await tester.pump();
    container.dispose();
    await before.cleanup();
    await after.cleanup();
  });
}
