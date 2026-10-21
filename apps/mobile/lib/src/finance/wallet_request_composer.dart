import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../core/wallet_payment_request.dart';

/// A navigation hint for another person to review, never a payment or quote.
/// Only the authenticated owner of the resolved account can share the link.
class WalletRequestComposer extends StatefulWidget {
  const WalletRequestComposer({
    super.key,
    required this.accountNumber,
    required this.ownerId,
    required this.currentOwnerId,
  });

  final String accountNumber;
  final String ownerId;
  final String? Function() currentOwnerId;

  @override
  State<WalletRequestComposer> createState() => _WalletRequestComposerState();
}

class _WalletRequestComposerState extends State<WalletRequestComposer> {
  final amount = TextEditingController();
  WalletPaymentRequest? request;
  String? error;

  bool get owned => widget.currentOwnerId() == widget.ownerId;

  @override
  void initState() {
    super.initState();
    amount.addListener(_invalidate);
  }

  @override
  void didUpdateWidget(covariant WalletRequestComposer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.ownerId != widget.ownerId ||
        oldWidget.accountNumber != widget.accountNumber) {
      amount.clear();
      request = null;
      error = null;
    }
  }

  void _invalidate() {
    if (!mounted || (request == null && error == null)) return;
    setState(() {
      request = null;
      error = null;
    });
  }

  @override
  void dispose() {
    amount.removeListener(_invalidate);
    amount.dispose();
    super.dispose();
  }

  void _create() {
    if (!owned) return;
    final input = amount.text.trim();
    final atomic = input.isEmpty ? null : parseMsnwRequestAmount(input);
    if (input.isNotEmpty && atomic == null) {
      setState(() {
        request = null;
        error = 'Enter a positive MSNW amount with up to six decimal places.';
      });
      return;
    }
    final value = WalletPaymentRequest(
      accountNumber: widget.accountNumber,
      userId: widget.ownerId,
      expiresAt: DateTime.now().toUtc().add(const Duration(hours: 24)),
      amountAtomic: atomic,
    );
    if (parseWalletPaymentRequest(value.link) == null) {
      setState(() {
        request = null;
        error = 'This account cannot create a payment request right now.';
      });
      return;
    }
    setState(() {
      request = value;
      error = null;
    });
  }

  WalletPaymentRequest? get activeRequest {
    final current = request;
    if (!owned ||
        current == null ||
        !current.expiresAt.isAfter(DateTime.now().toUtc())) {
      return null;
    }
    return current;
  }

  Future<void> _copy() async {
    final value = activeRequest;
    if (value == null) return;
    await Clipboard.setData(ClipboardData(text: value.link.toString()));
    if (mounted && activeRequest == value) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment request link copied')),
      );
    }
  }

  Future<void> _share() async {
    final value = activeRequest;
    if (value == null) return;
    await SharePlus.instance.share(ShareParams(text: value.link.toString()));
  }

  @override
  Widget build(BuildContext context) {
    if (!owned) {
      return const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Your account changed. Reopen Wallet to create a request.',
          ),
        ),
      );
    }
    final current = activeRequest;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          8,
          20,
          MediaQuery.viewInsetsOf(context).bottom + 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Request MSNW',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              const Text(
                'Share your Masanawa account with an optional exact amount. '
                'The other person must verify your identity and approve '
                'their own transfer. Creating a link does not move funds.',
              ),
              const SizedBox(height: 16),
              SelectableText('Account: ${widget.accountNumber}'),
              const SizedBox(height: 12),
              TextField(
                controller: amount,
                key: const ValueKey('request-msnw-amount'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                textInputAction: TextInputAction.done,
                maxLength: 25,
                decoration: const InputDecoration(
                  labelText: 'Amount (MSNW, optional)',
                  hintText: '12.50',
                  helperText: 'Leave blank to let the sender choose.',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: _create,
                child: const Text('Create request link'),
              ),
              if (error != null) ...[
                const SizedBox(height: 8),
                Text(
                  error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
              if (current != null) ...[
                const SizedBox(height: 16),
                Text(
                  current.amountAtomic == null
                      ? 'Any amount (sender chooses)'
                      : 'Requested: ${amount.text.trim()} MSNW',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Expires in 24 hours. This is an unapproved request, '
                  'not proof of payment or a balance.',
                ),
                const SizedBox(height: 8),
                Center(
                  child: Semantics(
                    label:
                        'Unapproved payment-request QR code. Sender must review and approve.',
                    child: QrImageView(
                      data: current.link.toString(),
                      version: QrVersions.auto,
                      size: 220,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  current.link.toString(),
                  key: const ValueKey('request-msnw-link'),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    OutlinedButton.icon(
                      onPressed: _copy,
                      icon: const Icon(Icons.copy),
                      label: const Text('Copy link'),
                    ),
                    FilledButton.icon(
                      onPressed: _share,
                      icon: const Icon(Icons.share_outlined),
                      label: const Text('Share link'),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
