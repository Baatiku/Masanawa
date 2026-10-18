import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../ui/components/masanawa_profile_skeleton.dart';
import 'wallet_flow_page.dart';

/// Private owner-scoped identity details. Sensitive bank identifiers are never
/// cached locally or returned by the read endpoint.
class MsnwIdentityEnrollment extends StatefulWidget {
  const MsnwIdentityEnrollment({
    super.key,
    required this.dio,
    required this.baseUrl,
    required this.expectedUserId,
    required this.currentUserId,
    required this.accessToken,
    required this.onQualified,
  });
  final Dio dio;
  final String baseUrl, expectedUserId;
  final String? Function() currentUserId, accessToken;
  final VoidCallback onQualified;
  @override
  State<MsnwIdentityEnrollment> createState() => _IdentityState();
}

class _IdentityState extends State<MsnwIdentityEnrollment> {
  final form = GlobalKey<FormState>();
  final legalName = TextEditingController(),
      email = TextEditingController(),
      phone = TextEditingController();
  final bvn = TextEditingController(),
      bankAccount = TextEditingController(),
      bankCode = TextEditingController();
  bool loading = true, busy = false, consent = false, uncertain = false;
  bool nameEditable = false, emailEditable = false, phoneEditable = false;
  String? state, error;
  List<Map<String, String>> banks = [];
  bool banksFailed = false;
  CancelToken? cancellation;
  int generation = 0;
  bool get current =>
      mounted && widget.currentUserId() == widget.expectedUserId;
  bool get enterDetails =>
      state == 'identity_details_required' || state == 'awaiting_bank_identity';
  @override
  void initState() {
    super.initState();
    refresh();
  }

  @override
  void didUpdateWidget(covariant MsnwIdentityEnrollment old) {
    super.didUpdateWidget(old);
    if (old.expectedUserId != widget.expectedUserId) {
      clear();
      refresh();
    }
  }

  void clear() {
    generation++;
    cancellation?.cancel();
    for (final c in [legalName, email, phone, bvn, bankAccount, bankCode]) {
      c.clear();
    }
    state = null;
    consent = false;
    uncertain = false;
  }

  @override
  void dispose() {
    generation++;
    cancellation?.cancel();
    for (final c in [legalName, email, phone, bvn, bankAccount, bankCode]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> refresh() => request(false);
  Future<void> loadBanks(
    String url,
    Options options,
    CancelToken cancel,
  ) async {
    try {
      final response = await widget.dio.get<dynamic>(
        '$url/banks',
        options: options,
        cancelToken: cancel,
      );
      if (!current || cancel.isCancelled) return;
      final raw = response.data;
      if (raw is! Map || raw['banks'] is! List)
        throw const FormatException('Invalid banks');
      banks = (raw['banks'] as List)
          .whereType<Map>()
          .where((b) => b['name'] is String && b['code'] is String)
          .map(
            (b) => {'name': b['name'] as String, 'code': b['code'] as String},
          )
          .toList();
      banksFailed = banks.isEmpty;
    } catch (_) {
      if (current && !cancel.isCancelled) banksFailed = true;
    }
  }

  Future<void> request(bool submit) async {
    if (busy || !current) return;
    if (submit &&
        (!enterDetails ||
            uncertain ||
            !consent ||
            !(form.currentState?.validate() ?? false)))
      return;
    final token = widget.accessToken()?.trim();
    if (token == null || token.isEmpty) {
      setState(() {
        loading = false;
        error = 'Sign in again';
      });
      return;
    }
    final run = ++generation;
    final cancel = CancelToken();
    cancellation = cancel;
    setState(() {
      busy = true;
      error = null;
    });
    bool same() =>
        current && generation == run && widget.accessToken()?.trim() == token;
    try {
      final url =
          '${widget.baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/wallet/msnw/funding/enrollment';
      final options = Options(
        headers: {
          'Authorization': 'Bearer $token',
          'Cache-Control': 'no-store',
        },
        followRedirects: false,
        receiveTimeout: const Duration(seconds: 15),
      );
      final response = submit
          ? await widget.dio.post<dynamic>(
              url,
              data: {
                'consent': true,
                'bvn': bvn.text.trim(),
                'accountNumber': bankAccount.text.trim(),
                'bankCode': bankCode.text.trim(),
                if (nameEditable) 'legalName': legalName.text.trim(),
                if (emailEditable) 'email': email.text.trim(),
                if (phoneEditable) 'phone': phone.text.trim(),
              },
              options: options,
              cancelToken: cancel,
            )
          : await widget.dio.get<dynamic>(
              url,
              options: options,
              cancelToken: cancel,
            );
      if (!same()) return;
      final body = response.data;
      if (body is! Map ||
          !const [
            'identity_details_required',
            'creating_customer',
            'awaiting_bank_identity',
            'identity_validation_pending',
            'ready_for_bank_account',
          ].contains(body['state']))
        throw const FormatException('Invalid identity status');
      if (!submit) {
        final profile = body['profile'];
        if (profile is! Map ||
            profile['legalName'] is! String ||
            profile['email'] is! String ||
            profile['phone'] is! String ||
            profile['legalNameEditable'] is! bool ||
            profile['emailEditable'] is! bool ||
            profile['phoneEditable'] is! bool)
          throw const FormatException('Missing identity details');
        legalName.text = profile['legalName'] as String;
        email.text = profile['email'] as String;
        phone.text = profile['phone'] as String;
        nameEditable = profile['legalNameEditable'] as bool;
        emailEditable = profile['emailEditable'] as bool;
        phoneEditable = profile['phoneEditable'] as bool;
      }
      if (!submit &&
          (body['state'] == 'identity_details_required' ||
              body['state'] == 'awaiting_bank_identity')) {
        await loadBanks(url, options, cancel);
        if (!same()) return;
      }
      setState(() {
        state = body['state'] as String;
        uncertain = false;
      });
      if (state == 'ready_for_bank_account') widget.onQualified();
      // Reload committed canonical values after a submission, never invent a
      // verified state or leave submitted identifiers in text controllers.
      if (submit) {
        bvn.clear();
        bankAccount.clear();
        bankCode.clear();
        consent = false;
      }
    } catch (_) {
      if (same())
        setState(() {
          uncertain = submit;
          error = submit
              ? 'Could not confirm submission. Refresh status.'
              : 'Could not load identity details';
        });
    } finally {
      if (submit) {
        bvn.clear();
        bankAccount.clear();
        bankCode.clear();
      }
      if (current && run == generation)
        setState(() {
          busy = false;
          loading = false;
        });
    }
    if (submit && current && !uncertain) await refresh();
  }

  @override
  Widget build(BuildContext context) {
    if (!current)
      return const Center(child: Text('Sign in to view identity details'));
    if (loading)
      return const SizedBox(
        height: 280,
        child: MasanawaProfileSkeleton(
          semanticLabel: 'Loading identity details',
        ),
      );
    final status = switch (state) {
      'ready_for_bank_account' => 'Verified',
      'identity_validation_pending' => 'Verification pending',
      'creating_customer' => 'Setting up',
      'awaiting_bank_identity' => 'Bank verification required',
      _ => 'Complete your details',
    };
    Widget field(
      String label,
      TextEditingController controller, {
      required bool editable,
      TextInputType? keyboard,
      String? Function(String?)? validator,
      bool hidden = false,
      int? length,
    }) => Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        readOnly: !editable,
        enabled: !busy,
        obscureText: hidden,
        enableSuggestions: !hidden,
        autocorrect: !hidden,
        keyboardType: keyboard,
        textCapitalization: keyboard == null
            ? TextCapitalization.words
            : TextCapitalization.none,
        maxLength: length,
        inputFormatters: length != null
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        decoration: InputDecoration(
          labelText: label,
          counterText: '',
          suffixIcon: !editable
              ? const Icon(Icons.lock_outline, size: 18)
              : null,
        ),
        validator: validator,
      ),
    );
    return Form(
      key: form,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                state == 'ready_for_bank_account'
                    ? Icons.verified_outlined
                    : Icons.badge_outlined,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  status,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              IconButton(
                tooltip: 'Refresh identity status',
                onPressed: busy ? null : refresh,
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
          const SizedBox(height: 24),
          if (state != null) ...[
            field(
              'Legal full name',
              legalName,
              editable: enterDetails && nameEditable,
              validator: (v) => v!.trim().split(RegExp(r'\s+')).length < 2
                  ? 'Enter your full legal name'
                  : null,
            ),
            field(
              'Email',
              email,
              editable: enterDetails && emailEditable,
              keyboard: TextInputType.emailAddress,
              validator: (v) =>
                  !RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(v!.trim())
                  ? 'Enter a valid email'
                  : null,
            ),
            field(
              'Phone number',
              phone,
              editable: enterDetails && phoneEditable,
              keyboard: TextInputType.phone,
              validator: (v) =>
                  !RegExp(r'^\+[1-9][0-9]{6,14}$').hasMatch(v!.trim())
                  ? 'Use international format, e.g. +234…'
                  : null,
            ),
          ],
          if (enterDetails) ...[
            const SizedBox(height: 8),
            field(
              'BVN',
              bvn,
              editable: true,
              hidden: true,
              keyboard: TextInputType.number,
              length: 11,
              validator: (v) => !RegExp(r'^[0-9]{11}$').hasMatch(v!.trim())
                  ? 'Enter 11 digits'
                  : null,
            ),
            field(
              'Bank account number',
              bankAccount,
              editable: true,
              keyboard: TextInputType.number,
              length: 10,
              validator: (v) => !RegExp(r'^[0-9]{10}$').hasMatch(v!.trim())
                  ? 'Enter 10 digits'
                  : null,
            ),
            WalletSelectionField<String>(
              initialValue: bankCode.text.isEmpty ? null : bankCode.text,
              decoration: const InputDecoration(labelText: 'Bank'),
              items: [
                for (final b in banks)
                  DropdownMenuItem(value: b['code'], child: Text(b['name']!)),
              ],
              onChanged: busy
                  ? null
                  : (v) => setState(() => bankCode.text = v ?? ''),
              validator: (v) => v == null ? 'Choose your bank' : null,
            ),
            if (banksFailed)
              TextButton(
                onPressed: busy ? null : refresh,
                child: const Text('Retry bank list'),
              ),
            const SizedBox(height: 16),
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
              value: consent,
              onChanged: busy
                  ? null
                  : (v) => setState(() => consent = v ?? false),
              title: const Text(
                'I consent to Paystack verifying my identity and bank details.',
              ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: busy || uncertain || !consent
                  ? null
                  : () => request(true),
              child: Text(busy ? 'Submitting…' : 'Submit details'),
            ),
          ],
          if (busy)
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: LinearProgressIndicator(),
            ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                error!,
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          if (error != null)
            TextButton(
              onPressed: busy ? null : refresh,
              child: const Text('Retry'),
            ),
        ],
      ),
    );
  }
}
