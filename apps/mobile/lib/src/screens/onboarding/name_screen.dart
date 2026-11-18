import '../../core/username_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';
import '../../localization/auth_error_localizer.dart';
import '../../localization/language_picker_button.dart';
import '../../state/session_state.dart';
import '../../core/api/models.dart' show OtpChannel;
import '../../core/phone/country_codes.dart';
import '../../core/phone/country_subdivisions.dart';
import '../../tokens/masanawa_tokens.dart';
import '../../ui/components/onboarding_scaffold.dart';
import '../../ui/components/phone_field.dart';
import '../../ui/components/primary_button.dart';

class NameScreen extends ConsumerStatefulWidget {
  const NameScreen({super.key});

  @override
  ConsumerState<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends ConsumerState<NameScreen> {
  final _username = TextEditingController();
  final _first = TextEditingController();
  final _last = TextEditingController();
  final _phone = TextEditingController();
  PhoneCountry _country = kDefaultCountry;
  CountrySubdivisions? _regions;
  String? _subdivision;
  String? _regionLoadError;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    final session = ref.read(sessionProvider);
    final registeredPhone = session is SessionRegisterProfile
        ? session.phone
        : session is SessionNameRequired && session.channel == OtpChannel.sms
        ? session.identifier
        : null;
    if (registeredPhone != null) {
      _phone.text = registeredPhone;
      _country = detectCountry(registeredPhone);
    } else {
      // The device's locale is only a suggestion, not residence or a verified
      // location. Always leave the country picker editable and require the
      // actual contact phone and state to be confirmed by the person.
      final localeCountry =
          WidgetsBinding.instance.platformDispatcher.locale.countryCode;
      _country = suggestPhoneCountryFromLocale(localeCountry);
      _phone.text = '+${_country.dialCode}';
    }
    _loadRegionChoices();
  }

  Future<void> _loadRegionChoices() async {
    setState(() => _regionLoadError = null);
    try {
      final loaded = await CountrySubdivisions.load();
      if (mounted)
        setState(() {
          _regions = loaded;
          _regionLoadError = null;
        });
    } catch (_) {
      if (mounted)
        setState(
          () =>
              _regionLoadError = 'State and region list is unavailable. Retry.',
        );
    }
  }

  void _onCountryChanged(PhoneCountry next) {
    setState(() {
      _country = next;
      _subdivision = null;
    });
  }

  @override
  void dispose() {
    _username.dispose();
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
      context.go('/home');
      return;
    }
    if (current is! SessionNameRequired && current is! SessionRegisterProfile) {
      context.go('/phone-login');
      return;
    }

    final first = _first.text.trim().replaceAll(RegExp(r'\s+'), ' ');
    final last = _last.text.trim().replaceAll(RegExp(r'\s+'), ' ');
    final phone = normalizeE164(_phone.text, country: _country);
    final states =
        _regions?.forCountry(_country.iso) ?? const <PhoneSubdivision>[];
    if (first.isEmpty ||
        last.isEmpty ||
        !isPlausibleSignupContact(phone, _country) ||
        _regions == null ||
        (states.isNotEmpty && !states.any((s) => s.code == _subdivision))) {
      _snack('Enter a valid contact phone and select your state or region.');
      return;
    }
    if (current is SessionNameRequired &&
        _username.text.trim().isNotEmpty &&
        !validEditableUsername(_username.text)) {
      _snack(
        'Choose a username of 2–40 letters, numbers, dots or underscores, starting with a letter.',
      );
      return;
    }
    if (_saving) return;
    setState(() => _saving = true);
    await ref
        .read(sessionProvider.notifier)
        .submitProfile(
          name: '$first $last',
          username:
              current is SessionNameRequired && _username.text.trim().isNotEmpty
              ? normalizedUsername(_username.text)
              : null,
          firstName: first,
          lastName: last,
          contactPhone: phone,
          countryIso: _country.iso,
          subdivisionIso: _subdivision,
        );
    if (mounted) setState(() => _saving = false);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(sessionProvider, (previous, next) {
      if (next is SessionSignedIn) {
        context.go('/home');
      } else if (next is SessionNameRequired && next.message != null) {
        _snack(
          AuthErrorLocalizer.message(
            AppLocalizations.of(context),
            code: next.failureCode,
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
              fillColor: Theme.of(context).inputDecorationTheme.fillColor,
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
          const Text('Contact phone (not verified)'),
          const SizedBox(height: 6),
          PhoneField(
            controller: _phone,
            enabled: !_saving,
            initialCountry: _country,
            nationalEntry: true,
            onCountryChanged: _onCountryChanged,
          ),
          const SizedBox(height: 6),
          Text(
            'Selected country: ${_country.name}. Change it if the phone prefix suggests the wrong country.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          if (_regions == null && _regionLoadError == null)
            const Text('Loading state and region choices…')
          else if (_regions == null) ...[
            Text(_regionLoadError ?? 'State and region list is unavailable.'),
            TextButton.icon(
              onPressed: _saving ? null : _loadRegionChoices,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry region list'),
            ),
          ] else if (_regions!.forCountry(_country.iso).isNotEmpty)
            DropdownButtonFormField<String>(
              key: ValueKey('signup-subdivision-${_country.iso}'),
              initialValue: _subdivision,
              isExpanded: true,
              decoration: const InputDecoration(
                labelText: 'State / province / region',
                border: OutlineInputBorder(),
              ),
              items: [
                for (final state in _regions!.forCountry(_country.iso))
                  DropdownMenuItem(
                    value: state.code,
                    child: Text(state.name, overflow: TextOverflow.ellipsis),
                  ),
              ],
              onChanged: _saving
                  ? null
                  : (value) => setState(() => _subdivision = value),
            )
          else
            const Text('No listed states for this country.'),
          const SizedBox(height: 24),
          if (ref.watch(sessionProvider) is! SessionRegisterProfile) ...[
            const Text(
              'We choose a username from your first name, then your full name and phone suffix if needed. You can choose one now or change it in Settings.',
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('signup-username'),
              controller: _username,
              enabled: !_saving,
              autocorrect: false,
              enableSuggestions: false,
              maxLength: 40,
              decoration: const InputDecoration(
                labelText: 'Username (optional)',
                prefixText: '@',
                hintText: 'Leave blank to choose automatically',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
          ],
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
