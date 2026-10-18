import 'wallet_flow_page.dart';
import 'p2p_order_presentation.dart';
import 'wallet_step_up_page.dart';
import 'dart:convert';
import 'dart:math';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String _maskedP2pAccount(Object? value) {
  final number=value?.toString()??'';
  return RegExp(r'^[0-9]{10}$').hasMatch(number)
    ? '••••${number.substring(6)}' : '••••';
}

/// Exact six-decimal MSNW amounts: UI never uses floating point for financial input.
String _micro(String text) {
  final value = text.trim();
  if (!RegExp(r'^[0-9]{1,12}(\.[0-9]{1,6})?$').hasMatch(value)) {
    throw const FormatException('Enter an MSNW amount (up to 6 decimals).');
  }
  final pieces = value.split('.');
  final atomic = BigInt.parse(pieces.first) * BigInt.from(1000000) +
    BigInt.parse((pieces.length == 2 ? pieces[1] : '').padRight(6, '0'));
  if (atomic <= BigInt.zero || atomic > BigInt.from(9223372036854775807)) {
    throw const FormatException('Amount is out of range.');
  }
  return atomic.toString();
}
String _msnw(Object? atomic) {
  final n = BigInt.tryParse('$atomic');
  if (n == null) return 'Unavailable';
  final major = n ~/ BigInt.from(1000000);
  final fractional = (n % BigInt.from(1000000)).toString().padLeft(6, '0')
      .replaceFirst(RegExp(r'0+$'), '');
  return fractional.isEmpty ? '$major MSNW' : '$major.$fractional MSNW';
}
String _ngn(Object? kobo) {
  final n = BigInt.tryParse('$kobo');
  if (n == null) return 'Unavailable';
  final major = n ~/ BigInt.from(100);
  final minor = (n % BigInt.from(100)).toString().padLeft(2, '0');
  return '₦$major.$minor';
}
Map<String, dynamic> _json(dynamic data) =>
    Map<String, dynamic>.from(data as Map);

class MsnwP2pScreen extends StatefulWidget {
  const MsnwP2pScreen({super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId, required this.accessToken,this.initialOrderId});
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? initialOrderId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  @override State<MsnwP2pScreen> createState() => _MsnwP2pScreenState();
}

class _MsnwP2pScreenState extends State<MsnwP2pScreen> {
  int _tab = 0;
  String _orderFilter = 'all';
  String? _nextOrderCursor;
  bool _loadingMore = false;
  bool _busy = false;
  final _cached = <int, List<Map<String, dynamic>>>{};
  final _buyDrafts = <String, String>{};
  final _secure = const FlutterSecureStorage();
  Map<String, dynamic>? _pendingOrder;
  bool _recoveryReady = false;
  String get _pendingKey => 'masanawa.p2p.order.${widget.expectedUserId}';
  late Future<List<Map<String, dynamic>>> _list = _load();

  @override
  void initState() {
    super.initState(  Future<void> _restorePending() async {
    try {
      final encoded = await _secure.read(key: _pendingKey);
      if (!_sameAccount || !mounted) return;
      Map<String, dynamic>? recovered;
      if (encoded != null) {
        final value = _json(jsonDecode(encoded));
        if (value['requestKey'] is! String ||
            value['offerId'] is! String || value['amountMicro'] is! String ||
            value['expectedRateKoboPerMsnw'] is! String ||
            value['expectedFeeBps'] is! int) {
          throw const FormatException('Invalid recovery record');
        }
        recovered = value;
      }
      setState(() {
        _pendingOrder = recovered;
        _recoveryReady = true;
      });
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(
          'Secure order recovery could not be checked. Buying is paused.')));
    }
  }

n this device.')));
    }
  }

  Future<void> _savePending(Map<String, dynamic> pending) async {
    await _secure.write(key: _pendingKey, value: jsonEncode(pending));
    if (!mounted || !_sameAccount) throw StateError('Account changed.');
    setState(() => _pendingOrder = pending);
  }

  Future<void> _clearPending() async {
    await _secure.delete(key: _pendingKey);
    if (mounted) setState(() => _pendingOrder = null);
  }

  /// Never mint a second request identity while the first outcome is unknown.
  Future<void> _resumePending() async {
    if (_busy || _pendingOrder == null) return;
    await _act(() async {
      final pending = _pendingOrder!;
      final requestKey = '${pending['requestKey']}';
      Map<String, dynamic> result;
      try {
        result = _json(await _request('GET',
          '/orders/by-request/$requestKey'));
      } on DioException catch (error) {
        if (error.response?.statusCode != 404) rethrow;
        // A missing durable order may be safely retried only with its ORIGINAL
        // buyer-authorized payload and idempotency key.
        try {
          result = _json(await _request('POST', '/orders', {
            'offerId': pending['offerId'],
            'amountMicro': pending['amountMicro'],
            'expectedRateKoboPerMsnw': pending['expectedRateKoboPerMsnw'],
            'expectedFeeBps': pending['expectedFeeBps'],
          }, requestKey));
        } on DioException catch (retryError) {
          if (retryError.response?.statusCode == 409 &&
              retryError.response?.data is Map &&
              (retryError.response!.data as Map)['error'] == 'p2p.quote_changed') {
            await _clearPending();
            throw StateError('The price or fee has changed. Review a new quote before ordering.');
          }
          rethrow;
        }
      }
      final orderId = result['orderId'];
      if (orderId is! String || orderId.isEmpty) {
        throw StateError('Order result was incomplete. Check again.');
      }
      await _clearPending();
      if (mounted) await _orderDetail(orderId);
    });
  }
  bool get _sameAccount => widget.currentUserId() == widget.expectedUserId;
  String get _prefix => '${widget.baseUrl}/v1/wallet/msnw/p2p';
  Options get _headers => Options(headers: {
    'Authorization': 'Bearer ${widget.accessToken() ?? ''}',
    'Cache-Control': 'no-store',
  });
  Future<dynamic> _request(String method, String uri, [dynamic data,
      String? idempotency,String? stepUpToken]) async {
    if (!_sameAccount || widget.accessToken()?.isNotEmpty != true) {
      throw StateError('Sign in again to access P2P.');
    }
    final options = _headers.copyWith(headers: {
      ...?_headers.headers,
      if (idempotency != null) 'Idempotency-Key': idempotency,
      if (stepUpToken != null) 'X-Masanawa-Step-Up': stepUpToken,
    });
    final r = await widget.dio.request<dynamic>('$_prefix$uri',
      options: options.copyWith(method: method), data: data);
    if (!_sameAccount) throw StateError('Account changed. Please reopen P2P.');
    return r.data;
  }
  Future<List<Map<String, dynamic>>> _load() async {
    final tab = _tab;
    final filter = _orderFilter;
    final path = switch (tab) {
      0 => '/offers', 1 => '/my-offers',
      2 => '/orders/page?filter=$filter',
      _ => '/notifications',
    };
    final json = _json(await _request('GET', path));
    final items = (json['items'] as List<dynamic>? ?? [])
        .map((item) => _json(item)).toList();
    if (_sameAccount && (tab != 2 || filter == _orderFilter)) {
      _cached[tab] = items;
      if (tab == 2) _nextOrderCursor = json['nextCursor'] as String?;
    }
    return items;
  }

  void _reload([int? tab]) {
    setState(() {
      if (tab != null) _tab = tab;
      if (_tab == 2) _nextOrderCursor = null;
      _list = _load();
    });
  }

  Future<void> _loadMoreOrders() async {
    final cursor = _nextOrderCursor;
    if (_loadingMore || cursor == null || _tab != 2 || !_sameAccount) return;
    final filter = _orderFilter;
    setState(() => _loadingMore = true);
    try {
      final json = _json(await _request('GET',
        '/orders/page?filter=$filter&cursor=${Uri.encodeComponent(cursor)}'));
      final next = (json['items'] as List<dynamic>? ?? []).map(_json).toList();
      if (!mounted || !_sameAccount || _tab != 2 || filter != _orderFilter) return;
      final existing = _cached[2] ?? <Map<String, dynamic>>[];
      final seen = existing.map((e) => e['order_id']).toSet();
      final combined = [...existing, ...next.where((e) => seen.add(e['order_id']))];
      setState(() {
        _cached[2] = combined;
        _nextOrderCursor = json['nextCursor'] as String?;
        _list = Future.value(combined);
      });
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not load more orders. Try again.')));
    } finally {
      if (mounted) setState(() => _loadingMore = false);
    }
  }
  Future<void> _act(Future<void> Function() action) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await action();
      if (mounted && _sameAccount && widget.initialOrderId==null) _reload();
    } catch (error) {
      if (mounted) {
        final message = error is DioException
            ? (error.response?.data is Map
                ? '${(error.response!.data as Map)['error'] ?? 'P2P unavailable'}'
                : 'Connection failed; retry to check the order state.')
            : '$error';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
  Future<bool> _confirm(String title, String details) async {
    return await openWalletPage<bool>(context: context,
      builder: (ctx) => WalletReviewContent(title: Text(title), content: Text(details),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx,false),
          child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx,true),
            child: const Text('Confirm')),
        ])) ?? false;
  }
  Future<void> _buy(Map<String,dynamic> offer) async {
    if (!_recoveryReady) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Check unfinished orders before starting a new purchase.')));
      return;
    }
    // An uncertain request always takes precedence over placing a new order.
    if (_pendingOrder != null) { await _resumePending(); return; }
    final offerId = '${offer['offer_id']}';
    final entered = await openWalletPage<String>(
      context: context,
      title: 'Buy MSNW',
      builder: (_) => MsnwP2pBuyAmountForm(
        offer: offer,
        initialAmount: _buyDrafts[offerId],
        onChanged: (text) => _buyDrafts[offerId] = text,
      ),
    );
    if (entered == null || !mounted) return;
    late final String micro;
    try { micro = _micro(entered); }
    catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Enter a positive MSNW amount with up to six decimals.')));
      return;
    }
    late final Map<String, dynamic> quote;
    try {
      quote = _json(await _request('GET',
        '/offers/${offer['offer_id']}/quote?amountMicro=$micro'));
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Offer availability or price changed. Refresh offers and try again.')));
      return;
    }
    if (!mounted || !_sameAccount) return;
    final seconds = quote['paymentWindowSeconds'];
    final feeBps = quote['feeBps'];
    if (quote['rateKoboPerMsnw'] is! String ||
        quote['feeMicro'] is! String || quote['fiatKobo'] is! String ||
        seconds is! int || seconds <= 0 || feeBps is! int) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Current payment terms are unavailable.')));
      return;
    }
    final approved = await openWalletPage<bool>(
      context: context,
      builder: (ctx) => WalletReviewContent(
        title: const Text('Review P2P order'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _p2pReviewLine('You receive', _msnw(quote['amountMicro'])),
            _p2pReviewLine('Pay seller', _ngn(quote['fiatKobo'])),
            _p2pReviewLine('Seller escrow fee', _msnw(quote['feeMicro'])),
            _p2pReviewLine('Receiving bank', '${quote['bankName'] ?? 'Verified account'}'),
            _p2pReviewLine('Payment window', '${seconds ~/ 60} minutes'),
            const SizedBox(height: 12),
            const Text('Bank payment is made directly to the seller. '
              'Only the seller’s confirmed receipt can release escrow.'),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Change amount')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Place order')),
        ],
      ),
    ) ?? false;
    if (!approved || !mounted || !_sameAccount) return;
    final rng = Random.secure();
    final bytes = List<int>.generate(18, (_) => rng.nextInt(256));
    final requestKey = 'p2p-${base64Url.encode(bytes).replaceAll('=', '')}';
    try {
      // Durable request identity is saved BEFORE the network write.
      await _savePending({
        'requestKey': requestKey,
        'offerId': quote['offerId'],
        'amountMicro': quote['amountMicro'],
        'expectedRateKoboPerMsnw': quote['rateKoboPerMsnw'],
        'expectedFeeBps': feeBps,
      });
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Secure order recovery is unavailable. No order was sent.')));
      return;
    }
    await _resumePending();
  }

  Widget _p2pReviewLine(String title, String value) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(children: [
      Expanded(child: Text(title,
        style: Theme.of(context).textTheme.bodyMedium)),
      Flexible(child: Text(value, textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.titleSmall)),
    ]),
  );

  Future<void> _verifySellerBank() async {
    late final List<Map<String,dynamic>> banks;
    try {
      final payload = _json(await _request('GET', '/banks'));
      banks = (payload['items'] as List<dynamic>? ?? [])
        .map(_json).toList(growable:false);
      if (banks.isEmpty) throw StateError('No banks available');
    } catch (error) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text('Bank directory unavailable: $error')));
      return;
    }
    if (!mounted) return;
    final verified = await openWalletPage<bool>(
      context: context,
      title: 'Verify seller bank',
      builder: (_) => MsnwP2pBankVerificationForm(
        banks: banks,
        onSubmit: (bankCode, accountNumber) async {
          if(!_sameAccount)throw StateError('Sign in again to continue.');
          final parameters={'bankCode':bankCode,'accountNumber':accountNumber};
          await widget.dio.post<Map<String,dynamic>>(
            '${widget.baseUrl}/v1/auth/security/bank/start',
            data:parameters,options:_headers,
          );
          if(!mounted || !_sameAccount)throw StateError('Account changed.');
          final code=await openWalletPage<String>(
            context:context,title:'Verify bank details',wrapScaffold:false,
            builder:(_)=>const WalletStepUpPage(bankDetails:true),
          );
          if(code==null)throw StateError('Bank verification cancelled.');
          final confirmation=await widget.dio.post<Map<String,dynamic>>(
            '${widget.baseUrl}/v1/auth/security/bank/confirm',
            data:{...parameters,'code':code},options:_headers,
          );
          if(!_sameAccount)throw StateError('Account changed.');
          final stepUpToken=confirmation.data?['stepUpToken'];
          if(stepUpToken is! String || stepUpToken.isEmpty)
            throw StateError('Could not approve bank verification.');
          await _request('POST', '/methods/verify', {
            'bankCode': bankCode,
            'accountNumber': accountNumber,
            'consent': true,
          },null,stepUpToken);
        },
      ),
    );
    if (mounted && verified == true && _sameAccount) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your seller bank was verified.')),
      );
      _reload(1);
    }
  }

  Future<void> _sell() async {
    late final List<Map<String,dynamic>> methods;
    try {
      final payload=_json(await _request('GET','/methods'));
      methods=(payload['items'] as List<dynamic>? ?? []).map(_json).toList();
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text('Payment methods unavailable: $error')));
      return;
    }
    if(!mounted)return;
    if(methods.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Verify your bank account before creating an offer.')));
      return;
    }
    // A seller may verify multiple accounts. Never publish an offer with a
    // silently selected first bank or lose input through separate modal steps.
    late final String availableMicro;
    try {
      final capacity = _json(await _request('GET', '/seller-capacity'));
      availableMicro = '${capacity['availableMicro']}';
      if (!RegExp(r'^[0-9]+
      builder: (_) => MsnwP2pSellerOfferForm(
        methods: methods, availableMicro: availableMicro,
        onPublish: (input) async {
          await _request('POST', '/offers', input);
        },
      ),
    );
    if (mounted && _sameAccount) {
      if (completed == true) _reload(0);
      if (completed == false) _reload(1); // Uncertain result: check My Offers.
    }
  }

  Future<void> _orderDetail(String id) async {
    if(!mounted)return;
    await openWalletPage<void>(context:context,title:'P2P order',wrapScaffold:false,builder:(_)=>_orderView(id));
  }
  Widget _orderView(String id)=>_P2pOrderDetail(
        load: () async => _json(await _request('GET','/orders/$id')),
        act: (action, [reason]) async {
          await _request('POST','/orders/$id/$action',
            reason == null ? {} : {'reason': reason});
        },
        userId: widget.expectedUserId,
        loadReceipt: () async => _json(await _request('GET','/orders/$id/receipt')),
        listEvidence: () async {
          final data=_json(await _request('GET','/orders/$id/evidence'));
          return (data['items'] as List<dynamic>? ?? []).map(_json).toList();
        },
        uploadEvidence: (data) async {
          await _request('POST','/orders/$id/evidence/upload',data);
        },
        openEvidence: (evidenceId) async {
          final link=_json(await _request('GET',
            '/orders/$id/evidence/$evidenceId'));
          final uri=Uri.tryParse('${link['url'] ?? ''}');
          if(uri==null||uri.scheme!='https')throw StateError('Evidence link unavailable');
          if(!await launchUrl(uri,mode:LaunchMode.externalApplication)) {
            throw StateError('Unable to open private evidence');
          }
        },
        confirmReceipt: (order) async {
          await _request('POST','/orders/$id/confirm-receipt',{
            'confirmation':{
              'orderId':id,
              'fiatKobo':'${order['fiat_kobo']}',
              'attestation':'I HAVE RECEIVED PAYMENT',
            },
          });
        },
      );
  String _time(Object? value) {
    final date = DateTime.tryParse('${value ?? ''}')?.toLocal();
    if (date == null) return '';
    final local = MaterialLocalizations.of(context);
    return '${local.formatMediumDate(date)} · '
        '${local.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';
  }

  Widget _tile(Widget child, VoidCallback? onTap) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    child: Material(
      color: Theme.of(context).colorScheme.surface,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: Theme.of(context).dividerColor.withValues(alpha: .45)),
      ),
      child: InkWell(onTap: onTap,
        child: Padding(padding: const EdgeInsets.all(14), child: child)),
    ),
  );

  Widget _offerTile(Map<String, dynamic> item, bool own) => _tile(
    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: .12),
        foregroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(own ? Icons.account_balance_wallet_outlined : Icons.swap_horiz),
      ),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(child: Text('${_ngn(item['rate_kobo_per_msnw'])} / MSNW',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700))),
          Text(own ? (item['state'] == 'active' ? 'Active' : 'Closed') : 'Buy',
            style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
        ]),
        const SizedBox(height: 7),
        Text('Available  ${_msnw(item['remaining_micro'])}'),
        const SizedBox(height: 5),
        Text('Limit  ${_msnw(item['min_micro'])} – ${_msnw(item['max_micro'])}',
          style: Theme.of(context).textTheme.bodySmall),
        if (item['bank_name'] is String) ...[
          const SizedBox(height: 7),
          Row(children: [
            const Icon(Icons.account_balance_outlined, size: 16),
            const SizedBox(width: 5),
            Expanded(child: Text('${item['bank_name']}',
              maxLines: 1, overflow: TextOverflow.ellipsis)),
          ]),
        ],
      ])),
    ]),
    _busy ? null : () => own ? _manageOffer(item) : _buy(item),
  );

  Widget _orderTile(Map<String, dynamic> item) {
    final buyer = item['buyer_id'] == widget.expectedUserId;
    return _tile(Row(children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: .12),
        foregroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(buyer ? Icons.south_west : Icons.north_east),
      ),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(child: Text(buyer ? 'Buy MSNW' : 'Sell MSNW',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700))),
          Text(_msnw(item['amount_micro']), style: Theme.of(context).textTheme.titleSmall),
        ]),
        const SizedBox(height: 5),
        Row(children: [
          Expanded(child: Text(p2pOrderStatus('${item['state'] ?? ''}'),
            maxLines: 1, overflow: TextOverflow.ellipsis)),
          Text(_ngn(item['fiat_kobo']), style: Theme.of(context).textTheme.bodySmall),
        ]),
        const SizedBox(height: 5),
        Text(_time(item['created_at']), style: Theme.of(context).textTheme.labelSmall),
      ])),
      const Icon(Icons.chevron_right, size: 18),
    ]), _busy ? null : () => _orderDetail('${item['order_id']}'));
  }

  Widget _updateTile(Map<String, dynamic> item) => _tile(
    Row(children: [
      const CircleAvatar(child: Icon(Icons.notifications_none)),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(p2pOrderStatus('${item['state'] ?? ''}')),
        const SizedBox(height: 5),
        Text(_time(item['created_at']), style: Theme.of(context).textTheme.bodySmall),
      ])),
      const Icon(Icons.chevron_right),
    ]), _busy ? null : () => _orderDetail('${item['order_id']}'));

  Future<void> _manageOffer(Map<String, dynamic> offer) async {
    await openWalletPage<void>(context: context, title: 'My sell offer',
      builder: (route) => WalletReviewContent(
        title: const Text('Offer details'),
        content: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start, children: [
          _p2pReviewLine('Price', '${_ngn(offer['rate_kobo_per_msnw'])} / MSNW'),
          _p2pReviewLine('Available', _msnw(offer['remaining_micro'])),
          _p2pReviewLine('Minimum', _msnw(offer['min_micro'])),
          _p2pReviewLine('Maximum', _msnw(offer['max_micro'])),
          const SizedBox(height: 10),
          const Text('Closing stops new orders, but never changes existing escrow.'),
        ]),
        actions: [
          TextButton(onPressed: () => Navigator.pop(route),
            child: const Text('Back')),
          if (offer['state'] == 'active') OutlinedButton.icon(
            icon: const Icon(Icons.block_outlined),
            label: const Text('Close offer'),
            onPressed: () async {
              final approved = await _confirm('Close offer?',
                'Existing escrow and orders are unaffected.');
              if (!approved || !mounted) return;
              try {
                await _request('POST', '/offers/${offer['offer_id']}/close', {});
                if (!mounted) return;
                Navigator.pop(route);
                _reload(1);
              } catch (_) {
                if (mounted) ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Could not close offer. Refresh its status.')));
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _empty() {
    final title = ['No offers available', 'No sell offers yet',
      'No P2P orders yet', 'No updates yet'][_tab];
    final description = ['Sellers with funded capacity appear here.',
      'Create an offer to sell MSNW using your verified bank.',
      'Your purchases and sales appear here.', 'Order activity appears here.'][_tab];
    return Padding(padding: const EdgeInsets.all(35),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.receipt_long_outlined, size: 38,
          color: Theme.of(context).colorScheme.outline),
        const SizedBox(height: 12),
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 6),
        Text(description, textAlign: TextAlign.center),
        TextButton.icon(onPressed: () => _reload(), icon: const Icon(Icons.refresh),
          label: const Text('Refresh')),
      ]));
  }

  Widget _loading() => ListView.builder(itemCount: 4,
    itemBuilder: (_, index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Container(height: 95,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(width: 160, height: 14,
            color: Theme.of(context).colorScheme.surfaceContainerHighest),
          const SizedBox(height: 12),
          Container(width: 215, height: 10,
            color: Theme.of(context).colorScheme.surfaceContainerHighest),
        ]),
      )));

  @override Widget build(BuildContext context) {
    final initial = widget.initialOrderId;
    if (initial != null) {
      if (!RegExp(r'^[a-fA-F0-9-]{36}$').hasMatch(initial)) {
        return const Scaffold(body: Center(child: Text('Order unavailable')));
      }
      return _orderView(initial);
    }
    if (!_sameAccount) return const Scaffold(body: Center(
      child: Text('Sign in again to continue')));
    return Scaffold(
      appBar: AppBar(title: const Text('MSNW P2P')),
      body: Column(children: [
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(children: [
            for (final (index, title) in [(0, 'Buy'), (1, 'Sell'),
              (2, 'Orders'), (3, 'Updates')])
              Padding(padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(label: Text(title), showCheckmark: false,
                  selected: _tab == index,
                  onSelected: (_) { if (_tab != index) _reload(index); })),
          ])),
        if (!_recoveryReady) ListTile(
          leading: const Icon(Icons.lock_clock_outlined),
          title: const Text('Checking unfinished orders'),
          subtitle: const Text('Buying is paused until secure recovery is available.'),
          trailing: IconButton(
            tooltip: 'Retry secure recovery',
            icon: const Icon(Icons.refresh),
            onPressed: _restorePending,
          ),
        ),
        if (_pendingOrder != null) ListTile(
          leading: const Icon(Icons.sync_outlined),
          title: const Text('Check unfinished order'),
          subtitle: const Text('Recover the original request before placing another.'),
          trailing: const Icon(Icons.chevron_right),
          onTap: _busy ? null : _resumePending,
        ),
        if (_tab == 1) Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 10),
          child: Row(children: [
            Expanded(child: OutlinedButton.icon(
              onPressed: _busy ? null : _verifySellerBank,
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Verify bank'))),
            const SizedBox(width: 8),
            Expanded(child: FilledButton.icon(
              onPressed: _busy ? null : _sell,
              icon: const Icon(Icons.add), label: const Text('Create offer'))),
          ])),
        if (_tab == 2) Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 6),
          child: Align(alignment: Alignment.centerLeft,
            child: Wrap(spacing: 8, children: [
              for (final filter in ['all', 'active', 'finished'])
                ChoiceChip(label: Text(switch(filter) {
                    'active' => 'Active', 'finished' => 'Finished', _ => 'All',
                  }), selected: _orderFilter == filter, showCheckmark: false,
                  onSelected: (_) {
                    if (_orderFilter == filter) return;
                    setState(() {
                      _orderFilter = filter;
                      _cached.remove(2);
                      _nextOrderCursor = null;
                      _list = _load();
                    });
                  }),
            ]))),
        Expanded(child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _list,
          builder: (context, snapshot) {
            final cached = _cached[_tab] ?? <Map<String, dynamic>>[];
            if (snapshot.connectionState != ConnectionState.done &&
                cached.isEmpty) return _loading();
            final items = snapshot.hasData ? snapshot.data! : cached;
            if (snapshot.hasError && items.isEmpty) return Center(child: Column(
              mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.wifi_off_outlined, size: 32),
                const SizedBox(height: 12),
                const Text('Unable to load P2P'),
                TextButton.icon(onPressed: () => _reload(),
                  icon: const Icon(Icons.refresh), label: const Text('Retry')),
              ]));
            final filtered = items;
            return RefreshIndicator(
              onRefresh: () async { _reload(); try { await _list; } catch (_) {} },
              child: ListView(
                key: PageStorageKey<String>('p2p-$_tab-$_orderFilter'),
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  if (snapshot.hasError || (cached.isNotEmpty &&
                    snapshot.connectionState != ConnectionState.done))
                    ListTile(leading: const Icon(Icons.wifi_off_outlined),
                      title: const Text('Showing saved results'),
                      subtitle: const Text('Refresh when your connection returns.'),
                      trailing: TextButton(onPressed: () => _reload(),
                        child: const Text('Retry'))),
                  if (filtered.isEmpty) _empty(),
                  for (final item in filtered)
                    switch (_tab) {
                      0 => _offerTile(item, false),
                      1 => _offerTile(item, true),
                      2 => _orderTile(item),
                      _ => _updateTile(item),
                    },
                  if (_tab == 2 && _nextOrderCursor != null)
                    Padding(padding: const EdgeInsets.all(16),
                      child: OutlinedButton.icon(
                        onPressed: _loadingMore ? null : _loadMoreOrders,
                        icon: Icon(_loadingMore ? Icons.hourglass_top : Icons.expand_more),
                        label: Text(_loadingMore ? 'Loading…' : 'Load more orders'),
                      )),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        )),
      ]),
    );
  }
}

/// Amount and bounds are validated using exact integer MSNW units.
/// Final fiat, fee and payment window are obtained from the server afterwards.
class MsnwP2pBuyAmountForm extends StatefulWidget {
  const MsnwP2pBuyAmountForm({
    super.key,
    required this.offer,
    this.initialAmount,
    this.onChanged,
  });
  final Map<String, dynamic> offer;
  final String? initialAmount;
  final ValueChanged<String>? onChanged;

  @override
  State<MsnwP2pBuyAmountForm> createState() => _MsnwP2pBuyAmountFormState();
}

class _MsnwP2pBuyAmountFormState extends State<MsnwP2pBuyAmountForm> {
  late final TextEditingController _amount;
  String? _error;

  @override
  void initState() {
    super.initState();
    _amount = TextEditingController(text: widget.initialAmount);
    _amount.addListener(_changed);
  }

  void _changed() {
    widget.onChanged?.call(_amount.text);
    if (mounted) setState(() => _error = _validate());
  }

  String? _validate() {
    try {
      final amount = BigInt.parse(_micro(_amount.text));
      final min = BigInt.tryParse('${widget.offer['min_micro']}');
      final max = BigInt.tryParse('${widget.offer['max_micro']}');
      final available = BigInt.tryParse('${widget.offer['remaining_micro']}');
      if (min == null || max == null || available == null) {
        return 'Offer limits are unavailable. Refresh offers.';
      }
      if (amount < min) return 'Below the seller’s minimum amount.';
      if (amount > max || amount > available) {
        return 'Amount exceeds the available offer limit.';
      }
      return null;
    } catch (_) {
      return 'Enter a positive amount with up to six decimals.';
    }
  }

  @override
  void dispose() {
    _amount.removeListener(_changed);
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rate = _ngn(widget.offer['rate_kobo_per_msnw']);
    return WalletReviewContent(
      title: const Text('Buy MSNW'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Seller’s rate', style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: 4),
              Text('$rate per MSNW',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700)),
              const Divider(height: 22),
              Text('Available: ${_msnw(widget.offer['remaining_micro'])}'),
              const SizedBox(height: 5),
              Text('Minimum: ${_msnw(widget.offer['min_micro'])}'),
              Text('Maximum: ${_msnw(widget.offer['max_micro'])}'),
              if (widget.offer['bank_name'] is String) ...[
                const SizedBox(height: 10),
                Row(children: [
                  const Icon(Icons.account_balance_outlined, size: 18),
                  const SizedBox(width: 8),
                  Expanded(child: Text('${widget.offer['bank_name']}')),
                ]),
              ],
            ]),
          ),
          const SizedBox(height: 22),
          TextField(
            key: const ValueKey('p2p-buy-amount'),
            controller: _amount,
            autofocus: true,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: 'Amount in MSNW',
              hintText: 'e.g. 10.5',
              errorText: _amount.text.isEmpty ? null : _error,
            ),
            onSubmitted: (_) {
              if (_validate() == null) Navigator.of(context).pop(_amount.text.trim());
            },
          ),
          const SizedBox(height: 12),
          const Text('The next screen confirms current bank-payment totals, '
            'escrow fees and deadline before you place an order.'),
        ],
      ),
      actions: [
        FilledButton(
          onPressed: _validate() == null
            ? () => Navigator.of(context).pop(_amount.text.trim()) : null,
          child: const Text('Review price and fees'),
        ),
      ],
    );
  }
}

/// Dedicated identity-consented bank verification page. An unsuccessful
/// request leaves the bank, account number and consent intact for correction.
/// Never infer a verification result from the typed account details.
class MsnwP2pBankVerificationForm extends StatefulWidget {
  const MsnwP2pBankVerificationForm({
    super.key, required this.banks, required this.onSubmit,
  });

  final List<Map<String, dynamic>> banks;
  final Future<void> Function(String bankCode, String accountNumber) onSubmit;

  @override
  State<MsnwP2pBankVerificationForm> createState() =>
      _MsnwP2pBankVerificationFormState();
}

class _MsnwP2pBankVerificationFormState
    extends State<MsnwP2pBankVerificationForm> {
  final _form = GlobalKey<FormState>();
  final _number = TextEditingController();
  String? _bankCode;
  bool _consent = false;
  bool _verifying = false;
  bool _uncertain = false;
  String? _error;

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  Future<void> _verify() async {
    if (_verifying || _uncertain || !_form.currentState!.validate()) return;
    if (!_consent) {
      setState(() => _error = 'Please consent to bank verification first.');
      return;
    }
    final validBank = widget.banks.any(
      (bank) => '${bank['code']}' == _bankCode,
    );
    if (!validBank) {
      setState(() => _error = 'Select a verified Nigerian bank.');
      return;
    }
    setState(() { _verifying = true; _error = null; });
    try {
      await widget.onSubmit(_bankCode!, _number.text.trim());
      if (mounted) Navigator.of(context).pop(true);
    } on DioException catch (e) {
      if (!mounted) return;
      final uncertain = e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          (e.response?.statusCode ?? 0) >= 500;
      setState(() {
        _verifying = false;
        _uncertain = uncertain;
        _error = uncertain
            ? 'Verification result is uncertain. Check your verified '
                'payment methods before sending another request.'
            : 'The bank could not be verified. Check your details and retry.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _verifying = false;
        _uncertain = true;
        _error = 'Bank verification could not be confirmed. '
            'Check payment methods before submitting again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Form(
      key: _form,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 36),
        children: [
          Text('Verify your receiving bank',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),

          const SizedBox(height: 20),
          WalletSelectionField<String>(
            key: const ValueKey('p2p-bank-identity'),
            initialValue: _bankCode,
            isExpanded: true,
            items: [
              for (final bank in widget.banks)
                DropdownMenuItem(
                  value: '${bank['code']}',
                  child: Text('${bank['name']}', overflow: TextOverflow.ellipsis),
                ),
            ],
            decoration: const InputDecoration(labelText: 'Nigerian bank'),
            onChanged: _verifying || _uncertain ? null
                : (value) => setState(() { _bankCode = value; _error = null; }),
            validator: (value) => value == null ? 'Choose a bank' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            key: const ValueKey('p2p-bank-number'),
            controller: _number,
            maxLength: 10,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            enabled: !_verifying && !_uncertain,
            decoration: const InputDecoration(
              labelText: '10-digit account number',
            ),
            validator: (value) =>
                RegExp(r'^[0-9]{10}$').hasMatch(value?.trim() ?? '')
                ? null : 'Enter a valid 10-digit account number',
          ),
          CheckboxListTile(
            key: const ValueKey('p2p-bank-consent'),
            contentPadding: EdgeInsets.zero,
            value: _consent,
            onChanged: _verifying || _uncertain ? null : (value) =>
                setState(() { _consent = value ?? false; _error = null; }),
            title: const Text(
              'I consent to Paystack verifying these bank details.',
            ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Semantics(
              liveRegion: true,
              child: Text(_error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
          ],
          const SizedBox(height: 18),
          if (!_uncertain)
            FilledButton.icon(
              key: const ValueKey('p2p-bank-verify'),
              onPressed: _verifying ? null : _verify,
              icon: const Icon(Icons.verified_user_outlined),
              label: Text(_verifying ? 'Verifying…' : 'Verify bank'),
            )
          else
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).pop(false),
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Return to payment methods'),
            ),
        ],
      ),
    ),
  );
}

/// Complete, self-contained P2P seller offer editor. Input survives failed
/// validation or network requests; no write occurs before Review and Publish.
/// The parent owns the authenticated gateway call and account-fenced route.
class MsnwP2pSellerOfferForm extends StatefulWidget {
  const MsnwP2pSellerOfferForm({
    super.key,
    required this.methods,
    required this.onPublish,
    this.availableMicro,
  });

  final List<Map<String, dynamic>> methods;
  final String? availableMicro;
  final Future<void> Function(Map<String, dynamic> payload) onPublish;

  @override
  State<MsnwP2pSellerOfferForm> createState() => _MsnwP2pSellerOfferFormState();
}

class _MsnwP2pSellerOfferFormState extends State<MsnwP2pSellerOfferForm> {
  final _form = GlobalKey<FormState>();
  final _rate = TextEditingController();
  final _minimum = TextEditingController();
  final _maximum = TextEditingController();
  final _inventory = TextEditingController();
  String? _paymentMethodId;
  Map<String, dynamic>? _payload;
  bool _reviewing = false;
  bool _saving = false;
  bool _uncertain = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    if (widget.methods.length == 1) {
      _paymentMethodId = '${widget.methods.first['method_id']}';
    }
  }

  @override
  void dispose() {
    _rate.dispose();
    _minimum.dispose();
    _maximum.dispose();
    _inventory.dispose();
    super.dispose();
  }

  String? _validAmount(String? text) {
    try {
      _micro(text?.trim() ?? '');
      return null;
    } catch (_) {
      return 'Enter a positive MSNW amount (up to 6 decimals).';
    }
  }

  String? _validRate(String? text) {
    if (!RegExp(r'^[0-9]{1,10}(\.[0-9]{1,2})?$').hasMatch(text?.trim() ?? '')) {
      return 'Enter a valid NGN price with at most 2 decimals.';
    }
    final parts = text!.trim().split('.');
    final amount = BigInt.parse(parts[0]) * BigInt.from(100) +
        BigInt.parse((parts.length == 2 ? parts[1] : '').padRight(2, '0'));
    return amount <= BigInt.zero ? 'Rate must be greater than zero.' : null;
  }

  void _review() {
    if (!_form.currentState!.validate()) return;
    final method = widget.methods.where(
      (item) => '${item['method_id']}' == _paymentMethodId,
    ).toList(growable: false);
    if (method.length != 1) {
      setState(() => _error = 'Choose a verified seller bank.');
      return;
    }
    final parts = _rate.text.trim().split('.');
    final rateKobo = (BigInt.parse(parts.first) * BigInt.from(100) +
        BigInt.parse((parts.length == 2 ? parts[1] : '').padRight(2, '0')))
        .toString();
    final minMicro = _micro(_minimum.text);
    final maxMicro = _micro(_maximum.text);
    final inventoryMicro = _micro(_inventory.text);
    if (widget.availableMicro != null &&
        BigInt.parse(inventoryMicro) > BigInt.parse(widget.availableMicro!)) {
      setState(() => _error = 'Inventory exceeds your available MSNW.');
      return;
    }
    if (BigInt.parse(minMicro) > BigInt.parse(maxMicro) ||
        BigInt.parse(maxMicro) > BigInt.parse(inventoryMicro)) {
      setState(() => _error =
          'Minimum must not exceed maximum, and inventory must cover maximum.');
      return;
    }
    setState(() {
      _error = null;
      _reviewing = true;
      _payload = <String, dynamic>{
        'paymentMethodId': _paymentMethodId,
        'rateKoboPerMsnw': rateKobo,
        'minMicro': minMicro,
        'maxMicro': maxMicro,
        'inventoryMicro': inventoryMicro,
      };
    });
  }

  Future<void> _publish() async {
    if (_saving || _uncertain || _payload == null) return;
    setState(() { _saving = true; _error = null; });
    try {
      await widget.onPublish(_payload!);
      if (mounted) Navigator.of(context).pop(true);
    } on DioException catch (error) {
      if (!mounted) return;
      final unknown = error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout ||
          (error.response?.statusCode ?? 0) >= 500;
      setState(() {
        _saving = false;
        _uncertain = unknown;
        _error = unknown
            ? 'Offer outcome is unconfirmed. Check My Offers before creating '
                'another offer. Your inputs are retained.'
            : 'Offer could not be published. Review your details and try again.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _error = 'Offer could not be confirmed. Review the offer list '
            'before submitting another request.';
        _uncertain = true;
      });
    }
  }

  Widget _reviewRow(String label,String value) => Padding(
    padding:const EdgeInsets.symmetric(vertical:7),
    child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Expanded(child:Text(label,style:Theme.of(context).textTheme.bodyMedium)),
      Expanded(child:Text(value,textAlign:TextAlign.end,
        style:Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight:FontWeight.w600))),
    ]),
  );

  Widget _sectionTitle(String title,String note) => Padding(
    padding:const EdgeInsets.fromLTRB(0,18,0,12),
    child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
      Text(title,style:Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight:FontWeight.w700)),
      const SizedBox(height:5),
      Text(note,style:Theme.of(context).textTheme.bodySmall),
    ]),
  );

  Widget _entry(String title, TextEditingController controller,
      String? Function(String?) validate, String hint) => Padding(
    padding: const EdgeInsets.only(bottom: 14),
    child: TextFormField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(labelText: title, hintText: hint),
      validator: validate,
      enabled: !_saving,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final method = widget.methods.where(
      (item) => '${item['method_id']}' == _paymentMethodId,
    ).toList(growable: false);
    return SafeArea(
      child: Form(key: _form, child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
        children: [
          Text(_reviewing ? 'Review sell offer' : 'Create a sell offer',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          if (widget.availableMicro != null) Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(14)),
            child: Row(children: [
              const Icon(Icons.account_balance_wallet_outlined),
              const SizedBox(width: 12),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Available to back offers',
                    style: Theme.of(context).textTheme.labelMedium),
                  Text(_msnw(widget.availableMicro),
                    style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 5),
                  const Text('Escrow orders reserve funds and may reduce capacity.'),
                ])),
            ]),
          ),
          const SizedBox(height: 12),
          if (_reviewing && _payload != null) ...[
            Container(
              padding:const EdgeInsets.all(18),
              decoration:BoxDecoration(
                color:Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius:BorderRadius.circular(16)),
              child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
                Text('Your sell offer',
                  style:Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight:FontWeight.w700)),
                const Divider(height:25),
                _reviewRow('Receiving bank',
                  method.isEmpty?'Unavailable':'${method.first['bank_name']} · '
                    '${_maskedP2pAccount(method.first['account_number'])}'),
                _reviewRow('Price', '${_rate.text.trim()} NGN / MSNW'),
                _reviewRow('Minimum', '${_minimum.text.trim()} MSNW'),
                _reviewRow('Maximum', '${_maximum.text.trim()} MSNW'),
                _reviewRow('Inventory', '${_inventory.text.trim()} MSNW'),
              ]),
            ),
            const SizedBox(height:16),
            const Text('Your available funds cover accepted orders and seller fees. '
              'Never release MSNW based only on a screenshot.'),
            if (!_uncertain) ...[
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: _saving ? null : () => setState(() {
                  _reviewing = false;
                  _payload = null;
                  _error = null;
                }),
                child: const Text('Edit details'),
              ),
              FilledButton.icon(
                key: const ValueKey('p2p-publish-offer'),
                onPressed: _saving ? null : _publish,
                icon: const Icon(Icons.check_circle_outline),
                label: Text(_saving ? 'Publishing…' : 'Publish sell offer'),
              ),
            ],
          ] else ...[

            _sectionTitle('Receiving account',
              'Buyers pay the verified bank account you select.'),
            WalletSelectionField<String>(
              key: const ValueKey('p2p-seller-bank'),
              initialValue: _paymentMethodId,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'Verified bank'),
              items: [
                for (final bank in widget.methods)
                  DropdownMenuItem(
                    value: '${bank['method_id']}',
                    child: Text('${bank['bank_name']} · '
                        '${_maskedP2pAccount(bank['account_number'])}',
                        overflow: TextOverflow.ellipsis),
                  ),
              ],
              onChanged: _saving ? null : (value) => setState(() {
                _paymentMethodId = value;
                _error = null;
              }),
              validator: (value) => value == null
                  ? 'Select the bank receiving payments.' : null,
            ),
            _sectionTitle('Your price',
              'Set the bank payment required for each MSNW.'),
            _entry('NGN per MSNW', _rate, _validRate, 'e.g. 1500.00'),
            _sectionTitle('Offer limits',
              'Choose the smallest and largest amount for one buyer.'),
            _entry('Minimum MSNW', _minimum, _validAmount, 'e.g. 1'),
            _entry('Maximum MSNW', _maximum, _validAmount, 'e.g. 100'),
            _sectionTitle('Total offered',
              'Cannot exceed your spendable balance; fees also consume capacity.'),
            _entry('Inventory MSNW', _inventory, _validAmount, 'e.g. 100'),
            const SizedBox(height: 12),
            FilledButton.icon(
              key: const ValueKey('p2p-review-offer'),
              onPressed: _saving ? null : _review,
              icon: const Icon(Icons.rate_review_outlined),
              label: const Text('Review offer'),
            ),
          ],
          if (_error != null) ...[
            const SizedBox(height: 12),
            Semantics(
              liveRegion: true,
              child: Text(_error!, style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              )),
            ),
          ],
          if (_uncertain)
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).pop(false),
              icon: const Icon(Icons.list_alt),
              label: const Text('Return to My Offers'),
            ),
        ],
      ),
      ),
    );
  }
}


class _P2pOrderDetail extends StatefulWidget {
  const _P2pOrderDetail({required this.load,required this.act,
    required this.confirmReceipt,required this.listEvidence,
    required this.uploadEvidence,required this.openEvidence,
    required this.loadReceipt,required this.userId});
  final Future<Map<String,dynamic>> Function() load;
  final Future<void> Function(String action,[String? reason]) act;
  final Future<void> Function(Map<String,dynamic> order) confirmReceipt;
  final Future<Map<String,dynamic>> Function() loadReceipt;
  final Future<List<Map<String,dynamic>>> Function() listEvidence;
  final Future<void> Function(Map<String,dynamic>) uploadEvidence;
  final Future<void> Function(String) openEvidence;
  final String userId;
  @override State<_P2pOrderDetail> createState()=>_P2pOrderDetailState();
}
class _P2pOrderDetailState extends State<_P2pOrderDetail> {
  late Future<Map<String,dynamic>> _future=widget.load();
  late Future<List<Map<String,dynamic>>> _evidence=widget.listEvidence();
  bool _uploading = false;
  bool _working = false;
  String _reasonDraft = '';
  void _refresh()=>setState((){
    _future=widget.load();
    _evidence=widget.listEvidence();
  });
  String _evidenceTime(Object? raw) {
    final date = DateTime.tryParse('${raw ?? ''}')?.toLocal();
    if (date == null) return 'recently';
    final locale = MaterialLocalizations.of(context);
    return '${locale.formatMediumDate(date)} · '
      '${locale.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';
  }

  Widget _summaryLine(String label,String value) => Padding(
    padding:const EdgeInsets.only(top:6),
    child:Row(children:[
      Expanded(child:Text(label)),
      Flexible(child:Text(value,textAlign:TextAlign.end,
        style:const TextStyle(fontWeight:FontWeight.w600))),
    ]),
  );
  Future<void> _showReceipt() async {
    try {
      final receipt = await widget.loadReceipt();
      if (!mounted) return;
      final reference = '${receipt['receiptReference'] ?? ''}';
      final result = receipt['stage'] == 'refund'
        ? 'Escrow returned to seller' : receipt['stage'] == 'release'
        ? 'Escrow released to buyer' : 'Escrow processing';
      final amount = _msnw(receipt['amountMicro']);
      final fee = _msnw(receipt['feeMicro']);
      final fiat = _ngn(receipt['fiatKobo']);
      final time = _evidenceTime(receipt['recordedAt']);
      final shareText = 'Masanawa P2P receipt\n'
        'Reference: $reference\nResult: $result\n'
        'MSNW: $amount\nEscrow fee: $fee\n'
        'Bank payment: $fiat\nDate: $time';
      await openWalletPage<void>(
        context: context,
        title: 'P2P receipt',
        builder: (page) => WalletReviewContent(
          title: const Text('MSNW escrow receipt'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(16)),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Icon(Icons.receipt_long_outlined, size: 34),
                  const SizedBox(height: 12),
                  Text(result, style: Theme.of(context).textTheme.titleLarge),
                  const Divider(height: 26),
                  _summaryLine('MSNW amount', amount),
                  _summaryLine('Escrow fee', fee),
                  _summaryLine('Fiat payment', fiat),
                  _summaryLine('Recorded', time),
                ]),
              ),
              const SizedBox(height: 18),
              const Text('Receipt reference'),
              SelectableText(reference),
            ],
          ),
          actions: [
            FilledButton.icon(
              onPressed: reference.isEmpty ? null : () async {
                await Clipboard.setData(ClipboardData(text: reference));
                if (page.mounted) ScaffoldMessenger.of(page).showSnackBar(
                  const SnackBar(content: Text('Receipt reference copied')));
              },
              icon: const Icon(Icons.copy_outlined),
              label: const Text('Copy reference'),
            ),
            OutlinedButton.icon(
              onPressed: reference.isEmpty ? null : () async {
                await SharePlus.instance.share(ShareParams(
                  title: 'Masanawa P2P receipt', text: shareText));
              },
              icon: const Icon(Icons.share_outlined),
              label: const Text('Share receipt'),
            ),
            TextButton(onPressed: () => Navigator.pop(page),
              child: const Text('Done')),
          ],
        ),
      );
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Receipt unavailable. Refresh this order and try again.')));
    }
  }
  Future<void> _uploadEvidence() async {
    if (_uploading) return;
    setState(() => _uploading = true);
    try {
      final file=await FilePicker.pickFile(
        type:FileType.custom,allowedExtensions:const ['png','jpg','jpeg','webp','pdf']);
      if(file==null)return;
      final length=await file.length();
      if(length==null||length<=0||length>2*1024*1024)
        throw StateError('Choose a PNG, JPG, WEBP or PDF no larger than 2 MB.');
      final bytes=await file.readAsBytes();
      if(bytes.isEmpty||bytes.length>2*1024*1024)
        throw StateError('Choose a PNG, JPG, WEBP or PDF no larger than 2 MB.');
      final extension=(file.extension??'').toLowerCase();
      final contentType=switch(extension){
        'png'=>'image/png','jpg'||'jpeg'=>'image/jpeg',
        'webp'=>'image/webp','pdf'=>'application/pdf',
        _=>throw StateError('Unsupported evidence type'),
      };
      await widget.uploadEvidence({
        'contentType':contentType,'contentBase64':base64Encode(bytes),
      });
      if(mounted)_refresh();
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Attachment failed. Check file permissions, connection and the 2 MB limit.')));
    } finally {
      if (mounted) setState(() => _uploading = false);
    }
  }

  Future<void> _perform(String action,{bool reasonRequired=false}) async {
    if (_working) return;
    String? reason;
    if(reasonRequired) {
      final input = TextEditingController(text: _reasonDraft);
      try {
        reason = await openWalletPage<String>(context: context,
          builder: (ctx) => StatefulBuilder(
            builder: (ctx, update) => WalletReviewContent(
              title: Text(action == 'late-payment'
                ? 'Report a late bank payment' : 'Open a dispute'),
              content: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Describe what happened. Never share a password.'),
                  const SizedBox(height: 12),
                  TextField(
                    controller: input, maxLines: 4, maxLength: 2000,
                    onChanged: (value) {
                      _reasonDraft = value;
                      update(() {});
                    },
                    decoration: const InputDecoration(
                      labelText: 'What happened?',
                      hintText: 'Add a bank transfer reference when available',
                    ),
                  ),
                  if (input.text.trim().length < 10)
                    const Text('Enter at least 10 characters.'),
                ]),
              actions: [
                TextButton(onPressed: () => Navigator.pop(ctx),
                  child: const Text('Back')),
                FilledButton(
                  onPressed: input.text.trim().length >= 10
                    ? () => Navigator.pop(ctx, input.text.trim()) : null,
                  child: const Text('Submit report'),
                ),
              ],
            ),
          ),
        );
      } finally { input.dispose(); }
      if (reason == null) return;
    } else {
      final yes=await openWalletPage<bool>(context:context,builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm this action'),
        content:Text(action=='claim'
          ? 'Mark payment sent? A claim is not bank settlement proof.'
          : 'Cancel only if payment was not sent. Funds return to the seller.'),
        actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Back')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Confirm'))]));
      if(yes!=true)return;
    }
    if (!mounted || _working) return;
    setState(() => _working = true);
    try {
      await widget.act(action,reason);
      if (mounted) {
        _reasonDraft = '';
        _refresh();
      }
    } catch (_) {
      if (!mounted) return;
      // Do not claim a failed request was accepted; preserve the explanation
      // and re-read the ORIGINAL order to reconcile an unknown server outcome.
      _refresh();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Action not confirmed. Check the current order state before retrying.')));
    } finally {
      if (mounted) setState(() => _working = false);
    }
  }
  Future<void> _sellerConfirm(Map<String,dynamic> order) async {
    if (_working) return;
    final typed = TextEditingController();
    try {
      final accepted = await openWalletPage<bool>(
        context: context,
        title: 'Confirm bank receipt',
        builder: (page) => StatefulBuilder(
          builder: (page, update) => WalletReviewContent(
            title: const Text('Confirm bank payment'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerLow,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expected bank receipt',
                        style: Theme.of(context).textTheme.labelLarge),
                      const SizedBox(height: 8),
                      Text(_ngn(order['fiat_kobo']),
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700)),
                      const SizedBox(height: 8),
                      Text('Release: ${_msnw(order['amount_micro'])}'),
                      const SizedBox(height: 5),
                      Text('Order ${order['order_id']}',
                        style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                const Row(children: [
                  Icon(Icons.verified_user_outlined),
                  SizedBox(width: 10),
                  Expanded(child: Text('Check your own bank transaction records. '
                    'The buyer’s report and screenshots are not proof of receipt.')),
                ]),
                const SizedBox(height: 15),
                const Text('Releasing MSNW to the buyer cannot be undone '
                  'by cancelling this order.'),
                const SizedBox(height: 18),
                TextField(
                  controller: typed,
                  onChanged: (_) => update(() {}),
                  textCapitalization: TextCapitalization.characters,
                  decoration: const InputDecoration(
                    labelText: 'Type RECEIVED',
                    hintText: 'RECEIVED',
                    helperText: 'Only after the actual bank payment is received',
                  ),
                ),
              ],
            ),
            actions: [
              FilledButton.icon(
                onPressed: typed.text.trim() == 'RECEIVED'
                  ? () => Navigator.pop(page, true) : null,
                icon: const Icon(Icons.lock_open_outlined),
                label: const Text('Authorize MSNW release'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(page, false),
                child: const Text('I have not received payment'),
              ),
            ],
          ),
        ),
      ) ?? false;
      if (!accepted) return;
      if (!mounted || _working) return;
      setState(() => _working = true);
      try {
        await widget.confirmReceipt(order);
      } catch (_) {
        if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Release result not confirmed. Refresh the original order before any retry.')));
      } finally {
        if (mounted) {
          _refresh();
          setState(() => _working = false);
        }
      }
    } finally {
      typed.dispose();
    }
  }
  @override Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(title:const Text('P2P order'),actions:[
      IconButton(onPressed:_refresh,tooltip:'Refresh order',icon:const Icon(Icons.refresh)),
    ]),
    body:FutureBuilder<Map<String,dynamic>>(future:_future,builder:(context,s){
      if(!s.hasData)return s.hasError?Center(child:Column(mainAxisSize:MainAxisSize.min,children:[const Text('Could not load order'),TextButton(onPressed:_refresh,child:const Text('Retry'))])):const Center(child:CircularProgressIndicator());
      final o=s.data!;
      final buyer=o['buyer_id']==widget.userId;
      final state='${o['state']}';
      final p=o['payment'] is Map?_json(o['payment']):<String,dynamic>{};
      final late=o['latePayment'] is Map
        ? _json(o['latePayment']) : <String,dynamic>{};
      final lateOpen=['open','escalated'].contains(late['state']);
      return ListView(padding:const EdgeInsets.all(16),children:[
        Container(
          padding:const EdgeInsets.all(18),
          decoration:BoxDecoration(
            color:Theme.of(context).colorScheme.surfaceContainerLow,
            borderRadius:BorderRadius.circular(16)),
          child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
            Text(buyer?'Buying MSNW':'Selling MSNW',
              style:Theme.of(context).textTheme.labelLarge),
            const SizedBox(height:8),
            Text(_msnw(o['amount_micro']),
              style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight:FontWeight.w700)),
            const SizedBox(height:8),
            Text(p2pOrderStatus(state),
              style:TextStyle(color:Theme.of(context).colorScheme.primary,
                fontWeight:FontWeight.w600)),
            const Divider(height:24),
            _summaryLine('Bank payment',_ngn(o['fiat_kobo'])),
            _summaryLine('Seller escrow fee',_msnw(o['fee_micro'])),
          ]),
        ),
        const SizedBox(height:16),
        P2pOrderProgress(state:state),
        const SizedBox(height:14),
        if(state=='awaiting_payment'||state=='payment_claimed') ...[
          P2pOrderBankDetails(bankName:'${p['bank_name']??''}',
            accountName:'${p['account_name']??''}',
            accountNumber:'${p['account_number']??''}',buyer:buyer),
          const SizedBox(height:8),
        ],
        P2pPaymentDeadline(deadline:DateTime.tryParse('${o['payment_deadline']}'),
          serverNow:DateTime.tryParse('${o['server_now']}'),
          active:state=='awaiting_payment',onRefresh:_refresh),
        if(o['order_id']!=null) ListTile(
          contentPadding:EdgeInsets.zero,
          title:const Text('Order reference'),
          subtitle:SelectableText('${o['order_id']}',
            style:Theme.of(context).textTheme.bodySmall),
          trailing:IconButton(tooltip:'Copy order reference',
            icon:const Icon(Icons.copy_outlined),
            onPressed:()async {
              await Clipboard.setData(ClipboardData(text:'${o['order_id']}'));
              if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content:Text('Order reference copied')));
            }),
        ),
        if(buyer&&state=='awaiting_payment') ...[
          FilledButton(onPressed:_working?null:()=>_perform('claim'),child:const Text('I have paid')),
          TextButton(onPressed:_working?null:()=>_perform('cancel'),child:const Text('Cancel unpaid order')),
        ],
        if(state=='awaiting_payment'||state=='payment_claimed') ...[
          OutlinedButton(onPressed:_working?null:()=>_perform('dispute',reasonRequired:true),
            child:const Text('Open dispute')),
        ],
        if(buyer&&(state=='expired'||state=='cancelled')) ...[
          const SizedBox(height:12),
          const ListTile(
            leading:Icon(Icons.warning_amber_outlined),
            title:Text('Escrow already refunded to the seller'),
            subtitle:Text('If you sent a bank transfer, report it for '
              'operator review. This does not reopen the MSNW escrow.')),
          if(late.isEmpty)
            OutlinedButton.icon(
              onPressed:_working?null:()=>_perform('late-payment',reasonRequired:true),
              icon:const Icon(Icons.report_outlined),
              label:const Text('Report bank payment sent')),
        ],
        if(late.isNotEmpty)ListTile(
          leading:const Icon(Icons.support_agent_outlined),
          title:Text('Late-payment case: ${late['state']}'),
          subtitle:const Text('A support case does not move MSNW. '
            'Keep your bank transaction reference and evidence available.')),
        if(!buyer&&state=='payment_claimed') ...[
          const ListTile(
            title:Text('Seller confirmation pending'),
            subtitle:Text('Confirm only after you independently see '
              'the correct transfer credited in your own bank account. '
              'A screenshot or buyer claim is not enough.')),
          FilledButton(
            onPressed:_working?null:()=>_sellerConfirm(o),
            child:const Text('I received the bank payment')),
        ],
        if(state=='payment_claimed'||state=='disputed'||
           (buyer&&lateOpen)) ...[
          const SizedBox(height:18),
          Text('Payment evidence',style:Theme.of(context).textTheme.titleMedium),
          const Text('Optional. Attach a bank receipt only to assist a dispute. '
            'Screenshots and attachments never release MSNW escrow.'),
          OutlinedButton.icon(onPressed:_uploading?null:_uploadEvidence,
             icon:Icon(_uploading?Icons.hourglass_top:Icons.upload_file_outlined),
             label:Text(_uploading?'Uploading receipt…':'Attach receipt (2 MB max)')),
           if(_uploading)const LinearProgressIndicator(),
          FutureBuilder<List<Map<String,dynamic>>>(future:_evidence,
            builder:(ctx,snapshot){
              if(snapshot.connectionState!=ConnectionState.done)
                return const LinearProgressIndicator();
              if(snapshot.hasError) return const Text('Evidence unavailable. Refresh to retry.');
              final items=snapshot.data??[];
              if(items.isEmpty)return const Text('No evidence attached.');
              return Column(children:[
                for(final item in items)
                  ListTile(
                    leading:const Icon(Icons.insert_drive_file_outlined),
                     title:const Text('Bank receipt attachment'),
                     subtitle:Text('Added ${_evidenceTime(item['created_at'])} · '
                       '${item['submitted_by']==widget.userId?'You':'Counterparty'}',
                       maxLines:2,overflow:TextOverflow.ellipsis),
                    trailing:const Icon(Icons.open_in_new),
                    onTap:()async{
                      try { await widget.openEvidence('${item['evidence_id']}'); }
                      catch(error) {
                        if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:Text('Unable to open evidence: $error')));
                      }
                    },
                  ),
              ]);
            }),
        ],
        if(state=='disputed')const ListTile(
          title:Text('Escrow frozen'),
          subtitle:Text('An authorized operator must resolve this dispute.')),
        if((state=='completed'||state=='expired'||state=='cancelled') &&
            o['receipt_reference']!=null)
          ListTile(
            leading:const Icon(Icons.receipt_long_outlined),
            title:const Text('View verified MSNW receipt'),
            subtitle:Text('${o['receipt_reference']}'),
            trailing:const Icon(Icons.chevron_right),
            onTap:_showReceipt,
          ),
      ]);
    }),
  );
}
).hasMatch(availableMicro)) {
        throw StateError('Spendable balance unavailable');
      }
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not confirm your spendable MSNW. Try again.')));
      return;
    }
    if (!mounted || !_sameAccount) return;
    final completed = await openWalletPage<bool>(
      context: context,
      title: 'Sell MSNW',
      builder: (_) => MsnwP2pSellerOfferForm(
        methods: methods,
        onPublish: (input) async {
          await _request('POST', '/offers', input);
        },
      ),
    );
    if (mounted && _sameAccount) {
      if (completed == true) _reload(0);
      if (completed == false) _reload(1); // Uncertain result: check My Offers.
    }
  }

  Future<void> _orderDetail(String id) async {
    if(!mounted)return;
    await openWalletPage<void>(context:context,title:'P2P order',wrapScaffold:false,builder:(_)=>_orderView(id));
  }
  Widget _orderView(String id)=>_P2pOrderDetail(
        load: () async => _json(await _request('GET','/orders/$id')),
        act: (action, [reason]) => _act(() async {
          await _request('POST','/orders/$id/$action',
            reason == null ? {} : {'reason': reason});
        }),
        userId: widget.expectedUserId,
        loadReceipt: () async => _json(await _request('GET','/orders/$id/receipt')),
        listEvidence: () async {
          final data=_json(await _request('GET','/orders/$id/evidence'));
          return (data['items'] as List<dynamic>? ?? []).map(_json).toList();
        },
        uploadEvidence: (data)=>_act(() async {
          await _request('POST','/orders/$id/evidence/upload',data);
        }),
        openEvidence: (evidenceId) async {
          final link=_json(await _request('GET',
            '/orders/$id/evidence/$evidenceId'));
          final uri=Uri.tryParse('${link['url'] ?? ''}');
          if(uri==null||uri.scheme!='https')throw StateError('Evidence link unavailable');
          if(!await launchUrl(uri,mode:LaunchMode.externalApplication)) {
            throw StateError('Unable to open private evidence');
          }
        },
        confirmReceipt: (order) => _act(() async {
          await _request('POST','/orders/$id/confirm-receipt',{
            'confirmation':{
              'orderId':id,
              'fiatKobo':'${order['fiat_kobo']}',
              'attestation':'I HAVE RECEIVED PAYMENT',
            },
          });
        }),
      );
  String _time(Object? value) {
    final date = DateTime.tryParse('${value ?? ''}')?.toLocal();
    if (date == null) return '';
    final local = MaterialLocalizations.of(context);
    return '${local.formatMediumDate(date)} · '
        '${local.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';
  }

  Widget _tile(Widget child, VoidCallback? onTap) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    child: Material(
      color: Theme.of(context).colorScheme.surface,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: Theme.of(context).dividerColor.withValues(alpha: .45)),
      ),
      child: InkWell(onTap: onTap,
        child: Padding(padding: const EdgeInsets.all(14), child: child)),
    ),
  );

  Widget _offerTile(Map<String, dynamic> item, bool own) => _tile(
    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: .12),
        foregroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(own ? Icons.account_balance_wallet_outlined : Icons.swap_horiz),
      ),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(child: Text('${_ngn(item['rate_kobo_per_msnw'])} / MSNW',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700))),
          Text(own ? (item['state'] == 'active' ? 'Active' : 'Closed') : 'Buy',
            style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
        ]),
        const SizedBox(height: 7),
        Text('Available  ${_msnw(item['remaining_micro'])}'),
        const SizedBox(height: 5),
        Text('Limit  ${_msnw(item['min_micro'])} – ${_msnw(item['max_micro'])}',
          style: Theme.of(context).textTheme.bodySmall),
        if (item['bank_name'] is String) ...[
          const SizedBox(height: 7),
          Row(children: [
            const Icon(Icons.account_balance_outlined, size: 16),
            const SizedBox(width: 5),
            Expanded(child: Text('${item['bank_name']}',
              maxLines: 1, overflow: TextOverflow.ellipsis)),
          ]),
        ],
      ])),
    ]),
    _busy ? null : () => own ? _manageOffer(item) : _buy(item),
  );

  Widget _orderTile(Map<String, dynamic> item) {
    final buyer = item['buyer_id'] == widget.expectedUserId;
    return _tile(Row(children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: .12),
        foregroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(buyer ? Icons.south_west : Icons.north_east),
      ),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(child: Text(buyer ? 'Buy MSNW' : 'Sell MSNW',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700))),
          Text(_msnw(item['amount_micro']), style: Theme.of(context).textTheme.titleSmall),
        ]),
        const SizedBox(height: 5),
        Row(children: [
          Expanded(child: Text(p2pOrderStatus('${item['state'] ?? ''}'),
            maxLines: 1, overflow: TextOverflow.ellipsis)),
          Text(_ngn(item['fiat_kobo']), style: Theme.of(context).textTheme.bodySmall),
        ]),
        const SizedBox(height: 5),
        Text(_time(item['created_at']), style: Theme.of(context).textTheme.labelSmall),
      ])),
      const Icon(Icons.chevron_right, size: 18),
    ]), _busy ? null : () => _orderDetail('${item['order_id']}'));
  }

  Widget _updateTile(Map<String, dynamic> item) => _tile(
    Row(children: [
      const CircleAvatar(child: Icon(Icons.notifications_none)),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(p2pOrderStatus('${item['state'] ?? ''}')),
        const SizedBox(height: 5),
        Text(_time(item['created_at']), style: Theme.of(context).textTheme.bodySmall),
      ])),
      const Icon(Icons.chevron_right),
    ]), _busy ? null : () => _orderDetail('${item['order_id']}'));

  Future<void> _manageOffer(Map<String, dynamic> offer) async {
    await openWalletPage<void>(context: context, title: 'My sell offer',
      builder: (route) => WalletReviewContent(
        title: const Text('Offer details'),
        content: Column(mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start, children: [
          _p2pReviewLine('Price', '${_ngn(offer['rate_kobo_per_msnw'])} / MSNW'),
          _p2pReviewLine('Available', _msnw(offer['remaining_micro'])),
          _p2pReviewLine('Minimum', _msnw(offer['min_micro'])),
          _p2pReviewLine('Maximum', _msnw(offer['max_micro'])),
          const SizedBox(height: 10),
          const Text('Closing stops new orders, but never changes existing escrow.'),
        ]),
        actions: [
          TextButton(onPressed: () => Navigator.pop(route),
            child: const Text('Back')),
          if (offer['state'] == 'active') OutlinedButton.icon(
            icon: const Icon(Icons.block_outlined),
            label: const Text('Close offer'),
            onPressed: () async {
              final approved = await _confirm('Close offer?',
                'Existing escrow and orders are unaffected.');
              if (!approved || !mounted) return;
              try {
                await _request('POST', '/offers/${offer['offer_id']}/close', {});
                if (!mounted) return;
                Navigator.pop(route);
                _reload(1);
              } catch (_) {
                if (mounted) ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Could not close offer. Refresh its status.')));
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _empty() {
    final title = ['No offers available', 'No sell offers yet',
      'No P2P orders yet', 'No updates yet'][_tab];
    final description = ['Sellers with funded capacity appear here.',
      'Create an offer to sell MSNW using your verified bank.',
      'Your purchases and sales appear here.', 'Order activity appears here.'][_tab];
    return Padding(padding: const EdgeInsets.all(35),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.receipt_long_outlined, size: 38,
          color: Theme.of(context).colorScheme.outline),
        const SizedBox(height: 12),
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 6),
        Text(description, textAlign: TextAlign.center),
        TextButton.icon(onPressed: () => _reload(), icon: const Icon(Icons.refresh),
          label: const Text('Refresh')),
      ]));
  }

  Widget _loading() => ListView.builder(itemCount: 4,
    itemBuilder: (_, index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Container(height: 95,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(width: 160, height: 14,
            color: Theme.of(context).colorScheme.surfaceContainerHighest),
          const SizedBox(height: 12),
          Container(width: 215, height: 10,
            color: Theme.of(context).colorScheme.surfaceContainerHighest),
        ]),
      )));

  @override Widget build(BuildContext context) {
    final initial = widget.initialOrderId;
    if (initial != null) {
      if (!RegExp(r'^[a-fA-F0-9-]{36}$').hasMatch(initial)) {
        return const Scaffold(body: Center(child: Text('Order unavailable')));
      }
      return _orderView(initial);
    }
    if (!_sameAccount) return const Scaffold(body: Center(
      child: Text('Sign in again to continue')));
    return Scaffold(
      appBar: AppBar(title: const Text('MSNW P2P')),
      body: Column(children: [
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(children: [
            for (final (index, title) in [(0, 'Buy'), (1, 'Sell'),
              (2, 'Orders'), (3, 'Updates')])
              Padding(padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(label: Text(title), showCheckmark: false,
                  selected: _tab == index,
                  onSelected: (_) { if (_tab != index) _reload(index); })),
          ])),
        if (!_recoveryReady) ListTile(
          leading: const Icon(Icons.lock_clock_outlined),
          title: const Text('Checking unfinished orders'),
          subtitle: const Text('Buying is paused until secure recovery is available.'),
          trailing: IconButton(
            tooltip: 'Retry secure recovery',
            icon: const Icon(Icons.refresh),
            onPressed: _restorePending,
          ),
        ),
        if (_pendingOrder != null) ListTile(
          leading: const Icon(Icons.sync_outlined),
          title: const Text('Check unfinished order'),
          subtitle: const Text('Recover the original request before placing another.'),
          trailing: const Icon(Icons.chevron_right),
          onTap: _busy ? null : _resumePending,
        ),
        if (_tab == 1) Padding(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 10),
          child: Row(children: [
            Expanded(child: OutlinedButton.icon(
              onPressed: _busy ? null : _verifySellerBank,
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Verify bank'))),
            const SizedBox(width: 8),
            Expanded(child: FilledButton.icon(
              onPressed: _busy ? null : _sell,
              icon: const Icon(Icons.add), label: const Text('Create offer'))),
          ])),
        if (_tab == 2) Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 6),
          child: Align(alignment: Alignment.centerLeft,
            child: Wrap(spacing: 8, children: [
              for (final filter in ['all', 'active', 'finished'])
                ChoiceChip(label: Text(switch(filter) {
                    'active' => 'Active', 'finished' => 'Finished', _ => 'All',
                  }), selected: _orderFilter == filter, showCheckmark: false,
                  onSelected: (_) {
                    if (_orderFilter == filter) return;
                    setState(() {
                      _orderFilter = filter;
                      _cached.remove(2);
                      _nextOrderCursor = null;
                      _list = _load();
                    });
                  }),
            ]))),
        Expanded(child: FutureBuilder<List<Map<String, dynamic>>>(
          future: _list,
          builder: (context, snapshot) {
            final cached = _cached[_tab] ?? <Map<String, dynamic>>[];
            if (snapshot.connectionState != ConnectionState.done &&
                cached.isEmpty) return _loading();
            final items = snapshot.hasData ? snapshot.data! : cached;
            if (snapshot.hasError && items.isEmpty) return Center(child: Column(
              mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.wifi_off_outlined, size: 32),
                const SizedBox(height: 12),
                const Text('Unable to load P2P'),
                TextButton.icon(onPressed: () => _reload(),
                  icon: const Icon(Icons.refresh), label: const Text('Retry')),
              ]));
            final filtered = items;
            return RefreshIndicator(
              onRefresh: () async { _reload(); try { await _list; } catch (_) {} },
              child: ListView(
                key: PageStorageKey<String>('p2p-$_tab-$_orderFilter'),
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  if (snapshot.hasError || (cached.isNotEmpty &&
                    snapshot.connectionState != ConnectionState.done))
                    ListTile(leading: const Icon(Icons.wifi_off_outlined),
                      title: const Text('Showing saved results'),
                      subtitle: const Text('Refresh when your connection returns.'),
                      trailing: TextButton(onPressed: () => _reload(),
                        child: const Text('Retry'))),
                  if (filtered.isEmpty) _empty(),
                  for (final item in filtered)
                    switch (_tab) {
                      0 => _offerTile(item, false),
                      1 => _offerTile(item, true),
                      2 => _orderTile(item),
                      _ => _updateTile(item),
                    },
                  if (_tab == 2 && _nextOrderCursor != null)
                    Padding(padding: const EdgeInsets.all(16),
                      child: OutlinedButton.icon(
                        onPressed: _loadingMore ? null : _loadMoreOrders,
                        icon: Icon(_loadingMore ? Icons.hourglass_top : Icons.expand_more),
                        label: Text(_loadingMore ? 'Loading…' : 'Load more orders'),
                      )),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        )),
      ]),
    );
  }
}

/// Dedicated identity-consented bank verification page. An unsuccessful
/// request leaves the bank, account number and consent intact for correction.
/// Never infer a verification result from the typed account details.
class MsnwP2pBankVerificationForm extends StatefulWidget {
  const MsnwP2pBankVerificationForm({
    super.key, required this.banks, required this.onSubmit,
  });

  final List<Map<String, dynamic>> banks;
  final Future<void> Function(String bankCode, String accountNumber) onSubmit;

  @override
  State<MsnwP2pBankVerificationForm> createState() =>
      _MsnwP2pBankVerificationFormState();
}

class _MsnwP2pBankVerificationFormState
    extends State<MsnwP2pBankVerificationForm> {
  final _form = GlobalKey<FormState>();
  final _number = TextEditingController();
  String? _bankCode;
  bool _consent = false;
  bool _verifying = false;
  bool _uncertain = false;
  String? _error;

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  Future<void> _verify() async {
    if (_verifying || _uncertain || !_form.currentState!.validate()) return;
    if (!_consent) {
      setState(() => _error = 'Please consent to bank verification first.');
      return;
    }
    final validBank = widget.banks.any(
      (bank) => '${bank['code']}' == _bankCode,
    );
    if (!validBank) {
      setState(() => _error = 'Select a verified Nigerian bank.');
      return;
    }
    setState(() { _verifying = true; _error = null; });
    try {
      await widget.onSubmit(_bankCode!, _number.text.trim());
      if (mounted) Navigator.of(context).pop(true);
    } on DioException catch (e) {
      if (!mounted) return;
      final uncertain = e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          (e.response?.statusCode ?? 0) >= 500;
      setState(() {
        _verifying = false;
        _uncertain = uncertain;
        _error = uncertain
            ? 'Verification result is uncertain. Check your verified '
                'payment methods before sending another request.'
            : 'The bank could not be verified. Check your details and retry.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _verifying = false;
        _uncertain = true;
        _error = 'Bank verification could not be confirmed. '
            'Check payment methods before submitting again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) => SafeArea(
    child: Form(
      key: _form,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 36),
        children: [
          Text('Verify your receiving bank',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),

          const SizedBox(height: 20),
          WalletSelectionField<String>(
            key: const ValueKey('p2p-bank-identity'),
            initialValue: _bankCode,
            isExpanded: true,
            items: [
              for (final bank in widget.banks)
                DropdownMenuItem(
                  value: '${bank['code']}',
                  child: Text('${bank['name']}', overflow: TextOverflow.ellipsis),
                ),
            ],
            decoration: const InputDecoration(labelText: 'Nigerian bank'),
            onChanged: _verifying || _uncertain ? null
                : (value) => setState(() { _bankCode = value; _error = null; }),
            validator: (value) => value == null ? 'Choose a bank' : null,
          ),
          const SizedBox(height: 16),
          TextFormField(
            key: const ValueKey('p2p-bank-number'),
            controller: _number,
            maxLength: 10,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            enabled: !_verifying && !_uncertain,
            decoration: const InputDecoration(
              labelText: '10-digit account number',
            ),
            validator: (value) =>
                RegExp(r'^[0-9]{10}$').hasMatch(value?.trim() ?? '')
                ? null : 'Enter a valid 10-digit account number',
          ),
          CheckboxListTile(
            key: const ValueKey('p2p-bank-consent'),
            contentPadding: EdgeInsets.zero,
            value: _consent,
            onChanged: _verifying || _uncertain ? null : (value) =>
                setState(() { _consent = value ?? false; _error = null; }),
            title: const Text(
              'I consent to Paystack verifying these bank details.',
            ),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Semantics(
              liveRegion: true,
              child: Text(_error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ),
          ],
          const SizedBox(height: 18),
          if (!_uncertain)
            FilledButton.icon(
              key: const ValueKey('p2p-bank-verify'),
              onPressed: _verifying ? null : _verify,
              icon: const Icon(Icons.verified_user_outlined),
              label: Text(_verifying ? 'Verifying…' : 'Verify bank'),
            )
          else
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).pop(false),
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Return to payment methods'),
            ),
        ],
      ),
    ),
  );
}

/// Complete, self-contained P2P seller offer editor. Input survives failed
/// validation or network requests; no write occurs before Review and Publish.
/// The parent owns the authenticated gateway call and account-fenced route.
class MsnwP2pSellerOfferForm extends StatefulWidget {
  const MsnwP2pSellerOfferForm({
    super.key,
    required this.methods,
    required this.onPublish,
  });

  final List<Map<String, dynamic>> methods;
  final Future<void> Function(Map<String, dynamic> payload) onPublish;

  @override
  State<MsnwP2pSellerOfferForm> createState() => _MsnwP2pSellerOfferFormState();
}

class _MsnwP2pSellerOfferFormState extends State<MsnwP2pSellerOfferForm> {
  final _form = GlobalKey<FormState>();
  final _rate = TextEditingController();
  final _minimum = TextEditingController();
  final _maximum = TextEditingController();
  final _inventory = TextEditingController();
  String? _paymentMethodId;
  Map<String, dynamic>? _payload;
  bool _reviewing = false;
  bool _saving = false;
  bool _uncertain = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    if (widget.methods.length == 1) {
      _paymentMethodId = '${widget.methods.first['method_id']}';
    }
  }

  @override
  void dispose() {
    _rate.dispose();
    _minimum.dispose();
    _maximum.dispose();
    _inventory.dispose();
    super.dispose();
  }

  String? _validAmount(String? text) {
    try {
      _micro(text?.trim() ?? '');
      return null;
    } catch (_) {
      return 'Enter a positive MSNW amount (up to 6 decimals).';
    }
  }

  String? _validRate(String? text) {
    if (!RegExp(r'^[0-9]{1,10}(\.[0-9]{1,2})?$').hasMatch(text?.trim() ?? '')) {
      return 'Enter a valid NGN price with at most 2 decimals.';
    }
    final parts = text!.trim().split('.');
    final amount = BigInt.parse(parts[0]) * BigInt.from(100) +
        BigInt.parse((parts.length == 2 ? parts[1] : '').padRight(2, '0'));
    return amount <= BigInt.zero ? 'Rate must be greater than zero.' : null;
  }

  void _review() {
    if (!_form.currentState!.validate()) return;
    final method = widget.methods.where(
      (item) => '${item['method_id']}' == _paymentMethodId,
    ).toList(growable: false);
    if (method.length != 1) {
      setState(() => _error = 'Choose a verified seller bank.');
      return;
    }
    final parts = _rate.text.trim().split('.');
    final rateKobo = (BigInt.parse(parts.first) * BigInt.from(100) +
        BigInt.parse((parts.length == 2 ? parts[1] : '').padRight(2, '0')))
        .toString();
    final minMicro = _micro(_minimum.text);
    final maxMicro = _micro(_maximum.text);
    final inventoryMicro = _micro(_inventory.text);
    if (BigInt.parse(minMicro) > BigInt.parse(maxMicro) ||
        BigInt.parse(maxMicro) > BigInt.parse(inventoryMicro)) {
      setState(() => _error =
          'Minimum must not exceed maximum, and inventory must cover maximum.');
      return;
    }
    setState(() {
      _error = null;
      _reviewing = true;
      _payload = <String, dynamic>{
        'paymentMethodId': _paymentMethodId,
        'rateKoboPerMsnw': rateKobo,
        'minMicro': minMicro,
        'maxMicro': maxMicro,
        'inventoryMicro': inventoryMicro,
      };
    });
  }

  Future<void> _publish() async {
    if (_saving || _uncertain || _payload == null) return;
    setState(() { _saving = true; _error = null; });
    try {
      await widget.onPublish(_payload!);
      if (mounted) Navigator.of(context).pop(true);
    } on DioException catch (error) {
      if (!mounted) return;
      final unknown = error.type == DioExceptionType.connectionError ||
          error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.sendTimeout ||
          (error.response?.statusCode ?? 0) >= 500;
      setState(() {
        _saving = false;
        _uncertain = unknown;
        _error = unknown
            ? 'Offer outcome is unconfirmed. Check My Offers before creating '
                'another offer. Your inputs are retained.'
            : 'Offer could not be published. Review your details and try again.';
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _error = 'Offer could not be confirmed. Review the offer list '
            'before submitting another request.';
        _uncertain = true;
      });
    }
  }

  Widget _entry(String title, TextEditingController controller,
      String? Function(String?) validate, String hint) => Padding(
    padding: const EdgeInsets.only(bottom: 14),
    child: TextFormField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(labelText: title, hintText: hint),
      validator: validate,
      enabled: !_saving,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final method = widget.methods.where(
      (item) => '${item['method_id']}' == _paymentMethodId,
    ).toList(growable: false);
    return SafeArea(
      child: Form(key: _form, child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
        children: [
          Text(_reviewing ? 'Review sell offer' : 'Create a sell offer',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          if (_reviewing && _payload != null) ...[
            Text('Receiving bank: ${method.isEmpty ? 'Unavailable' : method.first['bank_name']}'),
            const SizedBox(height: 10),
            Text('Your price: ${_rate.text.trim()} NGN per MSNW'),
            Text('Minimum: ${_minimum.text.trim()} MSNW'),
            Text('Maximum: ${_maximum.text.trim()} MSNW'),
            Text('Inventory: ${_inventory.text.trim()} MSNW'),
            const SizedBox(height: 16),
            const Text('Escrow reserves MSNW only after a buyer creates a '
                'funded order. Do not treat a screenshot as payment proof.'),
            if (!_uncertain) ...[
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: _saving ? null : () => setState(() {
                  _reviewing = false;
                  _payload = null;
                  _error = null;
                }),
                child: const Text('Edit details'),
              ),
              FilledButton.icon(
                key: const ValueKey('p2p-publish-offer'),
                onPressed: _saving ? null : _publish,
                icon: const Icon(Icons.check_circle_outline),
                label: Text(_saving ? 'Publishing…' : 'Publish sell offer'),
              ),
            ],
          ] else ...[

            const SizedBox(height: 18),
            WalletSelectionField<String>(
              key: const ValueKey('p2p-seller-bank'),
              initialValue: _paymentMethodId,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'Verified bank'),
              items: [
                for (final bank in widget.methods)
                  DropdownMenuItem(
                    value: '${bank['method_id']}',
                    child: Text('${bank['bank_name']} · '
                        '${_maskedP2pAccount(bank['account_number'])}',
                        overflow: TextOverflow.ellipsis),
                  ),
              ],
              onChanged: _saving ? null : (value) => setState(() {
                _paymentMethodId = value;
                _error = null;
              }),
              validator: (value) => value == null
                  ? 'Select the bank receiving payments.' : null,
            ),
            const SizedBox(height: 14),
            _entry('NGN per MSNW', _rate, _validRate, 'e.g. 1500.00'),
            _entry('Minimum MSNW', _minimum, _validAmount, 'e.g. 1'),
            _entry('Maximum MSNW', _maximum, _validAmount, 'e.g. 100'),
            _entry('Inventory MSNW', _inventory, _validAmount, 'e.g. 100'),
            const SizedBox(height: 12),
            FilledButton.icon(
              key: const ValueKey('p2p-review-offer'),
              onPressed: _saving ? null : _review,
              icon: const Icon(Icons.rate_review_outlined),
              label: const Text('Review offer'),
            ),
          ],
          if (_error != null) ...[
            const SizedBox(height: 12),
            Semantics(
              liveRegion: true,
              child: Text(_error!, style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              )),
            ),
          ],
          if (_uncertain)
            OutlinedButton.icon(
              onPressed: () => Navigator.of(context).pop(false),
              icon: const Icon(Icons.list_alt),
              label: const Text('Return to My Offers'),
            ),
        ],
      ),
      ),
    );
  }
}


class _P2pOrderDetail extends StatefulWidget {
  const _P2pOrderDetail({required this.load,required this.act,
    required this.confirmReceipt,required this.listEvidence,
    required this.uploadEvidence,required this.openEvidence,
    required this.loadReceipt,required this.userId});
  final Future<Map<String,dynamic>> Function() load;
  final Future<void> Function(String action,[String? reason]) act;
  final Future<void> Function(Map<String,dynamic> order) confirmReceipt;
  final Future<Map<String,dynamic>> Function() loadReceipt;
  final Future<List<Map<String,dynamic>>> Function() listEvidence;
  final Future<void> Function(Map<String,dynamic>) uploadEvidence;
  final Future<void> Function(String) openEvidence;
  final String userId;
  @override State<_P2pOrderDetail> createState()=>_P2pOrderDetailState();
}
class _P2pOrderDetailState extends State<_P2pOrderDetail> {
  late Future<Map<String,dynamic>> _future=widget.load();
  late Future<List<Map<String,dynamic>>> _evidence=widget.listEvidence();
  bool _uploading = false;
  String _reasonDraft = '';
  void _refresh()=>setState((){
    _future=widget.load();
    _evidence=widget.listEvidence();
  });
  String _evidenceTime(Object? raw) {
    final date = DateTime.tryParse('${raw ?? ''}')?.toLocal();
    if (date == null) return 'recently';
    final locale = MaterialLocalizations.of(context);
    return '${locale.formatMediumDate(date)} · '
      '${locale.formatTimeOfDay(TimeOfDay.fromDateTime(date))}';
  }

  Widget _summaryLine(String label,String value) => Padding(
    padding:const EdgeInsets.only(top:6),
    child:Row(children:[
      Expanded(child:Text(label)),
      Flexible(child:Text(value,textAlign:TextAlign.end,
        style:const TextStyle(fontWeight:FontWeight.w600))),
    ]),
  );
  Future<void> _showReceipt() async {
    try {
      final receipt = await widget.loadReceipt();
      if (!mounted) return;
      final reference = '${receipt['receiptReference'] ?? ''}';
      final result = receipt['stage'] == 'refund'
        ? 'Escrow returned to seller' : receipt['stage'] == 'release'
        ? 'Escrow released to buyer' : 'Escrow processing';
      final amount = _msnw(receipt['amountMicro']);
      final fee = _msnw(receipt['feeMicro']);
      final fiat = _ngn(receipt['fiatKobo']);
      final time = _evidenceTime(receipt['recordedAt']);
      final shareText = 'Masanawa P2P receipt\n'
        'Reference: $reference\nResult: $result\n'
        'MSNW: $amount\nEscrow fee: $fee\n'
        'Bank payment: $fiat\nDate: $time';
      await openWalletPage<void>(
        context: context,
        title: 'P2P receipt',
        builder: (page) => WalletReviewContent(
          title: const Text('MSNW escrow receipt'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(16)),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Icon(Icons.receipt_long_outlined, size: 34),
                  const SizedBox(height: 12),
                  Text(result, style: Theme.of(context).textTheme.titleLarge),
                  const Divider(height: 26),
                  _summaryLine('MSNW amount', amount),
                  _summaryLine('Escrow fee', fee),
                  _summaryLine('Fiat payment', fiat),
                  _summaryLine('Recorded', time),
                ]),
              ),
              const SizedBox(height: 18),
              const Text('Receipt reference'),
              SelectableText(reference),
            ],
          ),
          actions: [
            FilledButton.icon(
              onPressed: reference.isEmpty ? null : () async {
                await Clipboard.setData(ClipboardData(text: reference));
                if (page.mounted) ScaffoldMessenger.of(page).showSnackBar(
                  const SnackBar(content: Text('Receipt reference copied')));
              },
              icon: const Icon(Icons.copy_outlined),
              label: const Text('Copy reference'),
            ),
            OutlinedButton.icon(
              onPressed: reference.isEmpty ? null : () async {
                await SharePlus.instance.share(ShareParams(
                  title: 'Masanawa P2P receipt', text: shareText));
              },
              icon: const Icon(Icons.share_outlined),
              label: const Text('Share receipt'),
            ),
            TextButton(onPressed: () => Navigator.pop(page),
              child: const Text('Done')),
          ],
        ),
      );
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Receipt unavailable. Refresh this order and try again.')));
    }
  }
  Future<void> _uploadEvidence() async {
    if (_uploading) return;
    setState(() => _uploading = true);
    try {
      final file=await FilePicker.pickFile(
        type:FileType.custom,allowedExtensions:const ['png','jpg','jpeg','webp','pdf']);
      if(file==null)return;
      final length=await file.length();
      if(length==null||length<=0||length>2*1024*1024)
        throw StateError('Choose a PNG, JPG, WEBP or PDF no larger than 2 MB.');
      final bytes=await file.readAsBytes();
      if(bytes.isEmpty||bytes.length>2*1024*1024)
        throw StateError('Choose a PNG, JPG, WEBP or PDF no larger than 2 MB.');
      final extension=(file.extension??'').toLowerCase();
      final contentType=switch(extension){
        'png'=>'image/png','jpg'||'jpeg'=>'image/jpeg',
        'webp'=>'image/webp','pdf'=>'application/pdf',
        _=>throw StateError('Unsupported evidence type'),
      };
      await widget.uploadEvidence({
        'contentType':contentType,'contentBase64':base64Encode(bytes),
      });
      if(mounted)_refresh();
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Attachment failed. Check file permissions, connection and the 2 MB limit.')));
    } finally {
      if (mounted) setState(() => _uploading = false);
    }
  }

  Future<void> _perform(String action,{bool reasonRequired=false}) async {
    String? reason;
    if(reasonRequired) {
      final input = TextEditingController(text: _reasonDraft);
      try {
        reason = await openWalletPage<String>(context: context,
          builder: (ctx) => StatefulBuilder(
            builder: (ctx, update) => WalletReviewContent(
              title: Text(action == 'late-payment'
                ? 'Report a late bank payment' : 'Open a dispute'),
              content: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Describe what happened. Never share a password.'),
                  const SizedBox(height: 12),
                  TextField(
                    controller: input, maxLines: 4, maxLength: 2000,
                    onChanged: (value) {
                      _reasonDraft = value;
                      update(() {});
                    },
                    decoration: const InputDecoration(
                      labelText: 'What happened?',
                      hintText: 'Add a bank transfer reference when available',
                    ),
                  ),
                  if (input.text.trim().length < 10)
                    const Text('Enter at least 10 characters.'),
                ]),
              actions: [
                TextButton(onPressed: () => Navigator.pop(ctx),
                  child: const Text('Back')),
                FilledButton(
                  onPressed: input.text.trim().length >= 10
                    ? () => Navigator.pop(ctx, input.text.trim()) : null,
                  child: const Text('Submit report'),
                ),
              ],
            ),
          ),
        );
      } finally { input.dispose(); }
      if (reason == null) return;
    } else {
      final yes=await openWalletPage<bool>(context:context,builder:(ctx)=>WalletReviewContent(
        title:const Text('Confirm this action'),
        content:Text(action=='claim'
          ? 'Mark payment sent? A claim is not bank settlement proof.'
          : 'Cancel only if payment was not sent. Funds return to the seller.'),
        actions:[TextButton(onPressed:()=>Navigator.pop(ctx,false),child:const Text('Back')),
          FilledButton(onPressed:()=>Navigator.pop(ctx,true),child:const Text('Confirm'))]));
      if(yes!=true)return;
    }
    await widget.act(action,reason);
    if(mounted) { _reasonDraft = ''; _refresh(); }
  }
  Future<void> _sellerConfirm(Map<String,dynamic> order) async {
    final typed=TextEditingController();
    try {
      final accepted=await openWalletPage<bool>(context:context,
        builder:(ctx)=>StatefulBuilder(builder:(ctx,update)=>WalletReviewContent(
          title:const Text('Confirm bank payment received'),
          content:SingleChildScrollView(child:Column(
            mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text('Order: ${order['order_id']}'),
              Text('Expected bank payment: ${_ngn(order['fiat_kobo'])}'),
              const SizedBox(height:12),
              const Text('Check your own bank account or bank transaction '
                'records. Do not rely on the buyer’s message or screenshot. '
                'Once released, MSNW goes to the buyer and cannot be '
                'reclaimed simply by cancelling this order.'),
              const SizedBox(height:16),
              const Text('Type RECEIVED to explicitly authorize release:'),
              TextField(controller:typed,onChanged:(_)=>update((){}),
                decoration:const InputDecoration(hintText:'RECEIVED'),
                textCapitalization:TextCapitalization.characters),
            ])),
          actions:[
            TextButton(onPressed:()=>Navigator.pop(ctx,false),
              child:const Text('Not received')),
            FilledButton(
              onPressed:typed.text.trim()=='RECEIVED'
                ? ()=>Navigator.pop(ctx,true):null,
              child:const Text('Authorize MSNW release')),
          ],
        )))??false;
      if(!accepted)return;
      await widget.confirmReceipt(order);
      if(mounted)_refresh();
    } finally {
      typed.dispose();
    }
  }
  @override Widget build(BuildContext context)=>Scaffold(
    appBar:AppBar(title:const Text('P2P order'),actions:[
      IconButton(onPressed:_refresh,tooltip:'Refresh order',icon:const Icon(Icons.refresh)),
    ]),
    body:FutureBuilder<Map<String,dynamic>>(future:_future,builder:(context,s){
      if(!s.hasData)return s.hasError?Center(child:Column(mainAxisSize:MainAxisSize.min,children:[const Text('Could not load order'),TextButton(onPressed:_refresh,child:const Text('Retry'))])):const Center(child:CircularProgressIndicator());
      final o=s.data!;
      final buyer=o['buyer_id']==widget.userId;
      final state='${o['state']}';
      final p=o['payment'] is Map?_json(o['payment']):<String,dynamic>{};
      final late=o['latePayment'] is Map
        ? _json(o['latePayment']) : <String,dynamic>{};
      final lateOpen=['open','escalated'].contains(late['state']);
      return ListView(padding:const EdgeInsets.all(16),children:[
        Container(
          padding:const EdgeInsets.all(18),
          decoration:BoxDecoration(
            color:Theme.of(context).colorScheme.surfaceContainerLow,
            borderRadius:BorderRadius.circular(16)),
          child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
            Text(buyer?'Buying MSNW':'Selling MSNW',
              style:Theme.of(context).textTheme.labelLarge),
            const SizedBox(height:8),
            Text(_msnw(o['amount_micro']),
              style:Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight:FontWeight.w700)),
            const SizedBox(height:8),
            Text(p2pOrderStatus(state),
              style:TextStyle(color:Theme.of(context).colorScheme.primary,
                fontWeight:FontWeight.w600)),
            const Divider(height:24),
            _summaryLine('Bank payment',_ngn(o['fiat_kobo'])),
            _summaryLine('Seller escrow fee',_msnw(o['fee_micro'])),
          ]),
        ),
        const SizedBox(height:16),
        P2pOrderProgress(state:state),
        const SizedBox(height:14),
        if(state=='awaiting_payment'||state=='payment_claimed') ...[
          P2pOrderBankDetails(bankName:'${p['bank_name']??''}',
            accountName:'${p['account_name']??''}',
            accountNumber:'${p['account_number']??''}',buyer:buyer),
          const SizedBox(height:8),
        ],
        P2pPaymentDeadline(deadline:DateTime.tryParse('${o['payment_deadline']}'),
          serverNow:DateTime.tryParse('${o['server_now']}'),
          active:state=='awaiting_payment',onRefresh:_refresh),
        if(o['order_id']!=null) ListTile(
          contentPadding:EdgeInsets.zero,
          title:const Text('Order reference'),
          subtitle:SelectableText('${o['order_id']}',
            style:Theme.of(context).textTheme.bodySmall),
          trailing:IconButton(tooltip:'Copy order reference',
            icon:const Icon(Icons.copy_outlined),
            onPressed:()async {
              await Clipboard.setData(ClipboardData(text:'${o['order_id']}'));
              if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content:Text('Order reference copied')));
            }),
        ),
        if(buyer&&state=='awaiting_payment') ...[
          FilledButton(onPressed:()=>_perform('claim'),child:const Text('I have paid')),
          TextButton(onPressed:()=>_perform('cancel'),child:const Text('Cancel unpaid order')),
        ],
        if(state=='awaiting_payment'||state=='payment_claimed') ...[
          OutlinedButton(onPressed:()=>_perform('dispute',reasonRequired:true),
            child:const Text('Open dispute')),
        ],
        if(buyer&&(state=='expired'||state=='cancelled')) ...[
          const SizedBox(height:12),
          const ListTile(
            leading:Icon(Icons.warning_amber_outlined),
            title:Text('Escrow already refunded to the seller'),
            subtitle:Text('If you sent a bank transfer, report it for '
              'operator review. This does not reopen the MSNW escrow.')),
          if(late.isEmpty)
            OutlinedButton.icon(
              onPressed:()=>_perform('late-payment',reasonRequired:true),
              icon:const Icon(Icons.report_outlined),
              label:const Text('Report bank payment sent')),
        ],
        if(late.isNotEmpty)ListTile(
          leading:const Icon(Icons.support_agent_outlined),
          title:Text('Late-payment case: ${late['state']}'),
          subtitle:const Text('A support case does not move MSNW. '
            'Keep your bank transaction reference and evidence available.')),
        if(!buyer&&state=='payment_claimed') ...[
          const ListTile(
            title:Text('Seller confirmation pending'),
            subtitle:Text('Confirm only after you independently see '
              'the correct transfer credited in your own bank account. '
              'A screenshot or buyer claim is not enough.')),
          FilledButton(
            onPressed:()=>_sellerConfirm(o),
            child:const Text('I received the bank payment')),
        ],
        if(state=='payment_claimed'||state=='disputed'||
           (buyer&&lateOpen)) ...[
          const SizedBox(height:18),
          Text('Payment evidence',style:Theme.of(context).textTheme.titleMedium),
          const Text('Optional. Attach a bank receipt only to assist a dispute. '
            'Screenshots and attachments never release MSNW escrow.'),
          OutlinedButton.icon(onPressed:_uploading?null:_uploadEvidence,
             icon:Icon(_uploading?Icons.hourglass_top:Icons.upload_file_outlined),
             label:Text(_uploading?'Uploading receipt…':'Attach receipt (2 MB max)')),
           if(_uploading)const LinearProgressIndicator(),
          FutureBuilder<List<Map<String,dynamic>>>(future:_evidence,
            builder:(ctx,snapshot){
              if(snapshot.connectionState!=ConnectionState.done)
                return const LinearProgressIndicator();
              if(snapshot.hasError) return const Text('Evidence unavailable. Refresh to retry.');
              final items=snapshot.data??[];
              if(items.isEmpty)return const Text('No evidence attached.');
              return Column(children:[
                for(final item in items)
                  ListTile(
                    leading:const Icon(Icons.insert_drive_file_outlined),
                     title:const Text('Bank receipt attachment'),
                     subtitle:Text('Added ${_evidenceTime(item['created_at'])} · '
                       '${item['submitted_by']==widget.userId?'You':'Counterparty'}',
                       maxLines:2,overflow:TextOverflow.ellipsis),
                    trailing:const Icon(Icons.open_in_new),
                    onTap:()async{
                      try { await widget.openEvidence('${item['evidence_id']}'); }
                      catch(error) {
                        if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:Text('Unable to open evidence: $error')));
                      }
                    },
                  ),
              ]);
            }),
        ],
        if(state=='disputed')const ListTile(
          title:Text('Escrow frozen'),
          subtitle:Text('An authorized operator must resolve this dispute.')),
        if((state=='completed'||state=='expired'||state=='cancelled') &&
            o['receipt_reference']!=null)
          ListTile(
            leading:const Icon(Icons.receipt_long_outlined),
            title:const Text('View verified MSNW receipt'),
            subtitle:Text('${o['receipt_reference']}'),
            trailing:const Icon(Icons.chevron_right),
            onTap:_showReceipt,
          ),
      ]);
    }),
  );
}
