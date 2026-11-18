import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/core/api/models.dart';
import 'package:masanawa/src/state/session_state.dart';
import 'package:masanawa/src/voice/voice_reply_playback_preference.dart';
SessionSignedIn signedIn(String id){final user=AuthUser(id:id,name:id,locale:'en',status:'ACTIVE',role:'USER',isNewUser:false,createdAt:'2026-10-17T00:00:00Z');return SessionSignedIn(user,AuthTokens(accessToken:'x',refreshToken:'y',accessExpiresIn:3600,user:user));}
class Session extends SessionController{@override SessionState build()=>signedIn('a');void change(String id)=>state=signedIn(id);}
class Store implements VoiceReplyPreferenceStore{
 final values=<String,bool>{};Completer<bool>? pending;bool fail=false;
 @override Future<bool> read(String owner)async{if(owner=='a'&&pending!=null)return pending!.future;return values[owner]??true;}
 @override Future<void> write(String owner,bool value)async{if(fail)throw StateError('storage');values[owner]=value;}
}
void main(){
 test('persist opt-out per account and do not apply another owner pending preference',()async{
  final store=Store(),session=Session();final container=ProviderContainer(overrides:[sessionProvider.overrideWith(()=>session),voiceReplyPreferenceStoreProvider.overrideWithValue(store)]);addTearDown(container.dispose);
  expect(await container.read(voiceReplyAutoplayProvider.future),isTrue);
  await container.read(voiceReplyAutoplayProvider.notifier).setEnabled(false);expect(store.values['a'],isFalse);
  session.change('b');expect(await container.read(voiceReplyAutoplayProvider.future),isTrue);
  session.change('a');expect(await container.read(voiceReplyAutoplayProvider.future),isFalse);
  store.pending=Completer();container.invalidate(voiceReplyAutoplayProvider);container.read(voiceReplyAutoplayProvider);session.change('b');
  expect(await container.read(voiceReplyAutoplayProvider.future),isTrue);store.pending!.complete(false);await Future<void>.delayed(Duration.zero);
  expect(container.read(voiceReplyAutoplayProvider).asData!.value,isTrue);
 });
 test('failed persistence leaves automatic speech off with a visible error to caller',()async{
  final store=Store()..fail=true;final container=ProviderContainer(overrides:[sessionProvider.overrideWith(Session.new),voiceReplyPreferenceStoreProvider.overrideWithValue(store)]);addTearDown(container.dispose);
  await container.read(voiceReplyAutoplayProvider.future);
  await expectLater(container.read(voiceReplyAutoplayProvider.notifier).setEnabled(true),throwsStateError);
  expect(container.read(voiceReplyAutoplayProvider).asData!.value,isFalse);
 });
}
