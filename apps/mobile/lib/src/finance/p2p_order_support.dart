import 'p2p_order_presentation.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const p2pDisputeCategories = {
  'no_payment': 'Bank payment not received',
  'asset_not_received': 'MSNW not received',
  'wrong_amount': 'Wrong payment amount',
  'wrong_recipient': 'Wrong bank or recipient',
  'abuse': 'Abuse or scam attempt',
  'other': 'Other',
};

class P2pOrderSupportPage extends StatefulWidget {
  const P2pOrderSupportPage({
    super.key,
    required this.expectedUserId,
    required this.currentUserId,
    required this.load,
    required this.submit,
    this.loadOlder,
    this.openRequests,
  });
  final Future<void> Function(BuildContext)? openRequests;
  final Future<Map<String,dynamic>> Function(String cursor)? loadOlder;
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function() load;
  final Future<Map<String, dynamic>> Function(String category, String details)
  submit;
  @override
  State<P2pOrderSupportPage> createState() => _P2pOrderSupportPageState();
}

class _P2pOrderSupportPageState extends State<P2pOrderSupportPage> {
  final _form = GlobalKey<FormState>(), _details = TextEditingController();
  String _category = 'other';
  String? _error;
  Map<String, dynamic>? _context, _receipt;
  bool _checking = false,
      _sending = false,
      _checked = false,
      _uncertain = false,
      _gone = false;
  Timer? _fence;
  bool _older=false;
  int _generation=0;
  bool get _same => !_gone && widget.currentUserId() == widget.expectedUserId;
  bool get _busy => _checking || _sending;
  @override
  void initState() {
    super.initState();
    _check();
    _fence = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!_same) _clear();
    });
  }

  @override
  void dispose() {
    _fence?.cancel();
    _details.dispose();
    super.dispose();
  }

  void _clear() {
    if (!mounted || _gone) return;
    _fence?.cancel();
    _generation++;
    _details.clear();
    setState(() {
      _gone = true;
      _context = null;
      _receipt = null;
      _error = null;
    });
  }

  String _time(Object? value) {
    final at = DateTime.parse('$value').toLocal(),
        l = MaterialLocalizations.of(context);
    return '${l.formatCompactDate(at)} · ${l.formatTimeOfDay(TimeOfDay.fromDateTime(at))}';
  }

  Future<void> _check({bool retry = false}) async {
    if (_checking || !_same) return;
    setState(() {
      _checking = true;
      _error = null;
    });
    final generation=++_generation;
    var resend = false;
    try {
      final data = await widget.load().timeout(const Duration(seconds: 20));
      if (!mounted || !_same || generation!=_generation) return;
      final report = data['submission'], events = data['events'];
      if (data['canOpenDispute'] is! bool ||
          data['state'] is! String ||
          events is! List ||
          events.length > 50)
        throw const FormatException();
      if (report != null &&
          (report is! Map ||
              report['submission_id'] is! String ||
              report['is_own'] is! bool ||
              !p2pDisputeCategories.containsKey(report['category']) ||
              DateTime.tryParse('${report['created_at']}') == null))
        throw const FormatException();
      for (final event in events) {
        if (event is! Map ||
            event['action'] is! String ||
            DateTime.tryParse('${event['created_at']}') == null)
          throw const FormatException();
      }
      setState(() {
        _context = data;
        _checked = true;
        if (report != null) {
          _receipt = report['is_own'] == true
              ? Map<String, dynamic>.from(report)
              : null;
          _uncertain = false;
        } else if (data['canOpenDispute'] == false) {
          _uncertain = false;
        } else if (retry && _uncertain) {
          resend = true;
        }
      });
    } catch (error) {
      if (mounted && _same) {
        if (error is DioException &&
            [401, 403, 404].contains(error.response?.statusCode)) {
          _clear();
        } else {
          setState(() {
            _checked = false;
            _error = 'Support context could not be refreshed. Retry.';
          });
        }
      }
    } finally {
      if (mounted && _same) setState(() => _checking = false);
    }
    if (resend && mounted && _same) await _send(retry: true);
  }

  Future<void> _loadOlder()async{
    final cursor=_context?['nextCursor'];
    if(_busy||_older||!_same||cursor is! String||widget.loadOlder==null)return;
    final generation=_generation;setState(()=>_older=true);
    try{
      final page=await widget.loadOlder!(cursor).timeout(const Duration(seconds:20));
      if(!mounted||!_same||generation!=_generation)return;
      final events=page['events'];
      if(events is! List||events.length>50||(page['nextCursor']!=null&&page['nextCursor'] is! String))throw const FormatException();
      for(final e in events){if(e is! Map||e['event_id'] is! String||e['action'] is! String||DateTime.tryParse('${e['created_at']}')==null)throw const FormatException();}
      final existing=_context!['events'] as List,ids=existing.map((e)=>(e as Map)['event_id']).toSet();
      setState((){_context={..._context!,'events':[...events.where((e)=>!ids.contains((e as Map)['event_id'])),...existing],'nextCursor':page['nextCursor']};_error=null;});
    }catch(error){if(mounted&&_same&&generation==_generation){if(error is DioException&&[401,403,404].contains(error.response?.statusCode)){_clear();}else{setState(()=>_error='Older events could not be loaded. Retry.');}}}
    finally{if(mounted&&_same)setState(()=>_older=false);}
  }

  Future<void> _send({bool retry = false}) async {
    if (_busy ||
        !_same ||
        !_checked ||
        _context?['canOpenDispute'] != true ||
        (!retry && !_form.currentState!.validate()))
      return;
    setState(() {
      _sending = true;
      _error = null;
    });
    try {
      final result = await widget
          .submit(_category, _details.text.trim())
          .timeout(const Duration(seconds: 20));
      if (!mounted || !_same) return;
      final receipt = result['submission'];
      if (receipt is! Map || receipt['submission_id'] is! String)
        throw const FormatException();
      setState(() {
        _receipt = Map<String, dynamic>.from(receipt);
        _uncertain = false;
      });
      await _check();
    } catch (error) {
      if (mounted && _same) {
        final code = error is DioException && error.response?.data is Map
            ? (error.response!.data as Map)['error']
            : null;
        if (error is DioException &&
            [401, 403].contains(error.response?.statusCode) &&
            code != 'p2p.dispute_denied') {
          _clear();
        } else {
          setState(() {
            _uncertain = true;
            _error =
                'Dispute submission is not confirmed. Check the original order before retrying.';
          });
        }
      }
    } finally {
      if (mounted && _same) setState(() => _sending = false);
    }
  }

  String _event(String action) =>
      const {
        'evidence_recorded': 'Attachment recorded',
        'reserve': 'Escrow reserved',
        'buyer_claimed_payment': 'Buyer reported payment sent',
        'dispute_opened': 'Dispute opened',
        'escrow_released': 'Escrow released',
        'cancelled': 'Order cancelled',
        'expired': 'Order expired',
        'late_payment_reported': 'Late payment reported',
        'late_payment_escalated': 'Late-payment case under review',
        'late_payment_closed': 'Late-payment case closed',
      }[action] ??
      'Order updated';
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Order support')),
    body: _gone
        ? const Center(child: Text('Access changed. Reopen P2P.'))
        : ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (_busy) const LinearProgressIndicator(),
              if (_context != null)
                Text(
                  'Order status: ${p2pOrderStatus('${_context!['state']}')}',
                ),
              if (_error != null)
                Semantics(liveRegion: true, child: Text(_error!)),
              if (_receipt != null) ...[
                const Text('Your original dispute report was received.'),
                SelectableText('${_receipt!['submission_id']}'),
              ],
              if (_context?['submission'] case final Map report) ...[
                Text('Reason: ${p2pDisputeCategories[report['category']]}'),
                Text(
                  '${report['is_own'] == true ? 'You' : 'The counterparty'} opened this dispute · ${_time(report['created_at'])}',
                ),
                if (report['is_own'] == true && report['details'] is String)
                  SelectableText(report['details'] as String),
              ],
              if (_context?['state'] == 'disputed')
                const Text(
                  'Escrow is held while support reviews the dispute. A report or screenshot does not confirm bank settlement.',
                ),
              if (_receipt == null &&
                  _context?['submission'] == null &&
                  _context?['canOpenDispute'] == true)
                Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Open a dispute on this order. This pauses normal release while support reviews it. Leave out passwords, codes and full account numbers.',
                      ),
                      DropdownButtonFormField<String>(
                        initialValue: _category,
                        itemHeight: null,
                        isExpanded: true,
                        decoration: const InputDecoration(
                          labelText: 'Dispute reason',
                        ),
                        items: [
                          for (final entry in p2pDisputeCategories.entries)
                            DropdownMenuItem(
                              value: entry.key,
                              child: Text(entry.value),
                            ),
                        ],
                        onChanged: _busy || _uncertain
                            ? null
                            : (v) => _category = v!,
                      ),
                      TextFormField(
                        controller: _details,
                        enabled: !_busy && !_uncertain,
                        minLines: 3,
                        maxLines: 6,
                        maxLength: 2000,
                        decoration: const InputDecoration(
                          labelText: 'What happened?',
                        ),
                        validator: (raw) {
                          final text = (raw ?? '').trim();
                          return text.runes.length < 10 ||
                                  text.runes.length > 2000 ||
                                  RegExp(
                                    r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]',
                                  ).hasMatch(text)
                              ? 'Use 10–2000 characters without control marks.'
                              : null;
                        },
                      ),
                      FilledButton(
                        onPressed: _busy || !_checked || _uncertain
                            ? null
                            : () => _send(),
                        child: const Text('Confirm dispute report'),
                      ),
                    ],
                  ),
                ),
              OutlinedButton(
                onPressed: _busy ? null : () => _check(retry: _uncertain),
                child: Text(
                  _uncertain
                      ? 'Check or retry original dispute'
                      : 'Refresh support context',
                ),
              ),
              if(widget.openRequests!=null)OutlinedButton(onPressed:_busy?null:()=>widget.openRequests!(context),child:const Text('Support requests')),
              if (_context != null) ...[
                const SizedBox(height: 20),
                const Text(
                  'Order events',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Public order transitions. Private staff notes and bank records are excluded.',
                ),
                if(_context!['nextCursor'] is String && widget.loadOlder!=null)
                  OutlinedButton(onPressed:_busy||_older?null:_loadOlder,child:Text(_older?'Loading older events…':'Load older events')),
                for (final event in (_context!['events'] as List))
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(_event('${event['action']}')),
                    subtitle: Text(_time(event['created_at'])),
                  ),
                if ((_context!['events'] as List).isEmpty)
                  const Text('No order events.'),
                if (_context!['canOpenDispute'] == false &&
                    _context!['submission'] == null)
                  const Text(
                    'A new dispute cannot be opened in this order state. Existing order messages, evidence and late-payment support remain available from the order.',
                  ),
              ],
            ],
          ),
  );
}
