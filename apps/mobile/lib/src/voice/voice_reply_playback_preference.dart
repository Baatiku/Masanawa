import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../state/session_state.dart';

abstract interface class VoiceReplyPreferenceStore {
  Future<bool> read(String owner);
  Future<void> write(String owner,bool enabled);
}
class SecureVoiceReplyPreferenceStore implements VoiceReplyPreferenceStore {
  const SecureVoiceReplyPreferenceStore();
  static const _vault=FlutterSecureStorage(aOptions:AndroidOptions(),iOptions:IOSOptions(accessibility:KeychainAccessibility.first_unlock_this_device));
  String _key(String owner)=>'voice_reply_autoplay_${base64Url.encode(utf8.encode(owner)).replaceAll('=', '')}';
  @override Future<bool> read(String owner)async=>(await _vault.read(key:_key(owner)))!='false';
  @override Future<void> write(String owner,bool enabled)=>_vault.write(key:_key(owner),value:enabled.toString());
}
final voiceReplyPreferenceStoreProvider=Provider<VoiceReplyPreferenceStore>((_)=>const SecureVoiceReplyPreferenceStore());
final voiceReplyAutoplayProvider=AsyncNotifierProvider<VoiceReplyAutoplay,bool>(VoiceReplyAutoplay.new);
class VoiceReplyAutoplay extends AsyncNotifier<bool>{
  String? _owner;
  int _version=0;
  @override Future<bool> build()async{
    final owner=ref.watch(sessionProvider.select((session)=>session is SessionSignedIn?session.user.id:null));
    _owner=owner;_version++;
    ref.onDispose(()=>_version++);
    if(owner==null)return false;
    try{return await ref.read(voiceReplyPreferenceStoreProvider).read(owner);}
    catch(_){return false;} // A missing preference must never bypass an opt-out.
  }
  Future<void> setEnabled(bool enabled)async{
    await future;
    final owner=_owner,version=++_version;if(owner==null)return;
    state=AsyncData(enabled);
    try{await ref.read(voiceReplyPreferenceStoreProvider).write(owner,enabled);}
    catch(_){
      if(owner==_owner&&version==_version)state=const AsyncData(false);
      rethrow;
    }
  }
}
