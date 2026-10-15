import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MsnwIdentityEnrollment extends StatefulWidget {
  const MsnwIdentityEnrollment({
    super.key, required this.dio, required this.baseUrl,
    required this.expectedUserId, required this.currentUserId,
    required this.accessToken, required this.onQualified,
  });
  final Dio dio;
  final String baseUrl;
  final String expectedUserId;
  final String? Function() currentUserId;
  final String? Function() accessToken;
  final VoidCallback onQualified;
  @override
  State<MsnwIdentityEnrollment> createState() => _MsnwIdentityEnrollmentState();
}

class _MsnwIdentityEnrollmentState extends State<MsnwIdentityEnrollment> {
  final legalName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final bvn = TextEditingController();
  final bankAccount = TextEditingController();
  final bankCode = TextEditingController();
  bool consent = false;
  bool busy = false;
  String? state;
  String? error;

  @override
  void initState() { super.initState(); refresh(); }
  @override
  void dispose() { legalName.dispose(); email.dispose(); phone.dispose(); bvn.dispose(); bankAccount.dispose(); bankCode.dispose(); super.dispose(); }

  Future<void> refresh() async => request(false);

  Future<void> request(bool submit) async {
    if (busy || widget.currentUserId() != widget.expectedUserId) return;
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) {
      setState(() => error = 'Sign in again to verify your identity.');
      return;
    }
    if (submit && (!consent ||
        !RegExp(r'^[0-9]{11}$').hasMatch(bvn.text.trim()) ||
        !RegExp(r'^[0-9]{10}$').hasMatch(bankAccount.text.trim()) ||
        !RegExp(r'^[0-9]{3,6}$').hasMatch(bankCode.text.trim()))) {
      setState(() => error = 'Enter a valid BVN, bank account, bank code and consent.');
      return;
    }
    setState(() { busy = true; error = null; });
    try {
      final url = widget.baseUrl.replaceFirst(RegExp(r'/$'), '') +
        '/v1/wallet/msnw/funding/enrollment';
      final options = Options(headers: {'Authorization': 'Bearer $token'},
        followRedirects: false, receiveTimeout: const Duration(seconds: 15));
      final Response<dynamic> result = submit
        ? await widget.dio.post<dynamic>(url,
            data: {'consent': true, 'bvn': bvn.text.trim(),
              'accountNumber': bankAccount.text.trim(),
              'bankCode': bankCode.text.trim(),
              if (legalName.text.trim().isNotEmpty) 'legalName': legalName.text.trim(),
              if (email.text.trim().isNotEmpty) 'email': email.text.trim(),
              if (phone.text.trim().isNotEmpty) 'phone': phone.text.trim(),
            }, options: options)
        : await widget.dio.get<dynamic>(url, options: options);
      if (!mounted || widget.currentUserId() != widget.expectedUserId ||
          widget.accessToken()?.trim() != token) return;
      final body = result.data;
      if (body is! Map || !const ['identity_details_required', 'creating_customer',
            'awaiting_bank_identity', 'identity_validation_pending',
            'ready_for_bank_account'].contains(body['state'])) {
        throw const FormatException('Invalid enrollment state');
      }
      setState(() => state = body['state'] as String);
      if (state == 'ready_for_bank_account') widget.onQualified();
    } catch (_) {
      if (mounted && widget.currentUserId() == widget.expectedUserId) {
        setState(() => error = 'Enrollment is unavailable. Refresh status '
          'before retrying, to avoid duplicate requests.');
      }
    } finally {
      if (submit) { bvn.clear(); bankAccount.clear(); bankCode.clear(); }
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final enterDetails = state == null || state == 'identity_details_required' ||
      state == 'awaiting_bank_identity';
    return Column(mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Verify with Paystack to receive a personal NGN funding account. '
        'Your Masanawa profile needs your legal full name, email and Nigerian phone number.'),
      if (error != null) Text(error!,
        style: TextStyle(color: Theme.of(context).colorScheme.error)),
      if (state == 'creating_customer')
        const Text('Paystack customer creation is pending. Refresh to reconcile.'),
      if (state == 'identity_validation_pending')
        const Text('Paystack is checking your bank identity. Refresh after verification.'),
      if (enterDetails) ...[
        const Text('Provide missing legal and contact details. Leave details already present in your profile blank.'),
        TextField(controller: legalName, textCapitalization: TextCapitalization.words,
          decoration: const InputDecoration(labelText: 'Legal full name (if different)')),
        TextField(controller: email, keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(labelText: 'Email (if missing)')),
        TextField(controller: phone, keyboardType: TextInputType.phone,
          decoration: const InputDecoration(labelText: 'Phone in +234 format (if missing)')),
        TextField(controller: bvn, keyboardType: TextInputType.number,
          obscureText: true, maxLength: 11, enableSuggestions: false,
          decoration: const InputDecoration(labelText: 'BVN (11 digits)')),
        TextField(controller: bankAccount, keyboardType: TextInputType.number,
          maxLength: 10,
          decoration: const InputDecoration(labelText: 'Personal bank account number')),
        TextField(controller: bankCode, keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: const InputDecoration(labelText: 'Bank code')),
        CheckboxListTile(
          contentPadding: EdgeInsets.zero, value: consent,
          onChanged: busy ? null : (value) => setState(() => consent = value ?? false),
          title: const Text('I consent to Paystack receiving and verifying my '
            'identity and personal bank details for a dedicated funding account.')),
        FilledButton(
          onPressed: !busy && consent ? () => request(true) : null,
          child: const Text('Verify identity with Paystack')),
      ],
      if (busy) const LinearProgressIndicator(),
      TextButton.icon(onPressed: busy ? null : refresh,
        icon: const Icon(Icons.refresh), label: const Text('Refresh identity status')),
    ]);
  }
}
