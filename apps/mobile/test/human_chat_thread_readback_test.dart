import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/controller.dart';
import 'package:masanawa/src/human_chat/models.dart';
import 'package:masanawa/src/human_chat/transport.dart';

class ThreadJournal extends HumanJournal {
  ThreadJournal() : super('viewer', 'thread');
  @override
  Future<HumanJson> restore() async => {};
  @override
  Future<void> save(String draft, List<HumanJson> pending,
      {List<HumanJson> attachments = const [], String? reply}) async {}
}

class FlakyEncryptedJournal extends ThreadJournal {
  int remainingFailures=1, writes=0;
  @override
  Future<HumanJson> restore() async {
    if (remainingFailures > 0) {
      remainingFailures--;
      throw StateError('Encrypted journal temporarily unreadable');
    }
    return {
      'draft':'Recovered unsent text',
      'pending':[],
      'attachments':[],
      'reply':null,
    };
  }
  @override
  Future<void> save(String draft,List<HumanJson> pending,{
    List<HumanJson> attachments=const [],String? reply,
  })async {
    writes++;
  }
}

class ThreadTransport extends HumanCommunicationTransport {
  ThreadTransport() : super(ApiClient(dio:Dio()));
  final events=StreamController<HumanJson>.broadcast();
  final requests=<String>[];
  List<HumanJson> history=[message('first')];
  String? nextCursor;
  int? rejectCode;
  bool offline=false, failOnlyOlder=false;
  Completer<HumanJson>? delayedHistory;
  @override
  Stream<HumanJson> stream(int after) => events.stream;
  @override
  Future<HumanJson> request(String method,String path,
      {Object? data,Map<String,dynamic>? query}) async{
    requests.add('$method $path');
    if (path.endsWith('/messages')){
      if(delayedHistory!=null)return delayedHistory!.future;
      if(rejectCode!=null && (!failOnlyOlder || query?['before']!=null)){
        final opts=RequestOptions(path:path);
        throw DioException(requestOptions:opts,
          response:Response(requestOptions:opts,statusCode:rejectCode),
          type:DioExceptionType.badResponse);
      }
      if(offline && (!failOnlyOlder || query?['before']!=null)){
        throw DioException(requestOptions:RequestOptions(path:path),
          type:DioExceptionType.connectionError);
      }
      return {'items':history,'nextCursor':nextCursor};
    }
    if(path=='/conversations/thread'){
      return {'id':'thread','peer':{'handle':'other','displayName':'Other User'},
        'state':'accepted','initiator':false,'updatedAt':'2026-10-24T01:00:00Z'};
    }
    if(path=='/events')return {'cursor':0,'items':[]};
    throw StateError('Unexpected path $path');
  }
  Future<void> finish()async{
    cancel();
    await events.close();
  }
}

HumanJson message(String id)=>{'id':id,'mine':false,'deleted':false,
    'text':'message $id','createdAt':'2026-10-24T01:00:00Z',
    'attachments':[]};

void main(){
  test('transient offline refresh keeps the same authorized conversation and cached page with warning',()async{
    final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.refresh();
    final conversation=c.conversation;
    expect(c.messages.single.id,'first');
    t.offline=true;
    await c.refresh();
    expect(c.conversation,same(conversation));
    expect(c.messages.map((m)=>m.id),['first']);
    expect(c.error,contains('Previously loaded messages'));
    expect(c.before,isNull);
    t.offline=false;t.history=[message('first'),message('new')];
    await c.refresh();
    expect(c.error,isNull);
    expect(c.messages.map((m)=>m.id),['first','new']);
    c.dispose();await t.finish();
  });
  test('403, 404, 401 and 410 authorization or visibility loss immediately removes prior private rows',()async{
    for(final code in [401,403,404,410]){
      final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
      t.nextCursor='anchor';
      await c.refresh();
      expect(c.messages,hasLength(1));
      t.rejectCode=code;
      await c.refresh();
      expect(c.messages,isEmpty,reason:'status $code must revoke cached rows');
      expect(c.conversation,isNull);
      expect(c.before,isNull);
      expect(c.error,contains('access is no longer available'));
      t.rejectCode=null;
      t.history=[message('different')];t.nextCursor=null;
      await c.refresh();
      expect(c.messages.single.id,'different');
      expect(c.error,isNull);
      c.dispose();await t.finish();
    }
  });
  test('failed new text search never misrepresents old thread history as matching results',()async{
    final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.refresh();
    c.search='needle';t.offline=true;
    await c.refresh();
    expect(c.messages,isEmpty);
    expect(c.conversation,isNotNull);
    expect(c.error,contains('search results'));
    t.offline=false;t.history=[message('match')];
    await c.refresh();
    expect(c.messages.single.id,'match');
    expect(c.error,isNull);
    c.dispose();await t.finish();
  });
  test('failed older history fetch keeps already loaded page and continuation',()async{
    final t=ThreadTransport()..nextCursor='older';
    final c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.refresh();
    t.offline=true;t.failOnlyOlder=true;
    await c.refresh(older:true);
    expect(c.messages.single.id,'first');
    expect(c.before,'older');
    expect(c.error,contains('Previously loaded'));
    t.offline=false;
    t.history=[message('older')];t.nextCursor=null;
    await c.refresh(older:true);
    expect(c.messages.map((m)=>m.id),['older','first']);
    expect(c.before,isNull);
    c.dispose();await t.finish();
  });
  test('initial offline load recovers without suggesting that an empty response is final',()async{
    final t=ThreadTransport()..offline=true;
    final c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.refresh();
    expect(c.messages,isEmpty);
    expect(c.conversation,isNull);
    expect(c.error,contains('Could not load conversation'));
    t.offline=false;
    await c.refresh();
    expect(c.messages.single.id,'first');
    expect(c.error,isNull);
    c.dispose();await t.finish();
  });
  test('late old failed search cannot clear a newer successful authorized page',()async{
    final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.refresh();
    final old=Completer<HumanJson>();
    t.delayedHistory=old;
    c.search='a';
    final waiting=c.refresh();
    await Future<void>.delayed(Duration.zero);
    t.delayedHistory=null;t.history=[message('latest')];
    c.search='b';
    await c.refresh();
    expect(c.messages.single.id,'latest');
    old.completeError(DioException(requestOptions:RequestOptions(path:'/messages'),
       response:Response(requestOptions:RequestOptions(path:'/messages'),statusCode:403)));
    await waiting;
    expect(c.messages.single.id,'latest');
    expect(c.error,isNull);
    c.dispose();await t.finish();
  });
  test('push cursor is monotone through duplicate, older, invalid and fractional event sequences',()async{
    final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.start();
    expect(c.cursor,0);
    for(final raw in [9,9,4,-1,7.5,'12',13,11,100.1]){
      t.events.add({'sequence':raw,'conversationId':'unrelated'});
    }
    await Future<void>.delayed(const Duration(milliseconds:20));
    expect(c.cursor,13);
    expect(c.messages.single.id,'first');
    c.dispose();await t.finish();
  });
  test('disposed controller ignores late event changes, avoiding stale account state',()async{
    final t=ThreadTransport(),c=HumanThreadController(t,ThreadJournal(),'thread');
    await c.start();
    final before=c.cursor;
    c.dispose();
    t.events.add({'sequence':25,'conversationId':'thread'});
    await Future<void>.delayed(const Duration(milliseconds:20));
    expect(c.cursor,before);
    await t.finish();
  });
  test('unreadable encrypted queue refuses sends and refresh recovers original draft before any write',()async{
    final t=ThreadTransport(),j=FlakyEncryptedJournal();
    final c=HumanThreadController(t,j,'thread');
    await c.start();
    expect(c.journalUnavailable,true);
    expect(c.messages,isEmpty);
    expect(c.error,contains('Could not restore encrypted'));
    expect(await c.enqueue(text:'new message'),false);
    expect(j.writes,0);
    expect(t.requests.where((r)=>r.startsWith('POST')),isEmpty);
    await expectLater(c.persist(),throwsA(isA<StateError>()));
    expect(j.writes,0);
    await c.refresh(); // UI banner Refresh is also encrypted restore recovery.
    expect(c.journalUnavailable,false);
    expect(c.draft,'Recovered unsent text');
    expect(c.messages.single.id,'first');
    expect(c.error,isNull);
    await c.persist();
    expect(j.writes,1);
    c.dispose();await t.finish();
  });
  test('failed encrypted restore remains gated after another failed refresh, then recovers',()async{
    final t=ThreadTransport(),j=FlakyEncryptedJournal()..remainingFailures=2;
    final c=HumanThreadController(t,j,'thread');
    await c.start();
    await c.refresh();
    expect(c.journalUnavailable,true);
    expect(await c.enqueue(text:'not safe'),false);
    expect(j.writes,0);
    await c.refresh();
    expect(c.journalUnavailable,false);
    expect(c.draft,'Recovered unsent text');
    c.dispose();await t.finish();
  });

}
