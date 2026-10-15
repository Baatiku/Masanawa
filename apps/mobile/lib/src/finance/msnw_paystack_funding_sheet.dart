import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Bank transfer only. Paystack DVA assignment does not issue MSNW tokens.
const bool kMsnwPaystackVerifyEnabled = bool.fromEnvironment(
  'MASANAWA_MSNW_PAYSTACK_VERIFY_ENABLED', defaultValue: false,
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
  State<MsnwPaystackFundingSheet> createState() => _MsnwPaystackFundingSheetState();
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
    if (_verifying || !mounted || _busy ||
        widget.currentUserId() != widget.expectedUserId) return;
    final ref = _reference.text.trim();
    if (!RegExp(r'^[A-Za-z0-9_.:-]{1,128}$').hasMatch(ref)) {
      setState(() => _verificationResult = 'Enter a valid Paystack transaction reference.');
      return;
    }
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) return;
    setState(() { _verifying = true; _verificationResult = null; });
    try {
      final url = '${widget.baseUrl.replaceFirst(RegExp(r"/$"), "")}'
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
      if (!mounted || widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token) return;
      final raw = response.data;
      if (raw is! Map || raw['reference'] != ref ||
          raw['state'] != 'fiat_verified_backing_pending' ||
          raw['amountKobo'] is! String) {
        throw const FormatException('Unverified transfer');
      }
      setState(() => _verificationResult =
        'Bank payment verified. MSNW issuance is pending treasury '
        'backing and settlement; no tokens have been credited yet.');
    } catch (_) {
      if (mounted) setState(() => _verificationResult =
        'Could not independently verify this transfer yet. Check the reference and retry.');
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
      setState(() { _status = null; _error = 'Sign in again to view funding.'; });
      return;
    }
    if (assign && !_consent) return;
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) {
      setState(() { _status = null; _error = 'Sign in again to view funding.'; });
      return;
    }
    setState(() { _busy = true; _error = null; _status = null; });
    try {
      final endpoint = '${widget.baseUrl.replaceFirst(RegExp(r"/$"), "")}'
          '/v1/wallet/msnw/funding/account';
      final options = Options(headers: {'Authorization': 'Bearer $token'},
          followRedirects: false, receiveTimeout: const Duration(seconds: 15));
      final Response<dynamic> response = assign
          ? await widget.dio.post<dynamic>(
              endpoint, data: {'consent': true}, options: options)
          : await widget.dio.get<dynamic>(endpoint, options: options);
      if (!mounted || widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token) {
        if (mounted) setState(() {
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
        'identity_verification_required','awaiting_consent','pending','assigned',
      ].contains(status['state'])) throw const FormatException('Invalid funding state');
      if (status['state'] == 'assigned') {
        final account = status['account'];
        if (account is! Map) throw const FormatException('Account unavailable');
        final details = account.cast<String, dynamic>();
        final number = details['accountNumber'];
        if (details['currency'] != 'NGN' ||
            number is! String || !RegExp(r'^[0-9]{10}$').hasMatch(number) ||
            details['bankName'] is! String ||
            details['accountName'] is! String) {
          throw const FormatException('Unverified bank account response');
        }
      }
      setState(() { _status = status; _busy = false; });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _status = null;
        _busy = false;
        _error = 'Funding account unavailable. Please retry.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = _status?['state'];
    final account = state == 'assigned'
        ? (_status!['account'] as Map).cast<String, dynamic>() : null;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20, 12, 20, 20 + MediaQuery.viewInsetsOf(context).bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fund your MSNW Wallet',
              style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            const Text('Bank transfers purchase MSNW only after payment, '
              'settlement and custody reconciliation. A bank account is not a token balance.'),
            const SizedBox(height: 16),
            if (_busy) const LinearProgressIndicator(),
            if (_error != null) Text(_error!,
              style: TextStyle(color: Theme.of(context).colorScheme.error)),
            if (state == 'identity_verification_required')
              const Text('Account verification is required before '
                'a dedicated bank account can be assigned.'),
            if (state == 'pending')
              const Text('Your dedicated account request is pending. '
                'Refresh to check for verified assignment.'),
            if (state == 'awaiting_consent') ...[
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('I consent to Paystack receiving the '
                  'identity details already verified for my account to assign a '
                  'dedicated bank transfer account.'),
                value: _consent,
                onChanged: _busy ? null : (value) =>
                  setState(() => _consent = value ?? false),
              ),
              FilledButton(
                onPressed: _consent && !_busy
                  ? () => _reload(assign: true) : null,
                child: const Text('Request bank account'),
              ),
            ],
            if (account != null) ...[
              const Divider(height: 20),
              Text(account['bankName'] as String,
                style: Theme.of(context).textTheme.titleMedium),
              Text(account['accountName'] as String),
              Row(children: [
                Expanded(child: SelectableText(account['accountNumber'] as String,
                  style: Theme.of(context).textTheme.titleLarge)),
                IconButton(
                  tooltip: 'Copy verified account number',
                  icon: const Icon(Icons.copy),
                  onPressed: () => Clipboard.setData(
                    ClipboardData(text: account['accountNumber'] as String)),
                ),
              ]),
            ],
            if (account != null && kMsnwPaystackVerifyEnabled) ...[
              const Divider(height: 24),
              const Text('Already transferred funds? Verify the transaction '
                'reference with Paystack. Verification does not issue MSNW.'),
              TextField(
                controller: _reference,
                maxLength: 128,
                decoration: const InputDecoration(
                  labelText: 'Paystack transaction reference',
                ),
              ),
              FilledButton.icon(
                onPressed: _busy || _verifying ? null : _verifyTransfer,
                icon: const Icon(Icons.verified_outlined),
                label: const Text('Verify bank transfer'),
              ),
              if (_verifying) const LinearProgressIndicator(),
              if (_verificationResult != null) Text(_verificationResult!),
            ],
            const SizedBox(height: 14),
            OutlinedButton.icon(
              onPressed: _busy ? null : () => _reload(),
              icon: const Icon(Icons.refresh),
              label: const Text('Refresh funding account'),
            ),
          ],
        ),
      ),
    );
  }
}
