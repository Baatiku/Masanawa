import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio/just_audio.dart';
import 'package:masanawa/src/features/home_feed/feed_media_api.dart';
import 'package:masanawa/src/core/live_call_foreground.dart';
import 'package:masanawa/src/core/status_audio_focus.dart';
import 'package:masanawa/src/features/home_feed/feed_media_screen.dart';

const post='381026c2-9d56-47b1-b73d-1784e24e41e2';
class MediaStub implements FeedMediaApi {
  MediaStub(this.response);
  final Future<FeedMediaGrant> Function(String,String) response;
  @override Future<FeedMediaGrant> getGrant(String p,String m)=>response(p,m);
}
FeedMediaGrant grant(String id)=>FeedMediaGrant(mediaId:id,kind:'image',
 url:Uri.parse('https://media.example.test/signed'),expiresAt:DateTime.now().add(const Duration(minutes:1)));
class PlaybackFake extends Fake implements AudioPlayer {
  final states=StreamController<PlayerState>.broadcast(),positions=StreamController<Duration>.broadcast();
  final loaded=<String>[],seeks=<Duration?>[];
  Duration? total;Duration position=Duration.zero;bool playing=false;Completer<void>? decoding;
  ProcessingState state=ProcessingState.idle;
  @override Stream<PlayerState> get playerStateStream=>states.stream;
  @override Stream<Duration> get positionStream=>positions.stream;
  @override Duration? get duration=>total;
  @override ProcessingState get processingState=>state;
  void emit(){states.add(PlayerState(playing,state));positions.add(position);}
  @override Future<Duration?> setUrl(String url,{Map<String,String>? headers,Duration? initialPosition,bool preload=true,dynamic tag})async{
    loaded.add(url);await decoding?.future;total=const Duration(minutes:2);position=initialPosition??Duration.zero;state=ProcessingState.ready;emit();return total;
  }
  @override Future<void> play()async{playing=true;emit();}
  @override Future<void> pause()async{playing=false;emit();}
  @override Future<void> stop()async{playing=false;state=ProcessingState.idle;emit();}
  @override Future<void> seek(Duration? value,{int? index})async{seeks.add(value);position=value??Duration.zero;state=ProcessingState.ready;emit();}
  @override Future<void> setSpeed(double value)async{}
  @override Future<void> dispose()async{await states.close();await positions.close();}
}

void main(){
 test('Status audio focus does not take an active call session',()async{
   await LiveCallForeground.startOrThrow(android:false);addTearDown(LiveCallForeground.stop);
   await expectLater(StatusAudioFocus.prepare(isAccountCurrent:()=>true),
     throwsA(isA<StateError>().having((e)=>e.message,'cause','call_active')));
 });
 testWidgets('approved audio stays paused through a call and needs an explicit Play afterward',(t)async{
   await LiveCallForeground.startOrThrow(android:false);addTearDown(LiveCallForeground.stop);
   var focusRequests=0;
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     api:MediaStub((_,__)async=>FeedMediaGrant(mediaId:'media_audio',kind:'audio',url:Uri.parse('https://media.example.test/signed'),
       expiresAt:DateTime.now().add(const Duration(minutes:1)),transcript:'Approved spoken post')),
     accountKey:'a',postId:post,kind:'audio',mediaIds:const ['media_audio'],onBeforeAudio:()async{focusRequests++;})));
   await t.pumpAndSettle();
   expect(t.widget<FilledButton>(find.widgetWithText(FilledButton,'Play audio')).onPressed,isNull);
   expect(find.text('Approved spoken post'),findsOneWidget);expect(focusRequests,0);
   await LiveCallForeground.stop();await t.pumpAndSettle();
   expect(t.widget<FilledButton>(find.widgetWithText(FilledButton,'Play audio')).onPressed,isNotNull);
   expect(focusRequests,0);expect(t.takeException(),isNull);
 });
 testWidgets('a call beginning and ending while focus awaits still requires another Play',(t)async{
   final focus=Completer<void>();
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     api:MediaStub((_,__)async=>FeedMediaGrant(mediaId:'media_audio',kind:'audio',url:Uri.parse('https://media.example.test/signed'),
       expiresAt:DateTime.now().add(const Duration(minutes:1)))),
     accountKey:'a',postId:post,kind:'audio',mediaIds:const ['media_audio'],onBeforeAudio:()=>focus.future)));
   await t.pumpAndSettle();await t.tap(find.text('Play audio'));await t.pump();
   await LiveCallForeground.startOrThrow(android:false);addTearDown(LiveCallForeground.stop);
   await LiveCallForeground.stop();focus.complete();await t.pumpAndSettle();
   expect(find.text('Audio playback failed. Try again.'),findsNothing);
   expect(t.widget<FilledButton>(find.widgetWithText(FilledButton,'Play audio')).onPressed,isNotNull);
   expect(t.takeException(),isNull);
 });

 testWidgets('long approved audio transcript scrolls at 320dp large text RTL without a fake seek range',(t)async{
   t.view.physicalSize=const Size(320,760);t.view.devicePixelRatio=1;
   addTearDown(t.view.resetPhysicalSize);addTearDown(t.view.resetDevicePixelRatio);
   final transcript=List.filled(150,'Approved spoken words.').join(' ');
   await t.pumpWidget(MaterialApp(home:MediaQuery(data:const MediaQueryData(textScaler:TextScaler.linear(2)),
     child:Directionality(textDirection:TextDirection.rtl,child:FeedMediaScreen(
       api:MediaStub((_,__)async=>FeedMediaGrant(mediaId:'media_audio',kind:'audio',url:Uri.parse('https://media.example.test/signed'),
         expiresAt:DateTime.now().add(const Duration(minutes:1)),transcript:transcript)),
       accountKey:'a',postId:post,kind:'audio',mediaIds:const ['media_audio'],onBeforeAudio:()async{})))));
   await t.pumpAndSettle();
   expect(find.byType(SingleChildScrollView),findsWidgets);expect(find.text(transcript),findsOneWidget);
   expect(t.widget<Slider>(find.byType(Slider)).onChanged,isNull);expect(t.takeException(),isNull);
 });
 testWidgets('Pause and Play retain the decoded source and position; a finished clip explicitly restarts',(t)async{
   final playback=PlaybackFake();
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     api:MediaStub((_,__)async=>FeedMediaGrant(mediaId:'media_audio',kind:'audio',url:Uri.parse('https://media.example.test/signed'),
       expiresAt:DateTime.now().add(const Duration(minutes:2)))),
     accountKey:'a',postId:post,kind:'audio',mediaIds:const ['media_audio'],onBeforeAudio:()async{},playerFactory:()=>playback)));
   await t.pumpAndSettle();await t.tap(find.text('Play audio'));await t.pumpAndSettle();
   expect(playback.loaded,hasLength(1));expect(playback.playing,isTrue);
   playback.position=const Duration(seconds:42);playback.emit();await t.pump();
   await t.tap(find.text('Pause'));await t.pumpAndSettle();expect(playback.playing,isFalse);
   await t.tap(find.text('Play audio'));await t.pumpAndSettle();
   expect(playback.loaded,hasLength(1));expect(playback.position,const Duration(seconds:42));
   playback.state=ProcessingState.completed;playback.playing=false;playback.position=playback.total!;playback.emit();await t.pumpAndSettle();
   await t.tap(find.text('Play audio'));await t.pumpAndSettle();
   expect(playback.loaded,hasLength(1));expect(playback.seeks.last,Duration.zero);expect(playback.playing,isTrue);
   expect(t.takeException(),isNull);
 });
 testWidgets('call takeover during source decoding cancels old playback even after the call ends',(t)async{
   final playback=PlaybackFake()..decoding=Completer<void>();
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     api:MediaStub((_,__)async=>FeedMediaGrant(mediaId:'media_audio',kind:'audio',url:Uri.parse('https://media.example.test/signed'),
       expiresAt:DateTime.now().add(const Duration(minutes:2)))),accountKey:'a',postId:post,kind:'audio',
     mediaIds:const ['media_audio'],onBeforeAudio:()async{},playerFactory:()=>playback)));
   await t.pumpAndSettle();await t.tap(find.text('Play audio'));await t.pump();
   expect(playback.loaded,hasLength(1));
   await LiveCallForeground.startOrThrow(android:false);addTearDown(LiveCallForeground.stop);
   await LiveCallForeground.stop();playback.decoding!.complete();await t.pumpAndSettle();
   expect(playback.playing,isFalse);expect(t.takeException(),isNull);
   await t.tap(find.text('Play audio'));await t.pumpAndSettle();expect(playback.playing,isTrue);
 });
 testWidgets('C23 single post media cannot be rendered before server grant',(t)async{
   final pending=Completer<FeedMediaGrant>();
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(api:MediaStub((_,__)=>pending.future),
     accountKey:'a',postId:post,kind:'image',mediaIds:const ['media_abcdefgh'],
     mediaRenderer:(g)=>Text(g.mediaId))));
   await t.pump();
   expect(find.text('media_abcdefgh'),findsNothing);
   pending.complete(grant('media_abcdefgh'));
   await t.pumpAndSettle();
   expect(find.text('media_abcdefgh'),findsOneWidget);
 });
 testWidgets('C23 account switching rejects stale signed grant response',(t)async{
   final pending=Completer<FeedMediaGrant>();
   Future<void> draw(String account,FeedMediaApi api)async{
     await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
       accountKey:account,api:api,postId:post,kind:'image',
       mediaIds:const ['media_abcdefgh'],mediaRenderer:(g)=>Text('approved for $account'))));
     await t.pump();
   }
   await draw('a',MediaStub((_,__)=>pending.future));
   await draw('b',MediaStub((_,__)async=>grant('media_abcdefgh')));
   pending.complete(grant('media_abcdefgh'));
   await t.pumpAndSettle();
   expect(find.text('approved for a'),findsNothing);
   expect(find.text('approved for b'),findsOneWidget);
 });
 testWidgets('C23 feature disabled and denial show honest state',(t)async{
   final api=MediaStub((_,__)async=>throw StateError('denied'));
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     accountKey:'a',api:api,postId:post,kind:'image',
     mediaIds:const ['media_abcdefgh'],enabled:false)));
   expect(find.text('Media is unavailable right now.'),findsOneWidget);
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     accountKey:'a',api:api,postId:post,kind:'image',mediaIds:const ['media_abcdefgh'])));
   await t.pumpAndSettle();
   expect(find.text('Could not open media.'),findsOneWidget);
   expect(find.text('Retry'),findsOneWidget);
 });
 testWidgets('full media viewer expires grant and requires fresh authorized read',
     (t) async {
   var reads=0;
   final api=MediaStub((_,id) async {
     reads++;
     return FeedMediaGrant(mediaId:id,kind:'image',
       url:Uri.parse('https://media.example.test/signed?read=$reads'),
       expiresAt:DateTime.now().add(const Duration(seconds:2)));
   });
   await t.pumpWidget(MaterialApp(home:FeedMediaScreen(
     accountKey:'a',api:api,postId:post,kind:'image',
     mediaIds:const ['media_abcdefgh'],
     mediaRenderer:(g)=>Text('approved image $reads'))));
   await t.pumpAndSettle();
   expect(reads,1);
   expect(find.text('approved image 1'),findsOneWidget);
   await t.pump(const Duration(seconds:3));
   await t.pump();
   expect(find.text('approved image 1'),findsNothing);
   expect(find.text('Media grant expired. Retry to check access.'),findsOneWidget);
   await t.tap(find.text('Retry'));
   await t.pumpAndSettle();
   expect(reads,2);
   expect(find.text('approved image 2'),findsOneWidget);
 });

 testWidgets('old account expiry cannot revoke new account media',(t) async {
   final a=MediaStub((_,id) async => FeedMediaGrant(mediaId:id,kind:'image',
     url:Uri.parse('https://media.example.test/a'),
     expiresAt:DateTime.now().add(const Duration(seconds:2))));
   final b=MediaStub((_,id) async => FeedMediaGrant(mediaId:id,kind:'image',
     url:Uri.parse('https://media.example.test/b'),
     expiresAt:DateTime.now().add(const Duration(minutes:1))));
   Widget viewer(String account, FeedMediaApi api) => MaterialApp(
     home:FeedMediaScreen(accountKey:account,api:api,postId:post,kind:'image',
       mediaIds:const ['media_abcdefgh'],
       mediaRenderer:(g)=>Text('approved $account')));
   await t.pumpWidget(viewer('a',a));
   await t.pumpAndSettle();
   await t.pumpWidget(viewer('b',b));
   await t.pumpAndSettle();
   await t.pump(const Duration(seconds:3));
   expect(find.text('approved a'),findsNothing);
   expect(find.text('approved b'),findsOneWidget);
 });

}
