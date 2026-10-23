import 'p2p_order_messages.dart';
import 'wallet_flow_page.dart';
import 'p2p_order_presentation.dart';
import 'wallet_step_up_page.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Server-derived *terminal* order counts, not a merchant rating or proof of
/// payment. Suppress any score-like claim until at least five orders have
/// closed in the same 30-day window. Unknown data is not zero or 100%.
String p2pMerchantHistoryLabel(Map<String, dynamic> offer) {
  final completed = int.tryParse('${offer['completed_orders_30d'] ?? ''}');
  final closed = int.tryParse('${offer['closed_orders_30d'] ?? ''}');
  if (completed == null || closed == null || closed < 5 ||
      completed < 0 || completed > closed) return 'Not enough trading history';
  return '$completed completed orders · last 30 days';
}

/// This is a public profile display label, not a verified legal identity.
String p2pSafeTraderDisplay(Object? raw) {
  if(raw is! String)return 'Masanawa trader';
  final clean=raw.trim().replaceAll(RegExp(r'\s+'),' ');
  if(clean.isEmpty)return 'Masanawa trader';
  return clean.length>48?'${clean.substring(0,48)}…':clean;
}

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
String p2pUserMessage(Object error) {
  if (error is StateError) return error.toString().replaceFirst('Bad state: ', '');
  if (error is FormatException) return 'Check the values and try again.';
  if (error is DioException) {
    final code=error.response?.data is Map
      ? '${(error.response!.data as Map)['error'] ?? ''}' : '';
    switch(code) {
      case 'p2p.offer_limit':
      case 'p2p.offer_unavailable':
        return 'Offer availability changed. Refresh the offers.';
      case 'p2p.quote_changed':
        return 'The rate or fees changed. Review a new price.';
      case 'p2p.wallet_unavailable':
        return 'Spendable MSNW is unavailable. Check your wallet.';
      case 'p2p.deadline_passed':
        return 'Payment window ended. Refresh the original order.';
      case 'p2p.already_terminal':
        return 'Order completed or closed. Refresh its status.';
      case 'p2p.verified_method_required':
        return 'Verify a bank account before selling.';
      case 'p2p.step_up_required':
        return 'Additional account verification is required.';
      case 'p2p.idempotency_conflict':
        return 'The earlier request cannot be changed. Check its result.';
      case 'p2p.evidence_forbidden':
        return 'Evidence cannot be added in this order state.';
    }
    final status=error.response?.statusCode;
    if(status==401)return 'Session expired. Sign in again.';
    if(status==403)return 'This action is not authorized.';
    if(status==429)return 'Too many attempts. Try again later.';
    if(status==409)return 'Order status changed. Refresh the order.';
    if(status!=null&&status>=500)return 'Service temporarily unavailable. Check original order before retrying.';
    return 'Request not confirmed. Check your connection and retry.';
  }
  return 'Request not confirmed. Check status before retrying.';
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

class _MsnwP2pScreenState extends State<MsnwP2pScreen> with WidgetsBindingObserver {
  static final _tabMemory = <String,int>{};
  static final _filterMemory = <String,String>{};
  late int _tab;
  late String _orderFilter;
  final _nextCursors = <int,String?>{};
  bool _loadingMore = false;
  String _marketAmount = '';
  String _marketSearch = '';
  int _marketRevision = 0;
  bool get _hasMarketFilters => _marketAmount.isNotEmpty || _marketSearch.isNotEmpty;
  String get _offerQuery {
    final values = <String, String>{
      if (_marketAmount.isNotEmpty) 'amountMicro': _micro(_marketAmount),
      if (_marketSearch.isNotEmpty) 'search': _marketSearch,
    };
    return values.isEmpty ? '' : '?${Uri(queryParameters: values).query}';
  }
  Future<void> _filterOffers() async {
    final result = await openWalletPage<Map<String, String>>(context: context,
      title: 'Filter offers', builder: (_) => MsnwP2pMarketFilters(
        amount: _marketAmount, search: _marketSearch));
    if (!mounted || !_sameAccount || result == null) return;
    setState(() {
      _marketAmount = result['amount'] ?? ''; _marketSearch = result['search'] ?? '';
      _marketRevision++; _cached.remove(0); _nextCursors.remove(0); _list = _load();
    });
  }
  bool _busy = false;
  final _cached = <int, List<Map<String, dynamic>>>{};
  final _buyDrafts = <String, String>{};
  final _sellDraft = <String,String>{};
  final _secure = const FlutterSecureStorage();
  Map<String, dynamic>? _pendingOrder;
  Map<String, dynamic>? _pendingOffer;
  bool _recoveryReady = false;
  bool _offerRecoveryReady = false;
  String get _pendingKey => 'masanawa.p2p.order.${widget.expectedUserId}';
  String get _pendingOfferKey => 'masanawa.p2p.offer.${widget.expectedUserId}';
  late Future<List<Map<String, dynamic>>> _list = _load();

  @override
  void initState() {
    super.initState();
    _tab=_tabMemory[widget.expectedUserId]??0;
    _orderFilter=_filterMemory[widget.expectedUserId]??'all';
    WidgetsBinding.instance.addObserver(this);
    _restorePending();
    _restorePendingOffer();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && mounted && _sameAccount) {
      _reload();
    }
  }

  @override
  void didUpdateWidget(covariant MsnwP2pScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.expectedUserId != widget.expectedUserId ||
        oldWidget.baseUrl != widget.baseUrl) {
      _cached.clear();
      _buyDrafts.clear();
      _sellDraft.clear();
      _nextCursors.clear();
      _pendingOrder = null;
      _pendingOffer = null;
      _recoveryReady = false;
      _offerRecoveryReady = false;
      _tab=_tabMemory[widget.expectedUserId]??0;
      _orderFilter=_filterMemory[widget.expectedUserId]??'all';
      _reload();
      _restorePending();
      _restorePendingOffer();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  Future<void> _restorePending() async {
    try {
      final encoded = await _secure.read(key: _pendingKey);
      if (!_sameAccount || !mounted) return;
      Map<String,dynamic>? recovered;
      if (encoded != null) {
        final decoded = _json(jsonDecode(encoded));
        if (decoded['requestKey'] is! String ||
            decoded['offerId'] is! String ||
            decoded['amountMicro'] is! String ||
            decoded['expectedRateKoboPerMsnw'] is! String ||
            decoded['expectedFeeBps'] is! int) {
          throw const FormatException('Invalid recovery record');
        }
        recovered = decoded;
      }
      setState(() {
        _pendingOrder = recovered;
        _recoveryReady = true;
      });
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Secure order recovery unavailable. New purchases are paused.')));
    }
  }

  Future<void> _restorePendingOffer() async {
    try {
      final encoded=await _secure.read(key:_pendingOfferKey);
      if (!mounted || !_sameAccount) return;
      Map<String,dynamic>? pending;
      if(encoded!=null){
        final decoded=_json(jsonDecode(encoded));
        if(decoded['requestKey'] is! String||decoded['payload'] is! Map){
          throw const FormatException('Invalid sell-offer recovery');
        }
        pending=decoded;
      }
      setState(() {
        _pendingOffer=pending;
        _offerRecoveryReady=true;
      });
    } catch (_) {
      if(mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content:Text(
          'Secure sell-offer recovery is unavailable. Publishing is paused.')));
    }
  }

  Future<void> _savePendingOffer(Map<String,dynamic> pending) async {
    await _secure.write(key:_pendingOfferKey,value:jsonEncode(pending));
    if(!mounted || !_sameAccount)throw StateError('Account changed.');
    setState(() => _pendingOffer=pending);
  }

  Future<void> _clearPendingOffer() async {
    await _secure.delete(key:_pendingOfferKey);
    if(mounted)setState(()=>_pendingOffer=null);
  }

  String _requestId() {
    final rng=Random.secure();
    final bytes=List<int>.generate(18,(_)=>rng.nextInt(256));
    return 'p2p-${base64Url.encode(bytes).replaceAll('=', '')}';
  }

  /// An uncertain publish always reuses the originally authorized payload and
  /// server request key, even after navigation or app restart.
  Future<void> _resumeOffer() async {
    final pending=_pendingOffer;
    if(pending==null||!_sameAccount)throw StateError('No offer to recover.');
    final key='${pending['requestKey']}';
    try {
      await _request('GET','/offers/by-request/$key');
    } on DioException catch(e) {
      if(e.response?.statusCode!=404)rethrow;
      await _request('POST','/offers',_json(pending['payload']),key);
    }
    await _clearPendingOffer();
    if(mounted&&_sameAccount)_reload(1);
  }

  Future<void> _publishSellerOffer(Map<String,dynamic> input) async {
    if(!_offerRecoveryReady)throw StateError('Check previous offers before publishing.');
    if(_pendingOffer!=null)throw StateError('An earlier offer has an uncertain result. Recover it first.');
    await _savePendingOffer({
      'requestKey':_requestId(),
      'payload':Map<String,dynamic>.from(input),
    });
    await _resumeOffer();
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
  String _listEndpoint(int tab,String filter) => switch(tab) {
    0 => '/offers/page$_offerQuery',
    1 => '/my-offers/page',
    2 => '/orders/page?filter=$filter',
    _ => '/notifications/page',
  };

  Future<List<Map<String, dynamic>>> _load() async {
    final tab = _tab;
    if (tab == 4) return <Map<String, dynamic>>[];
    final filter = _orderFilter;
    final revision = _marketRevision;
    final json = _json(await _request('GET',_listEndpoint(tab,filter)));
    final items = (json['items'] as List<dynamic>? ?? [])
        .map((item) => _json(item)).toList();
    if (_sameAccount && (tab != 0 || revision == _marketRevision) && (tab != 2 || filter == _orderFilter)) {
      _cached[tab] = items;
      _nextCursors[tab] = json['nextCursor'] as String?;
    }
    return items;
  }

  void _reload([int? tab]) {
    setState(() {
      if (tab != null) {
        _tab = tab;
        _tabMemory[widget.expectedUserId] = tab;
      }
      _nextCursors.remove(_tab);
      _list = _load();
    });
  }

  Future<void> _loadMore() async {
    final tab = _tab;
    final cursor = _nextCursors[tab];
    if (_loadingMore || cursor == null || !_sameAccount) return;
    final filter = _orderFilter;
    final revision = _marketRevision;
    setState(() => _loadingMore = true);
    try {
      final base = _listEndpoint(tab,filter);
      final separator=base.contains('?')?'&':'?';
      final json = _json(await _request('GET',
        '$base${separator}cursor=${Uri.encodeComponent(cursor)}'));
      final next = (json['items'] as List<dynamic>? ?? []).map(_json).toList();
      if (!mounted || !_sameAccount || _tab != tab ||
        (tab == 0 && revision != _marketRevision) ||
        (tab == 2 && filter != _orderFilter)) return;
      final existing = _cached[tab] ?? <Map<String, dynamic>>[];
      final idKey = switch(tab) {0||1=>'offer_id',2=>'order_id',_=>'event_id'};
      final seen = existing.map((e) => e[idKey]).toSet();
      final combined = [...existing,...next.where((e)=>seen.add(e[idKey]))];
      setState(() {
        _cached[tab] = combined;
        _nextCursors[tab] = json['nextCursor'] as String?;
        _list = Future.value(combined);
      });
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not load more results. Retry when connected.')));
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
        final message = p2pUserMessage(error);
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
        SnackBar(content:Text(p2pUserMessage(error))));
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
    if(!_offerRecoveryReady||_pendingOffer!=null){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content:Text('Resolve the earlier offer or secure recovery check first.')));
      return;
    }
    late final List<Map<String,dynamic>> methods;
    try {
      final payload = _json(await _request('GET','/methods'));
      methods = (payload['items'] as List<dynamic>? ?? []).map(_json).toList();
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment methods unavailable. Check your connection.')));
      return;
    }
    if (!mounted || !_sameAccount) return;
    if (methods.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Verify your bank account before creating an offer.')));
      return;
    }
    late final String availableMicro;
    try {
      final capacity = _json(await _request('GET','/seller-capacity'));
      availableMicro = '${capacity['availableMicro']}';
      if (!RegExp(r'^[0-9]+$').hasMatch(availableMicro)) {
        throw const FormatException('Invalid capacity');
      }
    } catch (_) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not confirm spendable MSNW. Retry.')));
      return;
    }
    if (!mounted || !_sameAccount) return;
    final completed = await openWalletPage<bool>(
      context: context,
      title: 'Sell MSNW',
      builder: (_) => MsnwP2pSellerOfferForm(
        methods: methods,
        availableMicro: availableMicro,
        initialDraft: _sellDraft,
        onDraftChanged: (draft) {
          _sellDraft
            ..clear()
            ..addAll(draft);
        },
        onPublish: (payload) async {
          await _publishSellerOffer(payload);
          _sellDraft.clear();
        },
      ),
    );
    if (mounted && _sameAccount) {
      if (completed == true) _reload(0);
      if (completed == false) _reload(1);
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
        openMessages: (pageContext) async {
          if (!_sameAccount || !pageContext.mounted) return;
          await openWalletPage<void>(context: pageContext, title: 'Order messages',
            wrapScaffold: false, builder: (_) => P2pOrderMessagesPage(
              orderId: id, expectedUserId: widget.expectedUserId,
              currentUserId: widget.currentUserId,
              loadPage: (cursor) async => _json(await _request('GET',
                '/orders/$id/messages${cursor == null ? '' : '?cursor=${Uri.encodeQueryComponent(cursor)}'}')),
              send: (body, key) async => _json(await _request('POST',
                '/orders/$id/messages', {'body': body}, key)),
              findRequest: (key) async => _json(await _request('GET',
                '/orders/$id/messages/by-request/${Uri.encodeComponent(key)}')),
            ));
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
        openEvidence: (pageContext, evidenceId, fileType) async {
          // A fresh owner-scoped signed URL is requested for every open.
          // Never cache or store that URL, and never forward account bearer
          // headers to its storage origin.
          final link=_json(await _request('GET',
            '/orders/$id/evidence/$evidenceId'));
          if(!mounted || !_sameAccount || !pageContext.mounted)return;
          final uri=Uri.tryParse('${link['url'] ?? ''}');
          if(uri==null||uri.scheme!='https'||uri.host.isEmpty||
             uri.userInfo.isNotEmpty||uri.hasFragment) {
            throw StateError('Evidence link unavailable');
          }
          if(fileType=='pdf') {
            if(!await launchUrl(uri,mode:LaunchMode.externalApplication)) {
              throw StateError('Unable to open PDF in a document viewer');
            }
            return;
          }
          if(!const {'png','jpg','jpeg','webp'}.contains(fileType)) {
            throw StateError('Unsupported evidence format');
          }
          // Images are kept in RAM only. Avoid platform browser/download
          // history, disk image caches, redirects and signed-URL leakage.
          final client=Dio();
          Uint8List imageBytes;
          try {
            final response=await client.get<List<int>>(uri.toString(),
              options:Options(responseType:ResponseType.bytes,
                followRedirects:false, maxRedirects:0,
                receiveTimeout:const Duration(seconds:20)));
            if(!mounted||!_sameAccount||!pageContext.mounted)return;
            final bytes=response.data;
            if(bytes==null||bytes.isEmpty||bytes.length>2*1024*1024) {
              throw StateError('Evidence image unavailable or exceeds 2 MB');
            }
            final mime=response.headers.value('content-type')?.split(';').first.trim();
            if(mime!=null&&mime.isNotEmpty&&
               !const {'image/png','image/jpeg','image/webp',
                 'application/octet-stream'}.contains(mime)) {
              throw StateError('Evidence is not a supported image');
            }
            imageBytes=Uint8List.fromList(bytes);
          } finally { client.close(force:true); }
          if(!pageContext.mounted || !_sameAccount)return;
          final provider=MemoryImage(imageBytes);
          try {
            await openWalletPage<void>(context:pageContext,
              title:'Evidence preview',
              builder:(ctx)=>WalletReviewContent(
                title:const Text('Bank receipt preview'),
                content:Column(mainAxisSize:MainAxisSize.min,
                  crossAxisAlignment:CrossAxisAlignment.start,children:[
                    Semantics(
                      label:'Private bank receipt image. Not proof of payment.',
                      child:Image(image:provider,fit:BoxFit.contain,
                        width:double.infinity,
                        height:MediaQuery.sizeOf(ctx).height*0.52,
                        errorBuilder:(_,__,___)=>const Text(
                          'Image could not be displayed.'),
                      ),
                    ),
                    const SizedBox(height:10),
                    const Text('Evidence assists a dispute. Only a seller '
                      'confirming actual bank receipt can release escrow.'),
                  ]),
                actions:[
                  TextButton(onPressed:()=>Navigator.pop(ctx),
                    child:const Text('Close preview')),
                ],
              ),
            );
          } finally {
            await provider.evict();
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
          Text(own ? (item['state'] == 'active'
          ? ('${item['remaining_micro']}'=='0' ? 'No capacity' : 'Active')
          : item['state']=='paused' ? 'Paused' : 'Closed') : 'Buy',
            style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
        ]),
        if(!own)...[
          const SizedBox(height:7),
          Text(p2pSafeTraderDisplay(item['seller_display_name']),
            maxLines:1,overflow:TextOverflow.ellipsis,
            style:Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight:FontWeight.w600)),
          if(item['bank_method_verified']==true)
            Padding(
              padding:const EdgeInsets.only(top:3),
              child:Row(mainAxisSize:MainAxisSize.min,children:[
                Icon(Icons.verified_user_outlined,size:14,
                  color:Theme.of(context).colorScheme.primary),
                const SizedBox(width:4),
                Flexible(child:Text('Bank method verified',
                  style:Theme.of(context).textTheme.labelSmall)),
              ]),
            ),
        ],
        if (!own) Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(p2pMerchantHistoryLabel(item),
            style: Theme.of(context).textTheme.labelSmall),
        ),
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
    return _tile(Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
      CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: .12),
        foregroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(buyer ? Icons.south_west : Icons.north_east),
      ),
      const SizedBox(width: 12),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children:[
            Expanded(child:Text(buyer ? 'Buy MSNW' : 'Sell MSNW',
              style:Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight:FontWeight.w700))),
            const Icon(Icons.lock_outline,size:16),
          ]),
          const SizedBox(height: 4),
          Text(_msnw(item['amount_micro']),
            style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 6),
          Wrap(spacing: 10, runSpacing: 4, children: [
            DecoratedBox(
              decoration:BoxDecoration(
                color:Theme.of(context).colorScheme.primary.withValues(alpha:.08),
                borderRadius:BorderRadius.circular(20)),
              child:Padding(
                padding:const EdgeInsets.symmetric(horizontal:9,vertical:5),
                child:Text(p2pOrderStatus('${item['state'] ?? ''}'),
                  style:Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontWeight:FontWeight.w600)),
              )),

            Text(_ngn(item['fiat_kobo']),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600)),
          ]),
          const SizedBox(height: 5),
          Text(_time(item['created_at']),
            style: Theme.of(context).textTheme.labelSmall),
        ])),
      const SizedBox(width: 6),
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

  Future<void> _manageOffer(Map<String,dynamic> offer) async {
    final offerId='${offer['offer_id'] ?? ''}';
    if(!RegExp(r'^[0-9a-fA-F-]{36}$').hasMatch(offerId))return;
    Future<void> updateOffer(BuildContext route,String action) async {
      if(_busy||!_sameAccount)return;
      final label=switch(action){
        'pause'=>'Pause this offer?',
        'resume'=>'Resume this offer?',
        _=>'Close this offer?',
      };
      final message=action=='resume'
        ? 'Resume using your existing verified bank, current offer limits '
          'and available MSNW. Buyers must still review a new price.'
        : 'New orders will stop. Existing P2P orders, disputes and escrow '
          'will not be changed.';
      final approved=await _confirm(label,message);
      if(!approved||!mounted||!_sameAccount)return;
      setState(()=>_busy=true);
      try {
        final result=_json(await _request('POST','/offers/$offerId/$action',{}));
        if(result['offerId']!=offerId ||
           result['state']!=switch(action){
             'pause'=>'paused','resume'=>'active',_=>'closed',
           })throw const FormatException('Unexpected offer result');
        if(!mounted||!_sameAccount||!route.mounted)return;
        Navigator.pop(route);
        _reload(1);
      } catch (_) {
        if(mounted&&_sameAccount)ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content:Text(
            'Offer change not confirmed. Refresh My Offers and try again.')));
      } finally {
        if(mounted)setState(()=>_busy=false);
      }
    }
    await openWalletPage<void>(context:context,title:'My sell offer',
      builder:(route)=>WalletReviewContent(
        title:const Text('Offer details'),
        content:Column(mainAxisSize:MainAxisSize.min,
          crossAxisAlignment:CrossAxisAlignment.start,children:[
          _p2pReviewLine('Price','${_ngn(offer['rate_kobo_per_msnw'])} / MSNW'),
          _p2pReviewLine('Available',_msnw(offer['remaining_micro'])),
          _p2pReviewLine('Minimum',_msnw(offer['min_micro'])),
          _p2pReviewLine('Maximum',_msnw(offer['max_micro'])),
          const SizedBox(height:10),
          const Text('Changes affect new buyers only. Existing P2P orders '
            'and MSNW escrow continue normally.'),
        ]),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(route),
            child:const Text('Back')),
          if(offer['state']=='active')
            OutlinedButton.icon(
              icon:const Icon(Icons.pause_circle_outline),
              label:const Text('Pause'),
              onPressed:()=>updateOffer(route,'pause')),
          if(offer['state']=='paused')
            FilledButton.icon(
              icon:const Icon(Icons.play_circle_outline),
              label:const Text('Resume'),
              onPressed:()=>updateOffer(route,'resume')),
          if(offer['state']=='active'||offer['state']=='paused')
            OutlinedButton.icon(
              icon:const Icon(Icons.block_outlined),
              label:const Text('Close offer'),
              onPressed:()=>updateOffer(route,'close')),
        ],
      ),
    );
  }

  Widget _empty() {
    final title = _tab == 0 && _hasMarketFilters ? 'No offers match your filters' : ['No offers available', 'No sell offers yet',
      'No P2P orders yet', 'No updates yet', 'Buyer ads are not available yet'][_tab];
    final description = _tab == 0 && _hasMarketFilters ? 'Change or clear the filters to see other eligible offers.' : ['Sellers with funded capacity appear here.',
      'Create an offer to sell MSNW using your verified bank.',
      'Your purchases and sales appear here.', 'Order activity appears here.',
      'You can create a sell ad for buyers to find. Your existing ads are in My ads.'][_tab];
    return Padding(padding: const EdgeInsets.all(35),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.receipt_long_outlined, size: 38,
          color: Theme.of(context).colorScheme.outline),
        const SizedBox(height: 12),
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 6),
        Text(description, textAlign: TextAlign.center),
        if (_tab == 4) ...[
          const SizedBox(height: 12),
          FilledButton.icon(onPressed: _busy ? null : _sell,
            icon: const Icon(Icons.add), label: const Text('Create sell ad')),
          TextButton(onPressed: () => _reload(1), child: const Text('My ads')),
        ] else TextButton.icon(onPressed: () => _reload(), icon: const Icon(Icons.refresh),
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
    if (!_sameAccount) {
      _cached.clear();
      _buyDrafts.clear();
      _sellDraft.clear();
      _nextCursors.clear();
      _pendingOrder = null;
      _pendingOffer = null;
      _recoveryReady = false;
      _offerRecoveryReady = false;
      return const Scaffold(body: Center(
        child: Text('Sign in again to continue')));
    }
    return Scaffold(
      appBar: AppBar(title: Text(switch (_tab) {
        1 => 'My ads', 3 => 'Order updates', _ => 'MSNW P2P',
      }), actions: [PopupMenuButton<int>(tooltip: 'P2P options',
        onSelected: (value) => _reload(value),
        itemBuilder: (_) => const [
          PopupMenuItem(value: 1, child: Text('My ads')),
          PopupMenuItem(value: 3, child: Text('Order updates')),
        ])]),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(child: Column(children: [
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(children: [
            for (final (index, title) in [(0, 'Buy'), (4, 'Sell'),
              (2, 'Orders')])
              Padding(padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(label: Text(title), showCheckmark: false,
                  selected: _tab == index,
                  onSelected: (_) { if (_tab != index) _reload(index); })),
          ])),
        if (_tab == 0) Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Wrap(spacing: 8, crossAxisAlignment: WrapCrossAlignment.center, children: [
            const Text('MSNW / NGN · Bank transfer'),
            TextButton.icon(onPressed: _filterOffers, icon: const Icon(Icons.tune),
              label: Text(_hasMarketFilters ? 'Filters applied' : 'Filter offers')),
            if (_hasMarketFilters) TextButton(onPressed: () => setState(() {
              _marketAmount = ''; _marketSearch = ''; _marketRevision++;
              _cached.remove(0); _nextCursors.remove(0); _list = _load();
            }), child: const Text('Clear filters')),
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
        if (!_offerRecoveryReady) ListTile(
          leading: const Icon(Icons.lock_clock_outlined),
          title: const Text('Checking saved sell offers'),
          subtitle: const Text('Publishing resumes after secure recovery.'),
          trailing: IconButton(tooltip:'Retry offer recovery',
            icon: const Icon(Icons.refresh),onPressed:_restorePendingOffer),
        ),
        if (_pendingOffer != null) ListTile(
          leading: const Icon(Icons.sync_outlined),
          title: const Text('Check unfinished sell offer'),
          subtitle: const Text('Check or retry the original request before creating another.'),
          trailing: const Icon(Icons.chevron_right),
          onTap: _busy ? null : () => _act(_resumeOffer),
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
          child: LayoutBuilder(builder: (context, box) {
            final narrow=box.maxWidth<340||
              MediaQuery.textScalerOf(context).scale(1)>1.4;
            final verify=OutlinedButton.icon(
              onPressed: _busy ? null : _verifySellerBank,
              icon: const Icon(Icons.account_balance_outlined),
              label: const Text('Verify bank'));
            final create=FilledButton.icon(
              onPressed: _busy ? null : _sell,
              icon: const Icon(Icons.add),
              label: const Text('Create offer'));
            return narrow?Column(crossAxisAlignment:CrossAxisAlignment.stretch,
              children:[verify,const SizedBox(height:8),create])
              :Row(children:[
                Expanded(child:verify),
                const SizedBox(width:8),
                Expanded(child:create),
              ]);
          }),
        ),
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
                      _filterMemory[widget.expectedUserId] = filter;
                      _cached.remove(2);
                      _nextCursors.remove(2);
                      _list = _load();
                    });
                  }),
            ]))),
          ])),
        ],
        body: FutureBuilder<List<Map<String, dynamic>>>(
          future: _list,
          builder: (context, snapshot) {
            final cached = _cached[_tab] ?? <Map<String, dynamic>>[];
            if (snapshot.connectionState != ConnectionState.done &&
                cached.isEmpty) return Semantics(
                  label: 'Loading P2P ${['offers','sell offers','orders','updates','buyer ads'][_tab]}',
                  liveRegion: true,
                  child: _loading());
            final items = snapshot.hasData ? snapshot.data! : cached;
            if (snapshot.hasError && items.isEmpty) return Semantics(
              liveRegion: true,
              child: Center(child: Column(
              mainAxisSize: MainAxisSize.min, children: [
                const Icon(Icons.wifi_off_outlined, size: 32),
                const SizedBox(height: 12),
                const Text('Unable to load P2P'),
                TextButton.icon(onPressed: () => _reload(),
                  icon: const Icon(Icons.refresh), label: const Text('Retry')),
              ])));
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
                  if (_nextCursors[_tab] != null)
                    Padding(padding: const EdgeInsets.all(16),
                      child: OutlinedButton.icon(
                        onPressed: _loadingMore ? null : _loadMore,
                        icon: Icon(_loadingMore ? Icons.hourglass_top : Icons.expand_more),
                        label: Text(_loadingMore ? 'Loading…' : 'Load more'),
                      )),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
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
    this.initialDraft,
    this.onDraftChanged,
  });

  final List<Map<String, dynamic>> methods;
  final String? availableMicro;
  final Map<String,String>? initialDraft;
  final ValueChanged<Map<String,String>>? onDraftChanged;
  final Future<void> Function(Map<String, dynamic> payload) onPublish;

  @override
  State<MsnwP2pSellerOfferForm> createState() => _MsnwP2pSellerOfferFormState();
}

class _MsnwP2pSellerOfferFormState extends State<MsnwP2pSellerOfferForm> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _rate;
  late final TextEditingController _minimum;
  late final TextEditingController _maximum;
  late final TextEditingController _inventory;
  String? _paymentMethodId;
  Map<String, dynamic>? _payload;
  bool _reviewing = false;
  bool _saving = false;
  bool _uncertain = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final draft=widget.initialDraft??const <String,String>{};
    _rate=TextEditingController(text:draft['rate']);
    _minimum=TextEditingController(text:draft['minimum']);
    _maximum=TextEditingController(text:draft['maximum']);
    _inventory=TextEditingController(text:draft['inventory']);
    for(final field in [_rate,_minimum,_maximum,_inventory]){
      field.addListener(_rememberDraft);
    }
    final savedMethod=draft['methodId'];
    if(savedMethod!=null && widget.methods.any((bank)=>
      bank['method_id']=='$savedMethod')){
      _paymentMethodId=savedMethod;
    } else if (widget.methods.length==1) {
      _paymentMethodId='${widget.methods.first['method_id']}';
    }
  }

  void _rememberDraft() {
    widget.onDraftChanged?.call({
      'methodId':_paymentMethodId??'',
      'rate':_rate.text,'minimum':_minimum.text,
      'maximum':_maximum.text,'inventory':_inventory.text,
    });
  }

  @override
  void dispose() {
    for(final field in [_rate,_minimum,_maximum,_inventory]){
      field.removeListener(_rememberDraft);
    }
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
                    '${method.first['account_name'] ?? 'Verified account'} · '
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
                        '${bank['account_name'] ?? 'Verified account'} · '
                        '${_maskedP2pAccount(bank['account_number'])}',
                        overflow: TextOverflow.ellipsis),
                  ),
              ],
              onChanged: _saving ? null : (value) => setState(() {
                _paymentMethodId = value;
                _error = null;
                _rememberDraft();
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
    required this.loadReceipt,required this.userId,required this.openMessages});
  final Future<Map<String,dynamic>> Function() load;
  final Future<void> Function(String action,[String? reason]) act;
  final Future<void> Function(Map<String,dynamic> order) confirmReceipt;
  final Future<void> Function(BuildContext) openMessages;
  final Future<Map<String,dynamic>> Function() loadReceipt;
  final Future<List<Map<String,dynamic>>> Function() listEvidence;
  final Future<void> Function(Map<String,dynamic>) uploadEvidence;
  final Future<void> Function(BuildContext,String,String) openEvidence;
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
  String _attachmentLabel(Map<String,dynamic> item) {
    final format = item['fileType'];
    if (format == 'pdf') return 'Bank receipt · PDF';
    if (format == 'png') return 'Bank receipt · PNG';
    if (format == 'jpg') return 'Bank receipt · JPG';
    if (format == 'webp') return 'Bank receipt · WEBP';
    return 'Bank receipt attachment';
  }

  String _attachmentSize(Map<String,dynamic> item) {
    final bytes = item['sizeBytes'];
    if (bytes is! num || bytes <= 0) return 'Size unavailable';
    if (bytes >= 1024*1024) return '${(bytes/(1024*1024)).toStringAsFixed(1)} MB';
    return '${(bytes/1024).toStringAsFixed(0)} KB';
  }

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
      IconButton(onPressed:()=>widget.openMessages(context),tooltip:'Order messages',icon:const Icon(Icons.forum_outlined)),
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
            accountNumber:'${p['account_number']??''}',buyer:buyer,
            fiatTotal:_ngn(o['fiat_kobo'])),
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
        if (late.isNotEmpty) Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color:Theme.of(context).colorScheme.surfaceContainerLow,
            borderRadius:BorderRadius.circular(12)),
          child: Column(children:[
            ListTile(
              leading:const Icon(Icons.support_agent_outlined),
              title:Text(switch('${late['state']}'){
                'open'=>'Late-payment case open',
                'escalated'=>'Late-payment case under review',
                'closed'=>'Late-payment case closed',
                _=>'Late-payment support case',
              }),
              subtitle:const Text('This case does not reopen or move '
                'a previously refunded MSNW escrow.'),
            ),
            if(late['case_id']!=null)
              ListTile(
                title:const Text('Support case reference'),
                subtitle:SelectableText('${late['case_id']}'),
                trailing:IconButton(
                  tooltip:'Copy support case reference',
                  icon:const Icon(Icons.copy_outlined),
                  onPressed:()async{
                    await Clipboard.setData(ClipboardData(
                      text:'${late['case_id']}'));
                    if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content:Text('Case reference copied')));
                  }),
              ),
          ]),
        ),
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
                    leading:Icon(item['fileType']=='pdf'
                       ?Icons.picture_as_pdf_outlined:Icons.image_outlined),
                    title:Text(_attachmentLabel(item)),
                    subtitle:Text('${_attachmentSize(item)} · '
                      '${_evidenceTime(item['created_at'])} · '
                      '${item['submitted_by']==widget.userId?'You':'Counterparty'}',
                      maxLines:2,overflow:TextOverflow.ellipsis),
                    trailing:Icon(item['fileType']=='pdf'
                      ? Icons.open_in_new : Icons.visibility_outlined),
                    onTap:()async{
                      try { await widget.openEvidence(context,
                            '${item['evidence_id']}', '${item['fileType']}'); }
                      catch(error) {
                        if(mounted)ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:Text(p2pUserMessage(error))));
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

class MsnwP2pMarketFilters extends StatefulWidget {
  const MsnwP2pMarketFilters({super.key, required this.amount, required this.search});
  final String amount;
  final String search;
  @override State<MsnwP2pMarketFilters> createState() => _MsnwP2pMarketFiltersState();
}
class _MsnwP2pMarketFiltersState extends State<MsnwP2pMarketFilters> {
  final _form = GlobalKey<FormState>();
  late final _amount = TextEditingController(text: widget.amount);
  late final _search = TextEditingController(text: widget.search);
  @override void dispose() { _amount.dispose(); _search.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => SingleChildScrollView(
    padding: const EdgeInsets.all(16), child: Form(key: _form, child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text('MSNW / NGN'),
        const Text('Verified bank transfer methods · Newest offers first'),
        const SizedBox(height: 16),
        TextFormField(controller: _amount,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(labelText: 'Amount in MSNW', hintText: 'Optional', border: OutlineInputBorder()),
          validator: (value) {
            if (value == null || value.trim().isEmpty) return null;
            try {
              final amount = BigInt.parse(_micro(value));
              if (amount > BigInt.from(1000000).pow(3)) return 'Amount is out of range.';
              return null;
            } catch (_) { return 'Enter a positive amount with up to 6 decimals.'; }
          }),
        const SizedBox(height: 16),
        TextFormField(controller: _search, maxLength: 80,
          decoration: const InputDecoration(labelText: 'Trader name or ad reference', hintText: 'Optional', border: OutlineInputBorder()),
          validator: (value) => value != null && RegExp(r'[\x00-\x1f\x7f]').hasMatch(value)
            ? 'Remove control characters.' : null),
        const SizedBox(height: 12),
        FilledButton(onPressed: () {
          if (_form.currentState?.validate() != true) return;
          Navigator.pop(context, {'amount': _amount.text.trim(), 'search': _search.text.trim()});
        }, child: const Text('Apply filters')),
        TextButton(onPressed: () => Navigator.pop(context, <String, String>{}), child: const Text('Clear filters')),
      ])));
}
