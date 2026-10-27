import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

String? exactGbRecipientHandle(String value) {
  final handle=value.trim().replaceFirst(RegExp(r'^@'), '').toLowerCase();
  return RegExp(r'^[a-z0-9_][a-z0-9_.-]{2,63}$').hasMatch(handle)
      ? handle : null;
}

class GbRecipientIdentity {
  const GbRecipientIdentity(this.id,this.handle,this.name,{this.avatarUrl});
  final String id,handle,name;
  final String? avatarUrl;

  factory GbRecipientIdentity.read(Object? data,String expectedHandle) {
    if(data is! Map || data['recipient'] is! Map) {
      throw const FormatException('Unverified recipient');
    }
    final recipient=data['recipient'] as Map;
    final id=recipient['id'],handle=recipient['username'],name=recipient['displayName'];
    if(id is! String || id.isEmpty || id.length>160 ||
       handle is! String || handle!=expectedHandle ||
       exactGbRecipientHandle(handle)!=handle ||
       name is! String || name.trim().isEmpty || name.length>160) {
      throw const FormatException('Invalid recipient identity');
    }
    final avatar=recipient['avatarUrl'];
    final uri=avatar is String?Uri.tryParse(avatar):null;
    final safeAvatar=uri!=null && uri.scheme=='https' && uri.host.isNotEmpty &&
      uri.userInfo.isEmpty && !uri.hasFragment && avatar.length<=2048 ? avatar : null;
    return GbRecipientIdentity(id,handle,name,avatarUrl:safeAvatar);
  }
}

abstract class GbRecipientLookupTransport {
  Future<GbRecipientIdentity> lookup(String exactHandle,{CancelToken? cancellation});
}

class DioGbRecipientLookupTransport implements GbRecipientLookupTransport {
  const DioGbRecipientLookupTransport(this.dio);
  final Dio dio;
  @override
  Future<GbRecipientIdentity> lookup(String exactHandle,{CancelToken? cancellation}) async {
    if(exactGbRecipientHandle(exactHandle)!=exactHandle) {
      throw const FormatException('Complete @handle required');
    }
    final response=await dio.get<Object?>(
      '/v1/gb/wallet/recipients/${Uri.encodeComponent(exactHandle)}',
      cancelToken:cancellation,
      options:Options(headers:const {'Cache-Control':'no-store'}));
    return GbRecipientIdentity.read(response.data,exactHandle);
  }
}

final gbRecipientLookupTransportProvider=Provider<GbRecipientLookupTransport>((ref)=>
  DioGbRecipientLookupTransport(ref.watch(apiClientProvider).dio));

/// Shared exact-username readback for Send/Request; not a money authority or
/// a directory enumerator. The transfer/request server independently resolves
/// identity again before any write.
class GbRecipientField extends ConsumerStatefulWidget {
  const GbRecipientField({super.key,required this.controller,required this.owner,
    required this.label,required this.enabled,required this.onChanged});
  final TextEditingController controller;
  final GbWalletOwner? owner;
  final String label;
  final bool enabled;
  final ValueChanged<String> onChanged;

  @override
  ConsumerState<GbRecipientField> createState()=>_GbRecipientFieldState();
}

class _GbRecipientFieldState extends ConsumerState<GbRecipientField> {
  Timer? _timer;
  CancelToken? _cancel;
  GbRecipientIdentity? _verified;
  String? _error;
  bool _checking=false;
  int _generation=0;

  void _invalidate() {
    ++_generation;
    _timer?.cancel();_cancel?.cancel();_cancel=null;
    _verified=null;_error=null;_checking=false;
  }

  @override
  void didUpdateWidget(covariant GbRecipientField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.owner!=widget.owner ||
       oldWidget.controller!=widget.controller ||
       (oldWidget.enabled && !widget.enabled)) _invalidate();
  }

  @override
  void dispose() {_invalidate();super.dispose();}

  bool _same(GbWalletOwner owner,int generation,String handle) {
    if(!mounted || !widget.enabled || _generation!=generation || owner!=widget.owner ||
       exactGbRecipientHandle(widget.controller.text)!=handle)return false;
    final session=ref.read(sessionProvider);
    return session is SessionSignedIn && session.user.id==owner.accountId &&
      ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;
  }

  Future<void> _lookup(GbWalletOwner owner,String handle) async {
    _cancel?.cancel();
    final cancel=CancelToken();_cancel=cancel;
    final generation=++_generation;
    setState((){_checking=true;_error=null;_verified=null;});
    try {
      final found=await ref.read(gbRecipientLookupTransportProvider)
        .lookup(handle,cancellation:cancel);
      if(!_same(owner,generation,handle) || found.handle!=handle)return;
      setState((){_verified=found;_checking=false;});
    }on DioException catch (error) {
      if(!_same(owner,generation,handle))return;
      setState((){
        _checking=false;
        _error=error.response?.statusCode==404
          ? 'No eligible account matches this exact @handle.'
          : 'Recipient verification is unavailable. Retry when connected.';
      });
    }catch (_) {
      if(!_same(owner,generation,handle))return;
      setState((){_checking=false;_error='Recipient could not be verified. Retry.';});
    }
  }

  void _changed(String value) {
    setState(_invalidate);
    widget.onChanged(value);
    final owner=widget.owner,handle=exactGbRecipientHandle(value);
    if(owner!=null && handle!=null && widget.enabled) {
      _timer=Timer(const Duration(milliseconds:350),()=>_lookup(owner,handle));
    }
  }

  @override
  Widget build(BuildContext context) {
    final owner=widget.owner,handle=exactGbRecipientHandle(widget.controller.text);
    final verified=handle==_verified?.handle?_verified:null;
    return Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
      TextField(
        controller:widget.controller,
        enabled:owner!=null && widget.enabled,
        onChanged:_changed,
        textInputAction:TextInputAction.done,
        decoration:InputDecoration(
          labelText:widget.label,hintText:'@username',
          border:const OutlineInputBorder(),
          suffixIcon:_checking
            ? const Padding(padding:EdgeInsets.all(14),
                child:SizedBox(width:18,height:18,child:CircularProgressIndicator(strokeWidth:2)))
            : IconButton(
                tooltip:'Verify exact recipient',
                onPressed:owner==null || !widget.enabled || handle==null
                  ? null : ()=>_lookup(owner,handle),
                icon:const Icon(Icons.person_search_outlined)),
        ),
      ),
      if(verified!=null)Card(
        child:Padding(padding:const EdgeInsets.all(12),child:Row(children:[
          CircleAvatar(
            foregroundImage:verified.avatarUrl==null?null:NetworkImage(verified.avatarUrl!),
            onForegroundImageError:verified.avatarUrl==null?null:(_, _) {},
            child:Text(verified.name.trim().characters.first.toUpperCase())),
          const SizedBox(width:10),
          Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
            Text(verified.name,maxLines:2,overflow:TextOverflow.ellipsis,
              style:Theme.of(context).textTheme.titleSmall),
            Text('@${verified.handle}',maxLines:1,overflow:TextOverflow.ellipsis),
            Text('ID: ${verified.id}',maxLines:1,overflow:TextOverflow.ellipsis,
              style:Theme.of(context).textTheme.bodySmall),
          ])),
          const Icon(Icons.verified_user_outlined,
            semanticLabel:'Account identity verified'),
          IconButton(tooltip:'Cancel recipient verification',
            onPressed:widget.enabled?()=>setState(_invalidate):null,
            icon:const Icon(Icons.close)),
        ]))),
      if(_error!=null)Padding(padding:const EdgeInsets.only(top:6),
        child:Row(children:[
          Expanded(child:Text(_error!,style:TextStyle(color:Theme.of(context).colorScheme.error))),
          TextButton(onPressed:owner==null || handle==null || !widget.enabled?null:
            ()=>_lookup(owner,handle),child:const Text('Retry')),
        ])),
      if(verified==null && _error==null && !_checking && handle!=null)
        const Padding(padding:EdgeInsets.only(top:6),
          child:Text('Check the recipient name and @handle before proceeding.')),
    ]);
  }
}
