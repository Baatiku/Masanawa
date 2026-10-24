import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/human_chat.dart';

class EditJourneyTransport extends HumanCommunicationTransport {
  EditJourneyTransport() : super(ApiClient(dio:Dio()));
  String text = 'Initial human message';
  String? editedAt;
  int editVersion=0;
  bool failInfo = false;
  int patches = 0;
  final posted = <HumanJson>[];
  final events = StreamController<HumanJson>.broadcast();

  @override
  Stream<HumanJson> stream(int after) => events.stream;

  @override
  Future<HumanJson> request(String method,String path,
      {Object? data,Map<String,dynamic>? query}) async{
    if(path == '/conversations/thread') {
      return {
        'id':'thread',
        'peer':{'handle':'bob','displayName':'Bob'},
        'state':'accepted','initiator':false,
        'updatedAt':'2026-10-24T09:00:00Z',
      };
    }
    if(path=='/conversations/thread/messages' && method=='GET'){
      return {
        'items':[
          {'id':'msg','text':text,'mine':true,'deleted':false,
            'createdAt':'2026-10-24T09:00:00Z','editedAt':editedAt,'editVersion':editVersion,
            'deliveryStatus':'sent'},
        ],
        'nextCursor':null,
      };
    }
    if(path=='/conversations/thread/messages/msg/info' && method=='GET'){
      if(failInfo) {
        throw DioException(requestOptions:RequestOptions(path:path),
          type:DioExceptionType.connectionError);
      }
      return {
        'id':'msg','conversationId':'thread','text':text,
        'createdAt':'2026-10-24T09:00:00.000Z',
        'deliveredAt':null,'readAt':null,'editedAt':editedAt,
        'deliveryStatus':'sent',
      };
    }
    if(path=='/conversations/thread/messages/msg' && method=='PATCH'){
      final body=Map<String,dynamic>.from(data as Map);
      posted.add(body);
      patches++;
      text=body['text'] as String;
      editedAt='2026-10-24T09:01:00.000Z';
      editVersion++;
      return {
        'id':'msg','text':text,'editedAt':editedAt,
        'conversationId':'thread',
      };
    }
    if(path=='/events')return {'cursor':0,'items':[]};
    throw StateError('Unexpected $method $path');
  }

  Future<void> finish()async {
    cancel();
    await events.close();
  }
}

Future<void> pumpChat(WidgetTester tester,EditJourneyTransport transport)async{
  await tester.pumpWidget(ProviderScope(overrides:[
    humanAccountProvider.overrideWithValue('alice'),
    humanCommunicationTransportProvider.overrideWithValue(transport),
  ],child:const MaterialApp(home:HumanChatScreen(conversationId:'thread'))));
  await tester.pumpAndSettle();
}

Future<void> cleanup(WidgetTester tester,EditJourneyTransport transport)async{
  await tester.pumpWidget(const SizedBox());
  await tester.pump(const Duration(seconds:5));
  await tester.pump();
  await transport.finish();
}

void main(){
  setUp(()=>FlutterSecureStorage.setMockInitialValues({}));
  testWidgets('own message Edit saves server-confirmed revision and Info does not fabricate read ticks',(tester)async{
    final transport=EditJourneyTransport();
    await pumpChat(tester,transport);
    expect(find.text('Initial human message'),findsOneWidget);
    await tester.longPress(find.text('Initial human message'));
    await tester.pumpAndSettle();
    expect(find.text('Edit'),findsOneWidget);
    expect(find.text('Info'),findsOneWidget);
    await tester.tap(find.text('Edit'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('human-edit-message-input')),'Corrected human text');
    await tester.tap(find.byKey(const Key('human-edit-message-save')));
    await tester.pumpAndSettle();
    expect(transport.patches,1);
    expect(transport.posted.single['text'],'Corrected human text');
    expect(find.text('Corrected human text'),findsOneWidget);
    expect(find.textContaining('edited'),findsWidgets);

    await tester.longPress(find.text('Corrected human text'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Info'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Sent · 2026-10-24T09:00'),findsOneWidget);
    expect(find.text('Delivered · Not confirmed'),findsOneWidget);
    expect(find.text('Read · Not confirmed'),findsOneWidget);
    expect(find.textContaining('Edited · 2026-10-24T09:01'),findsOneWidget);
    await cleanup(tester,transport);
  });
  testWidgets('unconfirmed encrypted edit is checked by GET without duplicate PATCH', (tester)async{
    final transport=EditJourneyTransport();
    await pumpChat(tester,transport);
    await tester.longPress(find.text('Initial human message'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Edit'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('human-edit-message-input')),'Edited despite dropped receipt');
    transport.failInfo=true;
    await tester.tap(find.byKey(const Key('human-edit-message-save')));
    await tester.pumpAndSettle();
    expect(transport.patches,0); // GET-first readback must succeed before PATCH.
    transport.failInfo=false;
    await tester.longPress(find.text('Initial human message'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Edit'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('human-edit-check-original')),findsOneWidget);
    await tester.tap(find.byKey(const Key('human-edit-retry-original')));
    await tester.pumpAndSettle();
    expect(transport.patches,1);
    expect(find.text('Edited despite dropped receipt'),findsOneWidget);
    await cleanup(tester,transport);
  });
}