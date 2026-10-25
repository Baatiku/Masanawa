import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../core/api/models.dart';
import '../core/network/api_client.dart';
import '../core/providers.dart';
import '../chat/shell_action_journal.dart';
import '../chat/shell_secure_storage.dart';

const _storage = FlutterSecureStorage(
  aOptions: AndroidOptions(),
  iOptions: IOSOptions(
    accessibility: KeychainAccessibility.first_unlock_this_device,
  ),
);
const _kSession = 'auth_session_v2';
const _kAccess = 'auth_access_token';
const _kRefresh = 'auth_refresh_token';
const _kUser = 'auth_user';
const _kExpiry = 'auth_access_expires_in';
// Stable install identifier for "known device" password skipping. It must
// survive logout (see _clear), otherwise every login looks like a new device.
const _kDeviceId = 'auth_device_id';

sealed class SessionState {
  const SessionState();
}

class SessionSignedOut extends SessionState {
  const SessionSignedOut();
}

class SessionRestoring extends SessionState {
  const SessionRestoring();
}

class SessionSendingOtp extends SessionState {
  const SessionSendingOtp(this.channel, this.identifier);
  final OtpChannel channel;
  final String identifier;
}

class SessionAwaitingOtp extends SessionState {
  const SessionAwaitingOtp(this.channel, this.identifier, this.resendInSeconds);
  final OtpChannel channel;
  final String identifier;
  final int resendInSeconds;
}

class SessionVerifying extends SessionState {
  const SessionVerifying(this.channel, this.identifier);
  final OtpChannel channel;
  final String identifier;
}

class SessionNameRequired extends SessionState {
  const SessionNameRequired(
    this.channel,
    this.identifier,
    this.code, {
    this.message,
  });
  final OtpChannel channel;
  final String identifier;
  final String code;
  final String? message;
}

/// 6-digit device password gate for phone login. `setup` is true when the
/// number is not registered yet (the user creates a password, then a name).
/// Email keeps real OTP and never lands here.
class SessionPasswordRequired extends SessionState {
  const SessionPasswordRequired(this.identifier, {required this.setup});
  final String identifier;
  final bool setup;
}

/// Registration continues on the profile step. The password lives in memory
/// only and is sent once by [finishPasswordSetup]; it is never persisted.
class SessionRegisterProfile extends SessionState {
  const SessionRegisterProfile({
    required this.phone,
    required this.password,
    this.email,
  });
  final String phone;
  final String password;
  final String? email;
}

class SessionSignedIn extends SessionState {
  const SessionSignedIn(this.user, this.tokens);
  final AuthUser user;
  final AuthTokens tokens;
}

class SessionError extends SessionState {
  const SessionError(
    this.message, {
    this.code,
    this.channel,
    this.identifier,
    this.resendInSeconds,
  });
  final String message;
  final String? code;
  final OtpChannel? channel;
  final String? identifier;
  final int? resendInSeconds;
}

class SessionController extends Notifier<SessionState> {
  int _authEpoch = 0;

  /// Stable through token refresh; changes on restore, login and logout.
  int get authorizationEpoch => _authEpoch;
  String? _recentlyExpiredOwnerId;

  /// Only a session-expiry redirect may resume this account's protected route.
  String? get recentlyExpiredOwnerId => _recentlyExpiredOwnerId;
  Future<void> _storageWrites = Future<void>.value();

  // Serialize sign-in, refresh and sign-out writes so a late old refresh can
  // never restore credentials after the next account cleared/replaced them.
  Future<void> _writeCredentials(Future<void> Function() action) {
    final next = _storageWrites.catchError((_) {}).then((_) => action());
    _storageWrites = next.catchError((_) {});
    return next;
  }

  @override
  SessionState build() {
    _restore();
    return const SessionRestoring();
  }

  Future<void> _restore() async {
    final epoch = _authEpoch;
    try {
      final stored = await _readPersisted();
      if (epoch != _authEpoch) return;
      if (stored == null) {
        state = const SessionSignedOut();
        return;
      }
      final client = ref.read(apiClientProvider);
      _authEpoch++;
      client.authenticatedAccountId = stored.user.id;
      client.accessToken = stored.accessToken;
      client.onUnauthorized = _rotateOn401;
      state = SessionSignedIn(stored.user, stored);
    } catch (_) {
      if (epoch != _authEpoch) return;
      await _clear();
      state = const SessionSignedOut();
    }
  }

  Future<void> sendOtp({String? phone, String? email}) async {
    final channel = phone != null ? OtpChannel.sms : OtpChannel.email;
    final identifier = phone ?? email!;
    state = SessionSendingOtp(channel, identifier);
    try {
      final res = await ref
          .read(apiClientProvider)
          .otpSend(phone: phone, email: email);
      state = SessionAwaitingOtp(
        res.channel,
        res.identifier,
        res.resendInSeconds,
      );
    } catch (e) {
      final err = e is ApiException
          ? e
          : const ApiException('Could not send verification code');
      state = SessionError(
        err.message,
        code: err.code,
        channel: channel,
        identifier: identifier,
      );
    }
  }

  Future<void> verifyOtp(
    String code, {
    String? phone,
    String? email,
    String? name,
    String? firstName,
    String? lastName,
    String? contactPhone,
  }) async {
    final channel = phone != null ? OtpChannel.sms : OtpChannel.email;
    final identifier = phone ?? email!;
    state = SessionVerifying(channel, identifier);
    try {
      final deviceId = await _deviceId();
      final tokens = await ref
          .read(apiClientProvider)
          .otpVerify(
            code,
            deviceId: deviceId,
            phone: phone,
            email: email,
            name: name,
            firstName: firstName,
            lastName: lastName,
            contactPhone: contactPhone,
          );
      await _persist(tokens);
      if (tokens.user.isNewUser && tokens.user.email != null) {
        try {
          await ref
              .read(apiClientProvider)
              .dio
              .post<Object?>('/v1/gb/wallet/virtual-account')
              .timeout(const Duration(seconds: 20));
        } catch (_) {
          // The server keeps the original pending reference. Account creation
          // can be checked later; sign-in is never undone by provider outage.
        }
      }
      state = SessionSignedIn(tokens.user, tokens);
    } catch (e) {
      final err = e is ApiException
          ? e
          : const ApiException('Could not verify code');
      if (err.code == 'NAME_REQUIRED_ON_SIGNUP') {
        state = SessionNameRequired(channel, identifier, code);
        return;
      }
      if (name != null &&
          err.code != 'OTP_INVALID' &&
          err.code != 'OTP_LOCKED') {
        state = SessionNameRequired(
          channel,
          identifier,
          code,
          message: err.message,
        );
        return;
      }
      state = SessionError(
        err.message,
        code: err.code,
        channel: channel,
        identifier: identifier,
      );
    }
  }

  void clearVerifyError({
    required OtpChannel channel,
    required String identifier,
    int resendInSeconds = 0,
  }) {
    if (state is SessionError) {
      state = SessionAwaitingOtp(channel, identifier, resendInSeconds);
    }
  }

  /// Returns a failed password attempt to the gate so the user can retry.
  void clearPasswordError({required String phone, required bool setup}) {
    if (state is SessionError) {
      state = SessionPasswordRequired(phone, setup: setup);
    }
  }

  Future<String> _deviceId() async {
    final existing = await _storage.read(key: _kDeviceId);
    if (existing != null && existing.isNotEmpty) return existing;
    final rand = Random.secure();
    final id = List<int>.generate(
      16,
      (_) => rand.nextInt(256),
    ).map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    await _storage.write(key: _kDeviceId, value: id);
    return id;
  }

  /// Phone login without SMS OTP. Unregistered numbers go to password setup;
  /// returning users enter their six-digit password if no valid session remains.
  /// Email keeps real OTP and never enters this path.
  Future<void> startPhoneLogin(String phone) async {
    try {
      final deviceId = await _deviceId();
      final status = await ref
          .read(apiClientProvider)
          .authAccountStatus(phone: phone, deviceId: deviceId);
      if (!status.registered) {
        state = SessionPasswordRequired(phone, setup: true);
        return;
      }
      // A remembered install ID is not proof of account ownership. Never
      // ask the Gateway for a passwordless session; use the existing
      // securely stored refresh token only when resuming an active login.
      state = SessionPasswordRequired(phone, setup: false);
    } catch (e) {
      final err = e is ApiException
          ? e
          : const ApiException('Could not start sign-in');
      state = SessionError(
        err.message,
        code: err.code,
        channel: OtpChannel.sms,
        identifier: phone,
      );
    }
  }

  Future<void> verifyPassword({
    required String phone,
    required String password,
  }) async {
    try {
      final deviceId = await _deviceId();
      final tokens = await ref
          .read(apiClientProvider)
          .passwordVerify(phone: phone, deviceId: deviceId, password: password);
      await _persist(tokens);
      state = SessionSignedIn(tokens.user, tokens);
    } catch (e) {
      final err = e is ApiException
          ? e
          : const ApiException('Could not verify password');
      // Accounts created before passwords existed have no credential yet;
      // they create one instead of failing.
      if (err.code == 'PASSWORD_NOT_SET') {
        state = SessionPasswordRequired(phone, setup: true);
        return;
      }
      state = SessionError(
        err.message,
        code: err.code,
        channel: OtpChannel.sms,
        identifier: phone,
      );
    }
  }

  /// Carries a freshly created password into the profile step. The password
  /// stays in memory; [finishPasswordSetup] sends it exactly once.
  void beginPasswordSetup({
    required String phone,
    required String password,
    String? email,
  }) {
    state = SessionRegisterProfile(
      phone: phone,
      password: password,
      email: email,
    );
  }

  /// Profile step shared by both channels: OTP sign-ups verify their code,
  /// password sign-ups create the account. OTP completion must keep the
  /// original verified identifier; a different phone/email is not proof.
  Future<void> submitProfile({
    required String name,
    String? firstName,
    String? lastName,
    String? contactPhone,
    String? phone,
    String? email,
    String? code,
  }) async {
    final current = state;
    try {
      if (current is SessionRegisterProfile) {
        final deviceId = await _deviceId();
        final tokens = await ref
            .read(apiClientProvider)
            .passwordSetup(
              phone: current.phone,
              deviceId: deviceId,
              password: current.password,
              name: name,
              email: current.email,
            );
        await _persist(tokens);
        state = SessionSignedIn(tokens.user, tokens);
        return;
      }
      if (current is SessionNameRequired) {
        await verifyOtp(
          code ?? current.code,
          phone: current.channel == OtpChannel.sms ? current.identifier : null,
          email: current.channel == OtpChannel.email
              ? current.identifier
              : null,
          name: name,
          firstName: firstName,
          lastName: lastName,
          contactPhone: contactPhone,
        );
        return;
      }
    } catch (e) {
      final err = e is ApiException
          ? e
          : const ApiException('Could not save profile');
      state = SessionError(err.message, code: err.code);
    }
  }

  Future<void> refresh() async {
    final epoch = _authEpoch;
    final stored = await _readPersisted();
    if (epoch != _authEpoch) return;
    if (stored == null) {
      _recentlyExpiredOwnerId = (state is SessionSignedIn)
          ? (state as SessionSignedIn).user.id
          : null;
      await _clear();
      state = const SessionSignedOut();
      return;
    }
    try {
      final rotated = await ref
          .read(apiClientProvider)
          .refresh(stored.refreshToken);
      if (epoch != _authEpoch) return;
      if (rotated.user.id != stored.user.id) {
        throw StateError('Refresh cannot replace the authenticated account');
      }
      await _persist(rotated, expectedEpoch: epoch);
      if (epoch != _authEpoch) return;
      state = SessionSignedIn(rotated.user, rotated);
    } catch (error) {
      if (epoch != _authEpoch) return;
      // Temporary outages must not destroy authenticated drafts/credentials.
      // Only a rejected refresh (or changed account) requires re-login.
      final unauthorized =
          error is ApiException &&
          (error.statusCode == 401 ||
              error.code == 'SESSION_NOT_FOUND' ||
              error.code == 'UNAUTHORIZED');
      if (!unauthorized && error is! StateError) return;
      _recentlyExpiredOwnerId = stored.user.id;
      await _clear();
      state = const SessionSignedOut();
    }
  }

  Future<String?> _rotateOn401() async {
    await refresh();
    if (state is SessionSignedIn) {
      return (state as SessionSignedIn).tokens.accessToken;
    }
    return null;
  }

  Future<void> logout() async {
    _recentlyExpiredOwnerId =
        null; // Explicit sign-out never resumes a private route.
    // Immediately revoke permission for in-flight refresh to write the old
    // session, even if the best-effort remote logout is slow/offline.
    final epoch = ++_authEpoch;
    try {
      await ref.read(apiClientProvider).logout();
    } catch (_) {
      // Sign-out always completes locally on network failure.
    }
    if (epoch != _authEpoch) return;
    await _clear();
    state = const SessionSignedOut();
  }

  Future<void> _persist(AuthTokens tokens, {int? expectedEpoch}) async {
    if (expectedEpoch != null && expectedEpoch != _authEpoch) return;
    final client = ref.read(apiClientProvider);
    final previousOwnerId = client.authenticatedAccountId;
    if (expectedEpoch == null) {
      _authEpoch++; // New login, even if the same fan signs in again.
      client.authenticatedAccountId = null;
    }
    final epoch = _authEpoch;
    client.authenticatedAccountId = tokens.user.id;
    client.accessToken = tokens.accessToken;
    client.onUnauthorized = _rotateOn401;

    // One encrypted record, with serialized epochs to prevent a refresh
    // from racing a logout or a new account's credential storage.
    await _writeCredentials(() async {
      if (epoch != _authEpoch) return;
      // A fresh sign-in replaces the previous session's opaque action grants.
      // Never preserve a previous account's private form values on-device.
      if (expectedEpoch == null && previousOwnerId != null) {
        await EncryptedShellActionJournal.clearOwner(
          store: FlutterShellEncryptedStore(storage: _storage),
          ownerId: previousOwnerId,
        );
      }
      if (epoch != _authEpoch) return;
      await _storage.write(
        key: _kSession,
        value: jsonEncode({
          'accessToken': tokens.accessToken,
          'refreshToken': tokens.refreshToken,
          'accessExpiresIn': tokens.accessExpiresIn,
          'user': tokens.user.toJson(),
        }),
      );
    });
  }

  AuthTokens? _decodeSessionBlob(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    try {
      final value = jsonDecode(raw);
      if (value is! Map<String, dynamic>) return null;
      final access = value['accessToken'];
      final refresh = value['refreshToken'];
      final expiry = value['accessExpiresIn'];
      final userRaw = value['user'];
      if (access is! String ||
          access.isEmpty ||
          refresh is! String ||
          refresh.isEmpty ||
          userRaw is! Map<String, dynamic>) {
        return null;
      }
      return AuthTokens(
        accessToken: access,
        refreshToken: refresh,
        accessExpiresIn: expiry is int ? expiry : 900,
        user: AuthUser.fromJson(userRaw),
      );
    } catch (_) {
      return null;
    }
  }

  Future<AuthTokens?> _readPersisted() async {
    // Fast path: current installs require one encrypted read.
    final current = _decodeSessionBlob(await _storage.read(key: _kSession));
    if (current != null) return current;

    // Backward-compatible migration for APKs that stored four independent keys.
    // One bulk platform call is cheaper than four additional secure-storage
    // calls on a fresh install while still preserving legacy upgrades.
    final legacy = await _storage.readAll();
    final access = legacy[_kAccess];
    final refresh = legacy[_kRefresh];
    final userRaw = legacy[_kUser];
    final expiryRaw = legacy[_kExpiry];
    if (access == null || refresh == null || userRaw == null) return null;
    if (access.isEmpty || refresh.isEmpty) return null;

    try {
      final tokens = AuthTokens(
        accessToken: access,
        refreshToken: refresh,
        accessExpiresIn: int.tryParse(expiryRaw ?? '') ?? 900,
        user: AuthUser.fromJson(jsonDecode(userRaw) as Map<String, dynamic>),
      );

      // The old fire-and-forget write could race sign-out and recreate a
      // deleted bearer record. Migrate once through the same serialized queue
      // as refresh/login/logout; never write credentials after epoch change.
      final migrationEpoch = _authEpoch;
      try {
        await _writeCredentials(() async {
          if (migrationEpoch != _authEpoch) return;
          await _storage.write(
            key: _kSession,
            value: jsonEncode({
              'accessToken': tokens.accessToken,
              'refreshToken': tokens.refreshToken,
              'accessExpiresIn': tokens.accessExpiresIn,
              'user': tokens.user.toJson(),
            }),
          );
          // Only delete legacy records after the new encrypted record is
          // durable. A failed migration keeps the old valid credentials.
          await _storage.delete(key: _kAccess);
          await _storage.delete(key: _kRefresh);
          await _storage.delete(key: _kExpiry);
          await _storage.delete(key: _kUser);
        });
      } catch (_) {
        // A secure-store migration failure is not permission to sign out a
        // valid legacy session; retry on a later launch.
      }
      return migrationEpoch == _authEpoch ? tokens : null;
    } catch (_) {
      return null;
    }
  }

  Future<void> _clear() async {
    final epoch = ++_authEpoch;
    final client = ref.read(apiClientProvider);
    final previousOwnerId = client.authenticatedAccountId;
    client.authenticatedAccountId = null;
    client.accessToken = null;
    client.onUnauthorized = null;
    await _writeCredentials(() async {
      if (epoch != _authEpoch) return;
      await Future.wait<void>([
        _storage.delete(key: _kSession),
        _storage.delete(key: _kAccess),
        _storage.delete(key: _kRefresh),
        _storage.delete(key: _kExpiry),
        _storage.delete(key: _kUser),
      ]);
      // Purge user-scoped ephemeral action tokens/values, but do NOT delete
      // an unresolved MSNW idempotency journal needed to recover a transfer.
      if (previousOwnerId != null) {
        await EncryptedShellActionJournal.clearOwner(
          store: FlutterShellEncryptedStore(storage: _storage),
          ownerId: previousOwnerId,
        );
      }
    });
  }
}

final sessionProvider = NotifierProvider<SessionController, SessionState>(
  SessionController.new,
);

final isSignedInProvider = Provider<bool>((ref) {
  return ref.watch(sessionProvider) is SessionSignedIn;
});
