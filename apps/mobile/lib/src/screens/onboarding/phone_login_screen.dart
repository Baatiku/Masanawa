import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';
import '../../core/api/models.dart';
import '../../core/providers.dart';
import '../../state/session_state.dart';
import '../../localization/language_picker_button.dart';
import '../../ui/components/onboarding_scaffold.dart';
import '../../ui/components/primary_button.dart';

/// Retains the historical route/widget name for deep links; sign-in is email OTP only.
class PhoneLoginScreen extends ConsumerStatefulWidget {
  const PhoneLoginScreen({super.key});
  @override
  ConsumerState<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends ConsumerState<PhoneLoginScreen> {
  final _email = TextEditingController();
  bool _available = false;
  bool _checking = true;
  String? _error;
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    _check();
  }

  @override
  void dispose() {
    _generation++;
    _email.dispose();
    super.dispose();
  }

  Future<void> _check() async {
    final generation = ++_generation;
    setState(() {
      _checking = true;
      _error = null;
    });
    try {
      final channels = await ref
          .read(apiClientProvider)
          .authOtpChannels()
          .timeout(const Duration(seconds: 8));
      if (!mounted || generation != _generation) return;
      setState(() {
        _available = channels.contains(OtpChannel.email);
        _error = _available ? null : 'Email sign-in is unavailable.';
      });
    } catch (_) {
      if (!mounted || generation != _generation) return;
      setState(() {
        _available = false;
        _error = 'Could not check email sign-in. Retry.';
      });
    } finally {
      if (mounted && generation == _generation)
        setState(() => _checking = false);
    }
  }

  void _send() {
    final email = _email.text.trim();
    if (!RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).invalidEmailAddress),
        ),
      );
      return;
    }
    ref.read(sessionProvider.notifier).sendOtp(email: email);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sessionProvider, (previous, next) {
      if (next is SessionAwaitingOtp) context.go('/otp');
      if (next is SessionSignedIn) context.go('/chats');
    });
    final state = ref.watch(sessionProvider);
    final sending = state is SessionSendingOtp;
    final authError = state is SessionError ? state.message : null;
    final l10n = AppLocalizations.of(context);
    return OnboardingScaffold(
      showLogo: false,
      title: l10n.welcomeTitle,
      subtitle: 'Sign in or create an account with your email.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.center,
            child: LanguagePickerButton(),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            enabled: _available && !sending,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) {
              if (_available && !sending) _send();
            },
            decoration: InputDecoration(
              labelText: l10n.emailMethod,
              prefixIcon: const Icon(Icons.mail_outline),
              border: const OutlineInputBorder(),
            ),
          ),
          if (_checking) ...[
            Text(l10n.checkingSignInMethods, textAlign: TextAlign.center),
            const LinearProgressIndicator(),
          ],
          if (_error != null || authError != null) ...[
            const SizedBox(height: 12),
            Text(
              _error ?? authError!,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
          const SizedBox(height: 20),
          PrimaryButton(
            label: sending ? l10n.sendingCode : l10n.sendCode,
            loading: sending,
            onPressed: !_available || sending ? null : _send,
          ),
          if (_error != null)
            TextButton(
              onPressed: _checking ? null : _check,
              child: Text(l10n.retry),
            ),
          const SizedBox(height: 12),
          Text(l10n.termsNotice, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
