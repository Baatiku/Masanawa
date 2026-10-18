import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'identity_details_screen.dart';
import 'wallet_flow_page.dart';

/// A fiat provider receipt is not MSNW issuance. Only a server-linked
/// custody issuance row can be presented as issued MSNW.
String msnwVerifiedFundingReceiptMessage(Map<dynamic,dynamic> response) {
  if(response['state']!='fiat_verified_backing_pending' ||
      response['reference'] is! String ||
      response['amountKobo'] is! String ||
      !RegExp(r'^[1-9][0-9]*$').hasMatch(response['amountKobo'] as String)) {
    throw const FormatException('Untrusted funding status');
  }
  switch(response['obligationState']) {
    case 'msnw_issued':
      final value=response['issuedMicro'];
      if(value is! String || !RegExp(r'^[1-9][0-9]*$').hasMatch(value))
        throw const FormatException('Issued MSNW amount unavailable');
      final n=BigInt.parse(value);
      final major=n~/BigInt.from(1000000);
      final fraction=(n%BigInt.from(1000000)).toString().padLeft(6,'0');
      return 'MSNW issued · $major.$fraction MSNW';
    case 'merchant_payout_verified':
      return 'Bank payout verified · MSNW issuance pending';
    case 'backing_pending':
      return 'Payment verified · reserve confirmation pending';
    case 'registration_pending':
      return 'Payment verified · funding registration pending';
    default:
      throw const FormatException('Unknown funding lifecycle state');
  }
}

/// Bank transfer only. Paystack DVA assignment does not issue MSNW tokens.
const bool kMsnwPaystackVerifyEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_VERIFY_ENABLED',
  defaultValue: true,
);

class MsnwPaystackFundingSheet extends StatefulWidget {
  const MsnwPaystackFundingSheet({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.expectedUserId,
    required this.currentUserId,
    required this.accessToken,
  });

  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;

  @override
  State<MsnwPaystackFundingSheet> createState() =>
      _MsnwPaystackFundingSheetState();
}

class _MsnwPaystackFundingSheetState extends State<MsnwPaystackFundingSheet> {
  bool _busy = false;
  bool _consent = false;
  bool _verifying = false;
  String? _verificationResult;
  final _reference = TextEditingController();

  @override
  void dispose() {
    _reference.dispose();
    super.dispose();
  }

  Future<void> _verifyTransfer() async {
    if (_verifying ||
        !mounted ||
        _busy ||
        widget.currentUserId() != widget.expectedUserId)
      return;
    final ref = _reference.text.trim();
    if (!RegExp(r'^[A-Za-z0-9_.:-]{1,128}$').hasMatch(ref)) {
      setState(
        () => _verificationResult =
            'Enter a valid Paystack transaction reference.',
      );
      return;
    }
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) return;
    setState(() {
      _verifying = true;
      _verificationResult = null;
    });
    try {
      final url =
          '${widget.baseUrl.replaceFirst(RegExp(r"/$"), "")}'
          '/v1/wallet/msnw/funding/verify';
      final response = await widget.dio.post<dynamic>(
        url,
        data: {'reference': ref},
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
          followRedirects: false,
          receiveTimeout: const Duration(seconds: 15),
        ),
      );
      if (!mounted ||
          widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token)
        return;
      final raw = response.data;
      if (raw is! Map ||
          raw['reference'] != ref ||
          raw['state'] != 'fiat_verified_backing_pending' ||
          raw['amountKobo'] is! String) {
        throw const FormatException('Unverified transfer');
      }
      final message=msnwVerifiedFundingReceiptMessage(raw);
      setState(() => _verificationResult=message);
    } catch (_) {
      if (mounted)
        setState(
          () => _verificationResult =
              'Could not independently verify this transfer yet. Check the reference and retry.',
        );
    } finally {
      if (mounted) setState(() => _verifying = false);
    }
  }

  String? _error;
  Map<String, dynamic>? _status;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  Future<void> _reload({bool assign = false}) async {
    if (_busy || !mounted) return;
    if (widget.currentUserId() != widget.expectedUserId) {
      setState(() {
        _status = null;
        _error = 'Sign in again to view funding.';
      });
      return;
    }
    if (assign && !_consent) return;
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) {
      setState(() {
        _status = null;
        _error = 'Sign in again to view funding.';
      });
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
      _status = null;
    });
    try {
      final endpoint =
          '${widget.baseUrl.replaceFirst(RegExp(r"/$"), "")}'
          '/v1/wallet/msnw/funding/account';
      final options = Options(
        headers: {'Authorization': 'Bearer $token'},
        followRedirects: false,
        receiveTimeout: const Duration(seconds: 15),
      );
      final Response<dynamic> response = assign
          ? await widget.dio.post<dynamic>(
              endpoint,
              data: {'consent': true},
              options: options,
            )
          : await widget.dio.get<dynamic>(endpoint, options: options);
      if (!mounted ||
          widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token) {
        if (mounted)
          setState(() {
            _status = null;
            _error = 'Account changed. Reopen Wallet funding.';
            _busy = false;
          });
        return;
      }
      final raw = response.data;
      if (raw is! Map) throw const FormatException('Invalid account response');
      final status = raw.cast<String, dynamic>();
      if (!const [
        'identity_verification_required',
        'awaiting_consent',
        'pending',
        'assigned',
      ].contains(status['state']))
        throw const FormatException('Invalid funding state');
      if (status['state'] == 'assigned') {
        final account = status['account'];
        if (account is! Map) throw const FormatException('Account unavailable');
        final details = account.cast<String, dynamic>();
        final number = details['accountNumber'];
        if (details['currency'] != 'NGN' ||
            number is! String ||
            !RegExp(r'^[0-9]{10}$').hasMatch(number) ||
            details['bankName'] is! String ||
            details['accountName'] is! String) {
          throw const FormatException('Unverified bank account response');
        }
      }
      setState(() {
        _status = status;
        _busy = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _status = null;
        _busy = false;
        _error = 'Funding account unavailable. Please retry.';
      });
    }
  }

  Future<void> _identity() async {
    await Navigator.of(context).push<void>(
      MaterialPageRoute(builder: (_) => const IdentityDetailsScreen()),
    );
    if (mounted && widget.currentUserId() == widget.expectedUserId)
      await _reload();
  }

  Future<void> _checkTransfer() async {
    await openWalletPage<void>(
      context: context,
      title: 'Check bank transfer',
      builder: (_) => StatefulBuilder(
        builder: (ctx, update) => ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              controller: _reference,
              maxLength: 128,
              decoration: const InputDecoration(
                labelText: 'Transaction reference',
              ),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: _verifying
                  ? null
                  : () async {
                      final task = _verifyTransfer();
                      update(() {});
                      await task;
                      if (ctx.mounted) update(() {});
                    },
              child: Text(_verifying ? 'Checking…' : 'Check transfer'),
            ),
            if (_verificationResult != null) ...[
              const SizedBox(height:20),
              Semantics(
                liveRegion:true,
                child:Text(_verificationResult!,textAlign:TextAlign.center),
              ),
              if(_reference.text.trim().isNotEmpty)
                TextButton.icon(
                  onPressed:()=>Clipboard.setData(ClipboardData(
                    text:_reference.text.trim())),
                  icon:const Icon(Icons.copy_outlined),
                  label:const Text('Copy payment reference'),
                ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.currentUserId() != widget.expectedUserId)
      return const Center(child: Text('Sign in to view funding'));
    final state = _status?['state'];
    final account = state == 'assigned'
        ? (_status!['account'] as Map).cast<String, dynamic>()
        : null;
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Row(
          children: [
            const Icon(Icons.account_balance_outlined),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Bank transfer',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            IconButton(
              tooltip: 'Refresh funding account',
              onPressed: _busy ? null : () => _reload(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        const SizedBox(height: 24),
        if (_busy) const LinearProgressIndicator(),
        if (_error != null) ...[
          Text(_error!, textAlign: TextAlign.center),
          TextButton(
            onPressed: _busy ? null : () => _reload(),
            child: const Text('Retry'),
          ),
        ],
        if (state == 'identity_verification_required')
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.badge_outlined),
            title: const Text('Complete identity details'),
            trailing: const Icon(Icons.chevron_right),
            onTap: _identity,
          ),
        if (state == 'pending')
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.schedule),
            title: Text('Account request pending'),
          ),
        if (state == 'awaiting_consent') ...[
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text(
              'I consent to Paystack assigning my bank transfer account.',
            ),
            value: _consent,
            onChanged: _busy
                ? null
                : (v) => setState(() => _consent = v ?? false),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: _consent && !_busy ? () => _reload(assign: true) : null,
            child: const Text('Create funding account'),
          ),
        ],
        if (account != null) ...[
          Text(
            account['bankName'] as String,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: SelectableText(
                  account['accountNumber'] as String,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Copy verified account number',
                icon: const Icon(Icons.copy_outlined),
                onPressed: () => Clipboard.setData(
                  ClipboardData(text: account['accountNumber'] as String),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(account['accountName'] as String),
          const SizedBox(height: 8),
          const Text('NGN'),
          const SizedBox(height: 28),
          const Divider(),
          if (kMsnwPaystackVerifyEnabled)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text('Check bank transfer'),
              trailing: const Icon(Icons.chevron_right),
              onTap: _checkTransfer,
            ),
        ],
      ],
    );
  }
}
