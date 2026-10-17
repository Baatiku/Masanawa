import '../../l10n/app_localizations.dart';

enum AuthFailureStage { capabilities, sendCode, verifyCode, completeProfile }

/// Server error codes are stable machine data; provider-supplied English
/// messages are never rendered as UI localization. Unknown codes receive an
/// honest, actionable localized fallback for the current auth operation.
abstract final class AuthErrorLocalizer {
  static String message(
    AppLocalizations l10n, {
    required String? code,
    required AuthFailureStage stage,
  }) {
    return switch (code) {
      'OTP_INVALID' => l10n.authCodeInvalid,
      'OTP_LOCKED' => l10n.authCodeLocked,
      'OTP_EXPIRED' => l10n.authCodeExpired,
      'OTP_RATE_LIMITED' || 'RATE_LIMITED' || 'TOO_MANY_REQUESTS' =>
        l10n.authRateLimited,
      'AUTH_UNAVAILABLE' => l10n.signInMethodsUnavailable,
      'ACCOUNT_SUSPENDED' || 'ACCOUNT_INACTIVE' =>
        'This account is suspended. Contact Masanawa support for help.',
      'ACCOUNT_RESTRICTED' =>
        'This account is restricted. Financial actions are paused.',
      'ACCOUNT_RECOVERY_HOLD' =>
        'Account recovery protection is active. Financial actions resume after the security hold.',
      'STEP_UP_EMAIL_REQUIRED' =>
        'Verify a linked email address in Account Security before this action.',
      _ => switch (stage) {
        AuthFailureStage.capabilities => l10n.signInMethodsLoadFailed,
        AuthFailureStage.sendCode => l10n.authSendFailed,
        AuthFailureStage.verifyCode => l10n.authVerifyFailed,
        AuthFailureStage.completeProfile => l10n.authProfileFailed,
      },
    };
  }
}
