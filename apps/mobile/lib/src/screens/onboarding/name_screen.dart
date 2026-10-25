import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';
import '../../localization/auth_error_localizer.dart';
import '../../localization/language_picker_button.dart';
import '../../state/session_state.dart';
import '../../tokens/masanawa_tokens.dart';
import '../../ui/components/onboarding_scaffold.dart';
import '../../ui/components/primary_button.dart';

class NameScreen extends ConsumerStatefulWidget {
  const NameScreen({super.key});

  @override
  ConsumerState<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends ConsumerState<NameScreen> {
  final _first = TextEditingController();
  final _last = TextEditingController();
  final _phone = TextEditingController();
  bool _saving = false;

  @override
  void dispose() {
    _first.dispose();
    _last.dispose();
    _phone.dispose();
    super.dispose();
  }

  void _snack(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _submit() async {
    final current = ref.read(sessionProvider);
    if (current is SessionSignedIn) {
      context.go('/chats');
      return;
    }
    if (current is! SessionNameRequired && current is! SessionRegisterProfile) {
      context.go('/phone-login');
      return;
    }

    final first = _first.text.trim().replaceAll(RegExp(r'\s+'), ' ');
    final last = _last.text.trim().replaceAll(RegExp(r'\s+'), ' ');
    final phone = _phone.text.replaceAll(RegExp(r'[\s()-]'), '');
    if (first.isEmpty ||
        last.isEmpty ||
        !RegExp(r'^0(70|80|81|90|91)\d{8}$').hasMatch(phone)) {
      _snack(AppLocalizations.of(context).fullNameRequired);
      return;
    }
    if (_saving) return;
    setState(() => _saving = true);
    await ref
        .read(sessionProvider.notifier)
        .submitProfile(
          name: '$first $last',
          firstName: first,
          lastName: last,
          contactPhone: phone,
        );
    if (mounted) setState(() => _saving = false);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sessionProvider, (previous, next) {
      if (next is SessionSignedIn) {
        context.go('/chats');
      } else if (next is SessionNameRequired && next.message != null) {
        _snack(
          AuthErrorLocalizer.message(
            AppLocalizations.of(context),
            code: null,
            stage: AuthFailureStage.completeProfile,
          ),
        );
      } else if (next is SessionError) {
        if (next.code == 'OTP_INVALID' || next.code == 'OTP_LOCKED') {
          context.go('/otp');
          return;
        }
        _snack(
          AuthErrorLocalizer.message(
            AppLocalizations.of(context),
            code: next.code,
            stage: AuthFailureStage.completeProfile,
          ),
        );
      } else if (next is SessionSignedOut) {
        context.go('/phone-login');
      }
    });

    final l10n = AppLocalizations.of(context);
    final session = ref.watch(sessionProvider);
    final identifier = session is SessionNameRequired
        ? session.identifier
        : session is SessionRegisterProfile
        ? session.phone
        : session is SessionSignedIn
        ? (session.user.phone ?? session.user.email ?? '')
        : '';
    return OnboardingScaffold(
      showLogo: false,
      title: l10n.nameQuestion,
      subtitle: identifier.isEmpty
          ? l10n.completeProfile
          : l10n.codeVerifiedName,
      canGoBack: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.center,
            child: LanguagePickerButton(),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _first,
            autofocus: false,
            enabled: !_saving,
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _submit(),
            style: TextStyle(
              fontSize: MasanawaTokens.fontSize['md'],
              color: Theme.of(context).colorScheme.onSurface,
            ),
            decoration: InputDecoration(
              labelText: 'First name',
              hintText: l10n.fullNameExample,
              prefixIcon: const Icon(Icons.person_outline),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  MasanawaTokens.radius['md']!,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _last,
            enabled: !_saving,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              labelText: 'Last name',
              prefixIcon: Icon(Icons.person_outline),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _phone,
            enabled: !_saving,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Contact phone for data bundles',
              hintText: '08012345678',
              prefixIcon: Icon(Icons.phone_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            label: _saving ? l10n.finishingSignIn : l10n.continueAction,
            loading: _saving,
            onPressed: _saving ? null : _submit,
          ),
          const SizedBox(height: 12),
          Text(
            l10n.verifiedSignInNotice,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MasanawaTokens.fontSize['xs'],
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
