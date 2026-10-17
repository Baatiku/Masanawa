import 'wallet_flow_page.dart';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher.dart';
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
    required this.expectedUserId, required this.currentUserId, required this.accessToken});
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  @override State<MsnwP2pScreen> createState() => _MsnwP2pScreenState();
}

class _MsnwP2pScreenState extends State<MsnwP2pScreen> {
  int _tab = 0;
  bool _busy = false;
  late Future<List<Map<String, dynamic>>> _list = _load();
  bool get _sameAccount => widget.currentUserId() == widget.expectedUserId;
  String get _prefix => '${widget.baseUrl}/v1/wallet/msnw/p2p';
  Options get _headers => Options(headers: {
    'Authorization': 'Bearer ${widget.accessToken() ?? ''}',
    'Cache-Control': 'no-store',
  });
  Future<dynamic> _request(String method, String uri, [dynamic data,
      String? idempotency]) async {
    if (!_sameAccount || widget.accessToken()?.isNotEmpty != true) {
      throw StateError('Sign in again to access P2P.');
    }
    final options = _headers.copyWith(headers: {
      ...?_headers.headers,
      if (idempotency != null) 'Idempotency-Key': idempotency,
    });
    final r = await widget.dio.request<dynamic>('$_prefix$uri',
      options: options.copyWith(method: method), data: data);
    if (!_sameAccount) throw StateError('Account changed. Please reopen P2P.');
    return r.data;
  }
  Future<List<Map<String, dynamic>>> _load() async {
    final path = switch (_tab) {
      0 => '/offers',1 => '/my-offers',2 => '/orders',_ => '/notifications',
    };
    final json = _json(await _request('GET', path));
    return (json['items'] as List<dynamic>? ?? [])
        .map((item) => _json(item)).toList();
  }
  void _reload([int? tab]) {
    setState(() {
      if (tab != null) _tab = tab;
      _list = _load();
    });
  }
  Future<void> _act(Future<void> Function() action) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await action();
      if (mounted && _sameAccount) _reload();
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
  Future<String?> _field({required String title, required String label,
      String? hint, String? initial}) async {
    final controller = TextEditingController(text: initial);
    try {
      return await openWalletPage<String>(context: context,
        builder: (ctx) => WalletReviewContent(title: Text(title), content: TextField(
          controller: controller, autofocus: true,
          decoration: InputDecoration(labelText: label, hintText: hint),
        ), actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Back')),
          FilledButton(onPressed: () => Navigator.pop(ctx, controller.text.trim()),
            child: const Text('Continue')),
        ]));
    } finally { controller.dispose(); }
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
    final entered = await _field(title: 'Buy MSNW', label: 'MSNW amount',
      hint: 'e.g. 10.5');
    if (entered == null || !mounted) return;
    late final String micro;
    try { micro = _micro(entered); } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      return;
    }
    final rate = BigInt.tryParse('${offer['rate_kobo_per_msnw']}');
    if (rate == null) return;
    final amount = BigInt.parse(micro);
    final fiat = (amount * rate + BigInt.from(999999)) ~/ BigInt.from(1000000);
    final fee = (amount * BigInt.from((offer['fee_bps'] as num?)?.toInt() ?? 50)
      + BigInt.from(9999)) ~/ BigInt.from(10000);
    if (!await _confirm('Review P2P order',
      'You receive ${_msnw(micro)} after verified payment.\n'
      'Pay ${_ngn(fiat)} directly to the seller.\n'
      'Seller escrow fee: ${_msnw(fee)}.\n'
      'Payment deadline: 30 minutes. No screenshot automatically releases escrow.')) return;
    await _act(() async {
      final key = 'p2p-${DateTime.now().microsecondsSinceEpoch}-${widget.expectedUserId.hashCode.abs()}';
      final res = _json(await _request('POST', '/orders', {
        'offerId': offer['offer_id'], 'amountMicro': micro,
      },key));
      if (!mounted) return;
      await _orderDetail('${res['orderId']}');
    });
  }
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
          await _request('POST', '/methods/verify', {
            'bankCode': bankCode,
            'accountNumber': accountNumber,
            'consent': true,
          });
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
    if (!mounted) return;
    await Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (ctx) => _P2pOrderDetail(
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
      )));
  }
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('MSNW P2P')),
    body: Column(children: [
      SegmentedButton<int>(segments: const [
        ButtonSegment(value:0,label:Text('Buy')),
        ButtonSegment(value:1,label:Text('Sell')),
        ButtonSegment(value:2,label:Text('My orders')),
        ButtonSegment(value:3,label:Text('Updates')),
      ],selected:{_tab},onSelectionChanged: (v)=>_reload(v.first)),
      Expanded(child: FutureBuilder<List<Map<String,dynamic>>>(future:_list,
        builder:(context,snapshot) {
          if(snapshot.connectionState!=ConnectionState.done) {
            return const Center(child:CircularProgressIndicator());
          }
          if(snapshot.hasError) { return Center(child:Padding(
            padding:const EdgeInsets.all(20),
            child:Column(mainAxisSize:MainAxisSize.min,children:[
              Text('P2P is unavailable: ${snapshot.error}',textAlign:TextAlign.center),
              TextButton(onPressed:()=>_reload(),child:const Text('Retry')),
            ])));
          }
          final items=snapshot.data ?? [];
          return RefreshIndicator(onRefresh:()async{
            _reload();await _list;
          },child:ListView(children:[
            if(_tab==1) Padding(padding:const EdgeInsets.all(12),
              child:Wrap(spacing:8,runSpacing:8,children:[
                OutlinedButton.icon(onPressed:_busy?null:_verifySellerBank,
                  icon:const Icon(Icons.account_balance_outlined),
                  label:const Text('Verify bank')),
                FilledButton.icon(onPressed:_busy?null:_sell,
                  icon:const Icon(Icons.add),label:const Text('Create sell offer')),
              ])),
            if(items.isEmpty) const Padding(padding:EdgeInsets.all(28),
              child:Text('Nothing here yet. Pull down to refresh.',
                textAlign:TextAlign.center)),
            for(final item in items) Card(child:ListTile(
              title:Text(_tab==0
                  ? '${_ngn(item['rate_kobo_per_msnw'])} / MSNW'
                  : _tab==1
                    ? '${_ngn(item['rate_kobo_per_msnw'])} per MSNW'
                    : _tab==2 ? '${_msnw(item['amount_micro'])} · ${item['state']}'
                    : 'Order ${item['state'] ?? 'updated'}'),
              subtitle:Text(_tab==0
                ? 'Available: ${_msnw(item['remaining_micro'])}  · '
                  'Trade ${_msnw(item['min_micro'])}–${_msnw(item['max_micro'])}'
                : _tab==1
                    ? 'Remaining ${_msnw(item['remaining_micro'])} · ${item['state']}'
                    : _tab==2 ? 'Fiat ${_ngn(item['fiat_kobo'])}'
                    : '${item['action'] ?? 'State change'} · ${item['created_at'] ?? ''}'),
              trailing:const Icon(Icons.chevron_right),
              onTap: _busy?null: () {
                if(_tab==0) {_buy(item);}
                if(_tab==1 && item['state']=='active') {
                  _confirm('Close this offer', 'Existing escrow orders will not be affected.')
                    .then((yes){if(yes)_act(()async{
                      await _request('POST','/offers/${item['offer_id']}/close',{});
                    });});
                }
                if(_tab==2||_tab==3) {_orderDetail('${item['order_id']}');}
              },
            )),
          ]));
        })),
    ]),
  );
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
          const Text('The account holder must match your Paystack-verified '
              'legal identity. Verification does not automatically publish an offer.'),
          const SizedBox(height: 20),
          DropdownButtonFormField<String>(
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
            Text('Buyer bank: ${method.isEmpty ? 'Unavailable' : method.first['bank_name']}'),
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
            const Text('All seller payments go to your verified bank. '
                'Amounts are exact MSNW values and the NGN price is per MSNW.'),
            const SizedBox(height: 18),
            DropdownButtonFormField<String>(
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
  void _refresh()=>setState((){
    _future=widget.load();
    _evidence=widget.listEvidence();
  });
  Future<void> _showReceipt() async {
    try {
      final receipt=await widget.loadReceipt();
      if(!mounted)return;
      final ref='${receipt['receiptReference'] ?? ''}';
      final postings=receipt['postings'] is List
        ? receipt['postings'] as List<dynamic> : const <dynamic>[];
      await openWalletPage<void>(context:context,builder:(dialog)=>WalletReviewContent(
        title:const Text('Verified MSNW escrow receipt'),
        content:SingleChildScrollView(child:Column(
          mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text('Reference: $ref'),
            Text('Status: ${receipt['status']}'),
            Text('Settlement: ${receipt['stage']}'),
            Text('MSNW principal: ${_msnw(receipt['amountMicro'])}'),
            Text('MSNW fee: ${_msnw(receipt['feeMicro'])}'),
            Text('NGN consideration: ${_ngn(receipt['fiatKobo'])}'),
            Text('Posted: ${receipt['recordedAt']}'),
            const SizedBox(height:12),
            const Text('Custody postings',style:TextStyle(fontWeight:FontWeight.bold)),
            for(final posting in postings)
              Text('${(posting as Map)['bucket']}: '
                '${posting['deltaMicro']} micro-MSNW'
                ' (${posting['ownerKind']})'),
            const SizedBox(height:12),
            const Text('Only finalized release or refund postings produce '
              'this receipt. A payment claim or screenshot is not settlement.'),
          ])),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(dialog),
            child:const Text('Close')),
          TextButton.icon(onPressed:(){
            Clipboard.setData(ClipboardData(text:ref));
            Navigator.pop(dialog);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:Text('Receipt reference copied')));
          },icon:const Icon(Icons.copy_outlined),
            label:const Text('Copy reference')),
        ],
      ));
    }catch(error){
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Receipt unavailable: $error')));
    }
  }
  Future<void> _uploadEvidence() async {
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
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Could not attach evidence: $error')));
    }
  }

  Future<void> _perform(String action,{bool reasonRequired=false}) async {
    String? reason;
    if(reasonRequired) {
      final input=TextEditingController();
      try {
        reason=await openWalletPage<String>(context:context,builder:(ctx)=>WalletReviewContent(
          title:Text(action=='late-payment'
            ? 'Report a bank transfer after expiry'
            : 'Explain the dispute'),content:TextField(
            controller:input,maxLines:3,decoration:const InputDecoration(
              hintText:'What happened? Give transaction reference, not passwords.')),
          actions:[TextButton(onPressed:()=>Navigator.pop(ctx),
            child:const Text('Back')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,input.text),
              child:const Text('Submit'))]));
      } finally {input.dispose();}
      if(reason==null||reason.trim().length<10)return;
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
    if(mounted)_refresh();
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
      if(!s.hasData)return Center(child:s.hasError?Text('Could not read order: ${s.error}')
        :const CircularProgressIndicator());
      final o=s.data!;
      final buyer=o['buyer_id']==widget.userId;
      final state='${o['state']}';
      final p=o['payment'] is Map?_json(o['payment']):<String,dynamic>{};
      final late=o['latePayment'] is Map
        ? _json(o['latePayment']) : <String,dynamic>{};
      final lateOpen=['open','escalated'].contains(late['state']);
      return ListView(padding:const EdgeInsets.all(18),children:[
        Text('Status: $state',style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:12),
        Text('MSNW: ${_msnw(o['amount_micro'])}'),
        Text('Seller fee: ${_msnw(o['fee_micro'])}'),
        Text('Fiat payment: ${_ngn(o['fiat_kobo'])}'),
        const Divider(height:32),
        const Text('Pay only to these order-bound bank details:'),
        SelectableText('${p['bank_name']??'Unavailable'}\n'
          '${p['account_name']??'Unavailable'}\n'
          '${p['account_number']??'Unavailable'}'),
        const SizedBox(height:12),
        Text('Deadline: ${o['payment_deadline']}'),
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
          OutlinedButton.icon(onPressed:_uploadEvidence,
            icon:const Icon(Icons.upload_file_outlined),
            label:const Text('Attach receipt (2 MB max)')),
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
                    leading:const Icon(Icons.verified_user_outlined),
                    title:Text('Evidence ${item['created_at'] ?? ''}'),
                    subtitle:Text('SHA256: ${item['sha256'] ?? ''}',
                      maxLines:1,overflow:TextOverflow.ellipsis),
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

).hasMatch(text?.trim() ?? '')) {
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
          error.type == DioExceptionType.sendTimeout;
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
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 36),
        children: [
          Text(_reviewing ? 'Review sell offer' : 'Create a sell offer',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 10),
          if (_reviewing && _payload != null) ...[
            Text('Buyer bank: ${method.isEmpty ? 'Unavailable' : method.first['bank_name']}'),
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
            const Text('All seller payments go to your verified bank. '
                'Amounts are exact MSNW values and the NGN price is per MSNW.'),
            const SizedBox(height: 18),
            DropdownButtonFormField<String>(
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
  void _refresh()=>setState((){
    _future=widget.load();
    _evidence=widget.listEvidence();
  });
  Future<void> _showReceipt() async {
    try {
      final receipt=await widget.loadReceipt();
      if(!mounted)return;
      final ref='${receipt['receiptReference'] ?? ''}';
      final postings=receipt['postings'] is List
        ? receipt['postings'] as List<dynamic> : const <dynamic>[];
      await openWalletPage<void>(context:context,builder:(dialog)=>WalletReviewContent(
        title:const Text('Verified MSNW escrow receipt'),
        content:SingleChildScrollView(child:Column(
          mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text('Reference: $ref'),
            Text('Status: ${receipt['status']}'),
            Text('Settlement: ${receipt['stage']}'),
            Text('MSNW principal: ${_msnw(receipt['amountMicro'])}'),
            Text('MSNW fee: ${_msnw(receipt['feeMicro'])}'),
            Text('NGN consideration: ${_ngn(receipt['fiatKobo'])}'),
            Text('Posted: ${receipt['recordedAt']}'),
            const SizedBox(height:12),
            const Text('Custody postings',style:TextStyle(fontWeight:FontWeight.bold)),
            for(final posting in postings)
              Text('${(posting as Map)['bucket']}: '
                '${posting['deltaMicro']} micro-MSNW'
                ' (${posting['ownerKind']})'),
            const SizedBox(height:12),
            const Text('Only finalized release or refund postings produce '
              'this receipt. A payment claim or screenshot is not settlement.'),
          ])),
        actions:[
          TextButton(onPressed:()=>Navigator.pop(dialog),
            child:const Text('Close')),
          TextButton.icon(onPressed:(){
            Clipboard.setData(ClipboardData(text:ref));
            Navigator.pop(dialog);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:Text('Receipt reference copied')));
          },icon:const Icon(Icons.copy_outlined),
            label:const Text('Copy reference')),
        ],
      ));
    }catch(error){
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Receipt unavailable: $error')));
    }
  }
  Future<void> _uploadEvidence() async {
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
    } catch(error) {
      if(mounted)ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:Text('Could not attach evidence: $error')));
    }
  }

  Future<void> _perform(String action,{bool reasonRequired=false}) async {
    String? reason;
    if(reasonRequired) {
      final input=TextEditingController();
      try {
        reason=await openWalletPage<String>(context:context,builder:(ctx)=>WalletReviewContent(
          title:Text(action=='late-payment'
            ? 'Report a bank transfer after expiry'
            : 'Explain the dispute'),content:TextField(
            controller:input,maxLines:3,decoration:const InputDecoration(
              hintText:'What happened? Give transaction reference, not passwords.')),
          actions:[TextButton(onPressed:()=>Navigator.pop(ctx),
            child:const Text('Back')),
            FilledButton(onPressed:()=>Navigator.pop(ctx,input.text),
              child:const Text('Submit'))]));
      } finally {input.dispose();}
      if(reason==null||reason.trim().length<10)return;
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
    if(mounted)_refresh();
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
      if(!s.hasData)return Center(child:s.hasError?Text('Could not read order: ${s.error}')
        :const CircularProgressIndicator());
      final o=s.data!;
      final buyer=o['buyer_id']==widget.userId;
      final state='${o['state']}';
      final p=o['payment'] is Map?_json(o['payment']):<String,dynamic>{};
      final late=o['latePayment'] is Map
        ? _json(o['latePayment']) : <String,dynamic>{};
      final lateOpen=['open','escalated'].contains(late['state']);
      return ListView(padding:const EdgeInsets.all(18),children:[
        Text('Status: $state',style:Theme.of(context).textTheme.titleLarge),
        const SizedBox(height:12),
        Text('MSNW: ${_msnw(o['amount_micro'])}'),
        Text('Seller fee: ${_msnw(o['fee_micro'])}'),
        Text('Fiat payment: ${_ngn(o['fiat_kobo'])}'),
        const Divider(height:32),
        const Text('Pay only to these order-bound bank details:'),
        SelectableText('${p['bank_name']??'Unavailable'}\n'
          '${p['account_name']??'Unavailable'}\n'
          '${p['account_number']??'Unavailable'}'),
        const SizedBox(height:12),
        Text('Deadline: ${o['payment_deadline']}'),
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
          OutlinedButton.icon(onPressed:_uploadEvidence,
            icon:const Icon(Icons.upload_file_outlined),
            label:const Text('Attach receipt (2 MB max)')),
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
                    leading:const Icon(Icons.verified_user_outlined),
                    title:Text('Evidence ${item['created_at'] ?? ''}'),
                    subtitle:Text('SHA256: ${item['sha256'] ?? ''}',
                      maxLines:1,overflow:TextOverflow.ellipsis),
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

