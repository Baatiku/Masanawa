import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Order-only communication. Never interprets a message as payment evidence.
class P2pOrderMessagesPage extends StatefulWidget {
  const P2pOrderMessagesPage({
    super.key,
    required this.orderId,
    required this.expectedUserId,
    required this.currentUserId,
    required this.loadPage,
    required this.send,
    required this.findRequest,
    this.storage = const FlutterSecureStorage(),
  });
  final String orderId;
  final String expectedUserId;
  final String? Function() currentUserId;
  final Future<Map<String, dynamic>> Function(String? cursor) loadPage;
  final Future<Map<String, dynamic>> Function(String body, String key) send;
  final Future<Map<String, dynamic>> Function(String key) findRequest;
  final FlutterSecureStorage storage;
  @override
  State<P2pOrderMessagesPage> createState() => _P2pOrderMessagesPageState();
}

class _P2pOrderMessagesPageState extends State<P2pOrderMessagesPage>
    with WidgetsBindingObserver {
  final _text = TextEditingController();
  final _items = <String, Map<String, dynamic>>{};
  final _events = <Map<String, dynamic>>[];
  Map<String, String>? _pending;
  String? _cursor;
  String? _error;
  String? _state;
  bool _loading = false;
  bool _sending = false;
  bool _ready = false;
  bool _canSend = false;
  bool _restricted = false;
  bool _accountGone = false;
  int _generation = 0;
  Timer? _timer;
  bool _foreground = true;
  String get _storageKey =>
      'masanawa.p2p.message.${widget.expectedUserId}.${widget.orderId}';
  bool get _same =>
      !_accountGone && widget.currentUserId() == widget.expectedUserId;
  bool get _live => mounted && _same;
  static const _timeout = Duration(seconds: 20);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _restore();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!_same) {
        _clearAccount();
        return;
      }
      if (timer.tick % 15 == 0 &&
          _foreground &&
          !_loading &&
          !_sending &&
          ModalRoute.of(context)?.isCurrent == true)
        _load();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    if (!_same) _clearAccount();
    if (_foreground && _same && !_loading && !_sending) _load();
  }

  void _clearAccount() {
    if (!mounted || _accountGone) return;
    _timer?.cancel();
    _generation++;
    _text.clear();
    setState(() {
      _accountGone = true;
      _items.clear();
      _events.clear();
      _pending = null;
      _canSend = false;
      _ready = false;
      _error = null;
    });
  }

  bool _denied(Object error) =>
      error is DioException &&
      const {401, 403, 404}.contains(error.response?.statusCode);
  void _failure(Object error, String message) {
    if (!_live) {
      _clearAccount();
      return;
    }
    if (_denied(error)) {
      _items.clear();
      _events.clear();
      _restricted = true;
      _canSend = false;
      _text.clear();
      _error = 'This discussion is unavailable for this account.';
    } else {
      _error = message;
    }
  }

  Future<void> _restore() async {
    try {
      final saved = await widget.storage.read(key: _storageKey);
      if (!_live) {
        _clearAccount();
        return;
      }
      if (saved != null) {
        final data = jsonDecode(saved);
        if (data is! Map ||
            data['body'] is! String ||
            data['requestKey'] is! String ||
            (data['body'] as String).isEmpty ||
            (data['body'] as String).length > 2000 ||
            !RegExp(
              r'^[A-Za-z0-9_-]{8,128}$',
            ).hasMatch(data['requestKey'] as String)) {
          throw const FormatException('Invalid saved request');
        }
        _pending = {
          'body': data['body'] as String,
          'requestKey': data['requestKey'] as String,
        };
        _text.text = _pending!['body']!;
      }
      setState(() => _ready = true);
      await _load();
      if (_live && _pending != null && !_restricted) await _recover();
    } catch (error) {
      if (!_live) {
        _clearAccount();
        return;
      }
      setState(
        () => _error =
            'Secure message recovery is unavailable. Reopen this discussion to retry.',
      );
    }
  }

  Future<void> _load({bool older = false}) async {
    if (!_same) {
      _clearAccount();
      return;
    }
    if (_loading || (older && _cursor == null)) return;
    final generation = ++_generation;
    setState(() => _loading = true);
    try {
      final page = await widget
          .loadPage(older ? _cursor : null)
          .timeout(_timeout);
      if (!_live || generation != _generation) return;
      final items = page['items'];
      if (items is! List ||
          page['canSend'] is! bool ||
          (page['nextCursor'] != null && page['nextCursor'] is! String)) {
        throw const FormatException('Invalid discussion');
      }
      final parsed = <String, Map<String, dynamic>>{};
      for (final raw in items) {
        if (raw is! Map ||
            raw['message_id'] is! String ||
            raw['body'] is! String ||
            raw['is_own'] is! bool ||
            !const {'buyer', 'seller'}.contains(raw['sender_role']) ||
            DateTime.tryParse('${raw['created_at']}') == null) {
          throw const FormatException('Invalid message');
        }
        parsed[raw['message_id'] as String] = Map<String, dynamic>.from(raw);
      }
      final events = <Map<String, dynamic>>[];
      final rawEvents = page['events'] ?? const [];
      if (rawEvents is! List)
        throw const FormatException('Invalid order activity');
      for (final raw in rawEvents) {
        if (raw is! Map ||
            raw['action'] is! String ||
            raw['event_id'] is! String ||
            DateTime.tryParse('${raw['created_at']}') == null) {
          throw const FormatException('Invalid order event');
        }
        events.add(Map<String, dynamic>.from(raw));
      }
      setState(() {
        _events
          ..clear()
          ..addAll(events);
        _items.addAll(parsed);
        if (older || _cursor == null) _cursor = page['nextCursor'] as String?;
        _canSend = page['canSend'] == true;
        _state = '${page['orderState'] ?? ''}';
        _restricted = false;
        _error = null;
      });
    } catch (error) {
      if (_live && generation == _generation)
        setState(
          () => _failure(
            error,
            'Could not refresh messages. Check your connection and retry.',
          ),
        );
    } finally {
      if (_live && generation == _generation) setState(() => _loading = false);
      if (!_same) _clearAccount();
    }
  }

  Future<void> _accepted(Map<String, dynamic> message) async {
    final pending = _pending;
    if (pending == null ||
        message['body'] != pending['body'] ||
        message['message_id'] is! String ||
        message['is_own'] != true) {
      throw const FormatException('Message acknowledgement mismatch');
    }
    await widget.storage.delete(key: _storageKey);
    if (!_live) {
      _clearAccount();
      return;
    }
    setState(() {
      _pending = null;
      _text.clear();
      _error = null;
    });
    await _load();
  }

  Future<void> _recover({bool retry = false}) async {
    if (!_live || _pending == null || _sending || _restricted) return;
    setState(() => _sending = true);
    try {
      Map<String, dynamic> message;
      try {
        message = await widget
            .findRequest(_pending!['requestKey']!)
            .timeout(_timeout);
      } on DioException catch (error) {
        if (error.response?.statusCode != 404) rethrow;
        if (!retry || !_canSend) {
          if (_live)
            setState(
              () => _error = _canSend
                  ? 'Message not found yet. Retry uses the original request.'
                  : 'No accepted message found. This order is read-only.',
            );
          return;
        }
        if (!_live) return;
        message = await widget
            .send(_pending!['body']!, _pending!['requestKey']!)
            .timeout(_timeout);
      }
      if (_live) await _accepted(message);
    } catch (error) {
      if (_live)
        setState(
          () => _failure(
            error,
            'Send outcome unknown. Check the original request before trying again.',
          ),
        );
    } finally {
      if (_live) setState(() => _sending = false);
      if (!_same) _clearAccount();
    }
  }

  Future<void> _send() async {
    if (!_live || !_ready || !_canSend || _sending || _pending != null) return;
    final body = _text.text.trim();
    if (body.isEmpty || body.length > 2000) return;
    if (RegExp(
      r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f\u202a-\u202e\u2066-\u2069]',
    ).hasMatch(body)) {
      setState(
        () => _error = 'Remove unsupported control characters before sending.',
      );
      return;
    }
    setState(() => _sending = true);
    try {
      final random = Random.secure();
      final key =
          'p2pmsg_${base64Url.encode(List.generate(24, (_) => random.nextInt(256))).replaceAll('=', '')}';
      final pending = {'body': body, 'requestKey': key};
      // Durable account/order-scoped identity exists before the first POST.
      await widget.storage.write(key: _storageKey, value: jsonEncode(pending));
      if (!_live) {
        _clearAccount();
        return;
      }
      setState(() => _pending = pending);
      final message = await widget.send(body, key).timeout(_timeout);
      if (_live) await _accepted(message);
    } catch (error) {
      if (_live)
        setState(
          () => _failure(
            error,
            _pending == null
                ? 'Could not save the message securely. Nothing was sent.'
                : 'Send outcome unknown. Check the original request before trying again.',
          ),
        );
    } finally {
      if (_live) setState(() => _sending = false);
      if (!_same) _clearAccount();
    }
  }

  @override
  void dispose() {
    _generation++;
    _timer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    _text.dispose();
    super.dispose();
  }

  String _when(Object? value) {
    final date = DateTime.parse('$value').toLocal();
    final locale = MaterialLocalizations.of(context);
    return '${locale.formatCompactDate(date)} · ${locale.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';
  }

  static const _eventLabels = {
    'reserve': 'Order opened and escrow reserved',
    'buyer_claimed_payment':
        'Buyer reported payment; bank receipt is not yet confirmed',
    'dispute_opened': 'Dispute opened',
    'escrow_released': 'Escrow released',
    'cancelled': 'Order cancelled and escrow returned',
    'expired': 'Unpaid order expired and escrow returned',
    'late_payment_reported': 'Late payment reported for review',
    'late_payment_escalated': 'Late payment review escalated',
    'late_payment_closed': 'Late payment review closed',
  };
  Widget _composer() => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (_pending != null)
        Wrap(
          spacing: 8,
          children: [
            TextButton(
              onPressed: _sending ? null : () => _recover(),
              child: const Text('Check send status'),
            ),
            TextButton(
              onPressed: _sending || !_canSend
                  ? null
                  : () => _recover(retry: true),
              child: const Text('Retry original message'),
            ),
          ],
        ),
      const SizedBox(height: 12),
      TextField(
        controller: _text,
        enabled: _ready && _canSend && !_sending && _pending == null,
        minLines: 1,
        maxLines: 4,
        maxLength: 2000,
        decoration: InputDecoration(
          labelText: _canSend
              ? 'Message about this order'
              : 'This order is read-only',
          border: const OutlineInputBorder(),
        ),
      ),
      Align(
        alignment: AlignmentDirectional.centerEnd,
        child: FilledButton.icon(
          onPressed: _ready && _canSend && !_sending && _pending == null
              ? _send
              : null,
          icon: const Icon(Icons.send),
          label: Text(_sending ? 'Checking…' : 'Send message'),
        ),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    if (!_same)
      return Scaffold(
        appBar: AppBar(title: const Text('Order messages')),
        body: const Center(
          child: Text(
            'Sign in to the original account to view this discussion.',
          ),
        ),
      );
    final items = _items.values.toList()
      ..sort((a, b) {
        final time = '${a['created_at']}'.compareTo('${b['created_at']}');
        return time != 0
            ? time
            : '${a['message_id']}'.compareTo('${b['message_id']}');
      });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order messages'),
        actions: [
          IconButton(
            tooltip: 'Refresh messages',
            onPressed: _loading || !_ready ? null : () => _load(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, box) {
            final history = <Widget>[
              Text(
                'Order ${widget.orderId}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (_state != null)
                Text(
                  _canSend
                      ? 'Buyer and seller discussion'
                      : 'Read-only order history',
                ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Use verified bank details from the order. Messages do not confirm bank payment.',
                ),
              ),
              if (_events.isNotEmpty && !_restricted)
                ExpansionTile(
                  title: const Text('Order activity'),
                  children: [
                    for (final event in _events.reversed)
                      ListTile(
                        title: Text(
                          _eventLabels[event['action']] ?? 'Order updated',
                        ),
                        subtitle: Text(_when(event['created_at'])),
                      ),
                  ],
                ),
              if (_loading) const LinearProgressIndicator(),
              if (_error != null) ...[
                Text(
                  _error!,
                  key: const ValueKey('discussion-error'),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
                if (!_restricted && _pending == null && _ready)
                  TextButton(
                    onPressed: () => _load(),
                    child: const Text('Retry refresh'),
                  ),
              ],
              if (_restricted)
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Discussion access restricted.'),
                ),
              if (!_restricted) ...[
                if (_cursor != null)
                  TextButton(
                    onPressed: _loading ? null : () => _load(older: true),
                    child: const Text('Load older messages'),
                  ),
                if (items.isEmpty && !_loading && _ready)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Text(
                      'No messages yet. Keep this conversation about the order.',
                    ),
                  ),
                for (final message in items)
                  Align(
                    alignment: message['is_own'] == true
                        ? AlignmentDirectional.centerEnd
                        : AlignmentDirectional.centerStart,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: message['is_own'] == true
                            ? Theme.of(context).colorScheme.primaryContainer
                            : Theme.of(context).colorScheme.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${message['is_own'] == true ? 'You · ' : ''}${message['sender_role'] == 'seller' ? 'Seller' : 'Buyer'}',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          SelectableText(message['body'] as String),
                          Text(
                            _when(message['created_at']),
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          if (message['is_own'] == true)
                            const Text('Accepted by server'),
                        ],
                      ),
                    ),
                  ),
              ],
            ];
            final compact =
                box.maxHeight < 650 ||
                MediaQuery.textScalerOf(context).scale(14) > 21;
            if (compact)
              return ListView(
                padding: const EdgeInsets.all(12),
                children: [...history, if (!_restricted) _composer()],
              );
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(12),
                    children: history,
                  ),
                ),
                if (!_restricted)
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: _composer(),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
