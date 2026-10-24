import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/network/api_client.dart';
import 'package:masanawa/src/human_chat/edit_request.dart';
import 'package:masanawa/src/human_chat/models.dart';
import 'package:masanawa/src/human_chat/transport.dart';

class LocalEditStore implements HumanEditRequestStore {
  String? value;
  @override
  Future<String?> read() async => value;
  @override
  Future<void> stage(String v) async {
    if (value != null && value != v) throw StateError('Pending original');
    value = v;
  }
  @override
  Future<void> clear(String expected) async {
    if (value != expected) throw StateError('Different request');
    value = null;
  }
}

class EditTransport extends HumanCommunicationTransport {
  EditTransport() : super(ApiClient(dio:Dio()));
  String text = 'Original';
  String? editedAt;
  int editVersion=0;
  int posts=0, reads=0;
  bool failAfterPatch=false, offlineInfo=false, staleEdit=false;
  final bodies=<HumanJson>[];

  @override
  Future<HumanJson> request(String method,String path,
    {Object? data,Map<String,dynamic>? query}) async{
    if(method=='GET' && path.endsWith('/info')){
      reads++;
      if(offlineInfo) throw DioException(requestOptions:RequestOptions(path:path),type:DioExceptionType.connectionError);
      return {
        'id':'msg','conversationId':'thread','text':text,
        'editedAt':editedAt,'editVersion':editVersion,
      };
    }
    if(method=='PATCH' && path.endsWith('/messages/msg')){
      posts++;
      final body=Map<String,dynamic>.from(data as Map);
      bodies.add(body);
      if(staleEdit)throw DioException(requestOptions:RequestOptions(path:path),
        response:Response(requestOptions:RequestOptions(path:path),statusCode:409),
        type:DioExceptionType.badResponse);
      text=body['text'] as String;
      editedAt='2026-10-24T09:10:00.000Z';
      editVersion++;
      if(failAfterPatch){
        throw DioException(requestOptions:RequestOptions(path:path),
          type:DioExceptionType.connectionError);
      }
      return {
        'id':'msg','conversationId':'thread','text':text,'editedAt':editedAt,
      };
    }
    throw StateError('Unexpected $method $path');
  }
}

PendingHumanEdit request({String text='Corrected'})=>PendingHumanEdit(
  conversationId:'thread',messageId:'msg',text:text,
  expectedVersion:0,requestId:'edit-fixed-id',
);

void main(){
  test('encrypted original intent is frozen and explicit GET-only check never PATCHes',()async{
    final store=LocalEditStore();
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    final transport=EditTransport();
    expect(await journal.recover(transport),HumanEditRecovery.noSavedRequest);
    await journal.stage(request());
    await expectLater(journal.stage(request(text:'Different')),throwsStateError);
    expect((await journal.read())?.text,'Corrected');
    expect(await journal.recover(transport),HumanEditRecovery.unconfirmed);
    expect(transport.posts,0);
    expect(transport.reads,1);
    transport.cancel();
  });

  test('explicit retry posts original immutable request then verifies server info',()async{
    final store=LocalEditStore(),transport=EditTransport();
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    await journal.stage(request());
    expect(await journal.recover(transport,retryOriginal:true),
      HumanEditRecovery.confirmed);
    expect(transport.posts,1);
    expect(transport.bodies.single, {
      'requestId':'edit-fixed-id','text':'Corrected','expectedEditedAt':null,
    });
    expect(transport.reads,2);
    expect(await journal.read(),isNull);
    transport.cancel();
  });

  test('ambiguous lost PATCH reply is recovered by GET with no second submit',()async{
    final store=LocalEditStore(),transport=EditTransport()..failAfterPatch=true;
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    await journal.stage(request());
    expect(await journal.recover(transport,retryOriginal:true),
      HumanEditRecovery.confirmed);
    expect(transport.posts,1);
    expect(await journal.read(),isNull);
    transport.cancel();
  });

  test('conflicting fresh remote edit never sends stale saved update',()async{
    final store=LocalEditStore();
    final transport=EditTransport()
      ..text='Another fresh edit'
      ..editedAt='2026-10-24T09:11:00.000Z'
      ..editVersion=1;
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    await journal.stage(request());
    expect(await journal.recover(transport,retryOriginal:true),
      HumanEditRecovery.changed);
    expect(transport.posts,0);
    expect((await journal.read())?.requestId,'edit-fixed-id');
    await journal.discard('edit-fixed-id');
    expect(await journal.read(),isNull);
    transport.cancel();
  });

  test('offline read leaves encrypted request untouched instead of guessing not sent',()async{
    final store=LocalEditStore(),transport=EditTransport()..offlineInfo=true;
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    await journal.stage(request());
    await expectLater(journal.recover(transport,retryOriginal:true),
      throwsA(isA<DioException>()));
    expect(transport.posts,0);
    expect((await journal.read())?.text,'Corrected');
    transport.cancel();
  });

  test('malformed, cross-thread and inaccessible saved intent fails closed',()async{
    final store=LocalEditStore();
    final journal=HumanEditRequestJournal('alice','thread',store:store);
    store.value='{"conversationId":"elsewhere","messageId":"msg","text":"private","requestId":"original","expectedVersion":0}';
    await expectLater(journal.read(),throwsFormatException);
    store.value='{"conversationId":"thread","messageId":"msg","text":"","requestId":"original","expectedVersion":0}';
    await expectLater(journal.read(),throwsFormatException);
    store.value=null;
    final transport=EditTransport();
    await journal.stage(request());
    transport.cancel();
    await expectLater(journal.recover(transport),throwsStateError);
    expect(await journal.read(),isNotNull);
  });
}