import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../state/session_state.dart';
import '../theme/masanawa_theme.dart';
import 'gb_recipient_lookup.dart';

typedef _Owner = ({String accountId, int authorizationEpoch});

String _secureRequestKey() {
  final random = Random.secure();
  return 'mbreq_' + List.generate(20,
    (_) => random.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
}

/// Focused, one-purpose request form. Old Sent/Incoming/history/actions are
/// not mounted or fetched. Durable request settlement and receipts remain on
/// the server for original-reference reconciliation.
class GbRequestScreen extends ConsumerStatefulWidget {
  const GbRequestScreen({super.key});

  @override
  ConsumerState<GbRequestScreen> createState() => _GbRequestScreenState();
}

class _GbRequestScreenState extends ConsumerState<GbRequestScreen> {
  final _recipient = TextEditingController();
  final _amount = TextEditingController();
  _Owner? _owner;
  CancelToken? _cancel;
  int _generation = 0;
  bool _busy = false;
  String? _error, _createKey, _quickSelection;

  @override
  void dispose() {
    _generation++;
    _cancel?.cancel();
    _recipient.dispose();
    _amount.dispose();
    super.dispose();
  }

  bool _isCurrent(_Owner owner) {
    final session = ref.read(sessionProvider);
    return session is SessionSignedIn &&
      session.user.id == owner.accountId &&
      ref.read(sessionProvider.notifier).authorizationEpoch ==
        owner.authorizationEpoch;
  }

  void _resetForAccount(_Owner? owner) {
    _generation++;
    _cancel?.cancel();
    _owner = owner;
    _busy = false;
    _error = _createKey = _quickSelection = null;
    _recipient.clear();
    _amount.clear();
  }

  int? get _validAmount {
    final text = _amount.text.trim();
    if (!RegExp(r'^[1-9][0-9]{0,9}$').hasMatch(text)) return null;
    final mb = int.tryParse(text);
    return mb != null && mb <= 1000000000 ? mb : null;
  }

  bool get _validHandle => RegExp(
    r'^@?[a-zA-Z0-9_][a-zA-Z0-9_.-]{1,63}$',
  ).hasMatch(_recipient.text.trim());

  Future<void> _create(_Owner owner) async {
    final mb = _validAmount;
    if (mb == null || !_validHandle || _busy || !_isCurrent(owner)) return;
    final key = _createKey ??= _secureRequestKey();
    final generation = ++_generation;
    _cancel?.cancel();
    final cancel = CancelToken();
    _cancel = cancel;
    setState(() { _busy = true; _error = null; });
    try {
      final response = await ref.read(apiClientProvider).dio.post<Object?>(
        '/v1/gb/wallet/requests',
        data: {'username':_recipient.text.trim(),
          'amountMb':mb,'idempotencyKey':key},
        cancelToken:cancel,
        options:Options(headers:const {'Cache-Control':'no-store'}),
      );
      final body = response.data;
      if (body is! Map<String,dynamic> || body['request'] is! Map) {
        throw const FormatException('Missing request receipt');
      }
      final receipt=body['request'] as Map;
      if (receipt['requesterId'] != owner.accountId ||
          receipt['amountMb'] != mb ||
          receipt['requestId'] is! String ||
          !RegExp(r'^mbreq_[A-Za-z0-9_-]{24,80}$')
            .hasMatch(receipt['requestId'] as String) ||
          receipt['state'] != 'open') {
        throw const FormatException('Request receipt mismatch');
      }
      if (!mounted || generation != _generation || !_isCurrent(owner)) return;
      setState(() {
        _busy = false;
        _recipient.clear();
        _amount.clear();
        _createKey = _quickSelection = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Request sent'), behavior: SnackBarBehavior.floating));
    } catch (_) {
      if (!mounted || generation != _generation || !_isCurrent(owner)) return;
      setState(() {
        _busy = false;
        _error = 'Request not confirmed. Retry without changing the details.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(sessionProvider);
    final owner = session is SessionSignedIn
      ? (accountId: session.user.id,
          authorizationEpoch:ref.read(sessionProvider.notifier).authorizationEpoch)
      : null;
    if (_owner != owner) _resetForAccount(owner);
    final colors=context.masanawa;
    return Scaffold(
      appBar:AppBar(title:const Text('Request MB')),
      body:ListView(
        padding:const EdgeInsets.fromLTRB(16, 20, 16, 30),
        children:[
          GbRecipientField(controller:_recipient,owner:owner,
            enabled:owner!=null&&!_busy,
            onChanged:(_){_createKey=null;setState((){});},
            label:'Find payer'),
          const SizedBox(height:18),
          Wrap(alignment:WrapAlignment.center,spacing:8,runSpacing:8,children:[
            for(final entry in const <int,String>{
              100:'100 MB',500:'500 MB',1000:'1 GB',5000:'5 GB',10000:'10 GB',
            }.entries)
              ChoiceChip(
                key:ValueKey('request-quick-${entry.key}'),
                label:Text(entry.value),
                selected:_quickSelection=='${entry.key}',
                onSelected:owner==null||_busy?null:(_){setState((){
                  if(_amount.text.trim()!=entry.key.toString()){
                    _amount.text=entry.key.toString();_createKey=null;
                  }
                  _quickSelection='${entry.key}';
                });},
              ),
          ]),
          const SizedBox(height:12),
          TextField(
            key:const ValueKey('request-custom-mb'),
            controller:_amount,enabled:owner!=null&&!_busy,
            keyboardType:TextInputType.number,
            onChanged:(_){_createKey=null;_quickSelection=null;setState((){});},
            decoration:const InputDecoration(
              labelText:'Custom amount (whole MB)',border:OutlineInputBorder()),
          ),
          const SizedBox(height:18),
          FilledButton.icon(
            onPressed:owner!=null&&!_busy&&_validHandle&&_validAmount!=null
              ?()=>_create(owner):null,
            icon:const Icon(Icons.call_received_rounded),
            label:const Text('Send request'),
          ),
          if(_busy)const Padding(padding:EdgeInsets.only(top:12),
            child:LinearProgressIndicator()),
          if(_error!=null) Padding(
            padding:const EdgeInsets.symmetric(vertical:18),
            child:Column(children:[
              Icon(Icons.info_outline_rounded,color:colors.textMuted),
              const SizedBox(height:6),
              Text(_error!,textAlign:TextAlign.center),
            ]),
          ),
        ],
      ),
    );
  }
}
