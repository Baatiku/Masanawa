import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/app_permissions.dart';
import '../core/call_signaling_tone.dart';
import '../core/live_call_foreground.dart';
import '../core/request_id.dart';
import '../state/session_state.dart';
import 'audio.dart';
import 'transport.dart';

/// Each asynchronous connection owns its own microphone/service lease. A late
/// completion can release only its lease, never a newer call's resources.
class _MediaAttempt {
  HumanCallAudio? audio;
  bool foreground = false, revoked = false;
  Future<void> cleanup = Future<void>.value();
  Future<void> release(Future<void> Function() stop) {
    revoked = true;
    final currentAudio = audio;
    audio = null;
    final service = foreground;
    foreground = false;
    return cleanup = cleanup.catchError((Object _) {}).then((_) async {
      try {
        await currentAudio?.close();
      } catch (_) {}
      if (service) {
        try {
          await stop();
        } catch (_) {}
      }
    });
  }
}

class HumanCallController extends ChangeNotifier {
  HumanCallController({
    required this.api,
    required this.audioFactory,
    required this.ownerId,
    required this.currentOwner,
    this.authorizationEpoch,
    this.currentAuthorizationEpoch,
    required this.requestMicrophone,
    required this.startForeground,
    required this.stopForeground,
    this.autoPoll = true,
  });
  final _tone = CallSignalingTone();
  final HumanCallsTransport api;
  final HumanCallAudio Function() audioFactory;
  final String ownerId;
  final String? Function() currentOwner;
  /// A fresh login to the same user ID is still a distinct authorization.
  /// Null is reserved for isolated test controllers without a session provider.
  final int? authorizationEpoch;
  final int Function()? currentAuthorizationEpoch;
  final Future<bool> Function() requestMicrophone;
  final Future<void> Function() startForeground, stopForeground;
  final bool autoPoll;
  HumanCallRecord? call;
  String? error;
  String mediaState = 'idle';
  bool muted = false, speaker = false, busy = false;
  bool _closed = false,
      _refreshing = false,
      _localEnd = false,
      _pendingEnd = false,
      _ending = false,
      _audioFailed = false;
  int _generation = 0, _signalVersion = 0;
  _MediaAttempt? _media;
  Timer? _poll;
  DateTime? connectedAt, _lastHeartbeat, _lastVerified;
  String? _pendingHandle, _pendingRequest, _requestedCallId;
  bool get active =>
      sameAccount &&
      !_localEnd &&
      call != null &&
      !call!.terminal &&
      (call!.state != 'ringing' ||
          call!.expiresAt == null ||
          call!.expiresAt!.isAfter(DateTime.now()));
  bool get sameAccount =>
      !_closed &&
      currentOwner() == ownerId &&
      ownerId.isNotEmpty &&
      (authorizationEpoch == null ||
          currentAuthorizationEpoch?.call() == authorizationEpoch);
  /// Local audio stops immediately on End, but a new call must wait for the
  /// Gateway to confirm the previous call's terminal state.
  bool get endConfirmationPending => sameAccount && _pendingEnd;
  bool get audioReady =>
      active &&
      _media?.audio != null &&
      ['connected', 'waiting', 'reconnecting'].contains(mediaState);
  void _changed() {
    final record = call;
    unawaited(_tone.update(active && record?.state == 'ringing' && !busy
      ? (record!.incoming ? CallTone.incoming : CallTone.outgoing) : null));
    if (!_closed) notifyListeners();
  }

  void _startPolling() {
    if (autoPoll)
      _poll ??= Timer.periodic(
        const Duration(seconds: 2),
        (_) => unawaited(refresh()),
      );
  }

  bool _valid(_MediaAttempt lease, int generation) =>
      sameAccount &&
      !_localEnd &&
      generation == _generation &&
      identical(_media, lease) &&
      !lease.revoked;

  Future<String?> start(String handle) async {
    if (!sameAccount || busy) return null;
    if (active) {
      error = 'Finish your current call first.';
      _changed();
      return null;
    }
    busy = true;
    error = null;
    _changed();
    final generation = _generation;
    try {
      if (!await requestMicrophone()) {
        if (sameAccount) error = 'Allow microphone access to make a call.';
        return null;
      }
      if (!sameAccount || generation != _generation) return null;
      if (_pendingEnd) {
        await _confirmEnd();
        if (_pendingEnd)
          throw StateError('Previous call end is not confirmed.');
      }
      if (!sameAccount || generation != _generation) return null;
      if (_pendingHandle != handle) {
        _pendingHandle = handle;
        _pendingRequest = createRequestId();
      }
      final data = await api.request(
        'POST',
        '/calls',
        data: {'handle': handle, 'requestId': _pendingRequest},
      );
      if (!sameAccount || generation != _generation) return null;
      call = HumanCallRecord.fromJson(data);
      _requestedCallId = call!.id;
      _signalVersion++;
      _localEnd = false;
      _audioFailed = false;
      mediaState = 'ringing';
      connectedAt = null;
      muted = false;
      speaker = false;
      _lastHeartbeat = null;
      _lastVerified = DateTime.now();
      _pendingHandle = null;
      _pendingRequest = null;
      _startPolling();
      return call!.id;
    } catch (_) {
      if (sameAccount) error = 'Could not start this call. Check your connection and the contact’s calling permissions.';
      return null;
    } finally {
      if (sameAccount) {
        busy = false;
        _changed();
      }
    }
  }

  Future<void> open(String id) async {
    if (!sameAccount) return;
    // Do not replace the original call while an End confirmation is pending.
    // Its retry must never address another call opened from a stale route.
    if (_pendingEnd && call?.id != id) {
      error = 'Finish ending your previous call first.';
      _changed();
      return;
    }
    if (active && call!.id != id) {
      error = 'Another call is already active.';
      _changed();
      return;
    }
    if (_requestedCallId != id) {
      _requestedCallId = id;
      _generation++;
      _signalVersion++;
      await _release();
      call = null;
      _localEnd = false;
      _audioFailed = false;
      connectedAt = null;
      mediaState = 'loading';
      muted = false;
      speaker = false;
      _lastHeartbeat = null;
    }
    final generation = _generation, version = _signalVersion;
    try {
      final data = await api.request(
        'GET',
        '/calls/${Uri.encodeComponent(id)}',
      );
      if (!sameAccount ||
          generation != _generation ||
          version != _signalVersion)
        return;
      call = HumanCallRecord.fromJson(data);
      _lastVerified = DateTime.now();
      if (!_audioFailed) error = null;
      _startPolling();
      await _syncMedia();
    } catch (e) {
      if (sameAccount && generation == _generation) {
        await _handleSignalFailure(e);
        error = 'This call is unavailable. Check your connection and retry.';
      }
    }
    _changed();
  }

  Future<void> refresh() async {
    if (_closed || _refreshing) return;
    if (!sameAccount) {
      _generation++;
      _signalVersion++;
      await _release();
      call = null;
      _changed();
      return;
    }
    final record = call;
    if (record == null) return;
    // An expired ring is resolved by the server (normally as missed).
    // Sending cancel/decline here would overwrite the truthful outcome.
    _refreshing = true;
    final generation = _generation, version = _signalVersion;
    try {
      if (_pendingEnd) {
        await _confirmEnd();
        return;
      }
      final data = await api.request(
        'GET',
        '/calls/${Uri.encodeComponent(record.id)}',
      );
      if (!sameAccount ||
          generation != _generation ||
          version != _signalVersion)
        return;
      call = HumanCallRecord.fromJson(data);
      _lastVerified = DateTime.now();
      if (!_audioFailed) error = null;
      await _syncMedia();
      if (active &&
          (_lastHeartbeat == null ||
              DateTime.now().difference(_lastHeartbeat!) >
                  const Duration(seconds: 20))) {
        await api.request(
          'POST',
          '/calls/${Uri.encodeComponent(record.id)}/heartbeat',
        );
        if (sameAccount && generation == _generation)
          _lastHeartbeat = DateTime.now();
      }
    } catch (e) {
      if (sameAccount && generation == _generation) {
        await _handleSignalFailure(e);
      }
    } finally {
      _refreshing = false;
      _changed();
    }
  }

  Future<void> _handleSignalFailure(Object failure) async {
    final status = failure is DioException
        ? failure.response?.statusCode
        : null;
    if ([401, 403, 404].contains(status)) {
      _generation++;
      _signalVersion++;
      _localEnd = true;
      _pendingEnd = false;
      await _release();
      call = null;
      mediaState = 'failed';
      error = 'This call is no longer available.';
      _poll?.cancel();
      _poll = null;
    } else if (_lastVerified != null &&
        DateTime.now().difference(_lastVerified!) >
            const Duration(seconds: 60)) {
      _audioFailed = true;
      await _release();
      mediaState = 'failed';
      error = 'Call audio stopped because the server could not verify this call. Retry when connected.';
    } else {
      error = 'Connection interrupted. Reconnecting…';
      if (_media?.audio != null) mediaState = 'reconnecting';
    }
  }

  Future<void> accept() async {
    final record = call;
    if (!sameAccount ||
        record == null ||
        !record.incoming ||
        record.state != 'ringing' ||
        !active ||
        busy)
      return;
    busy = true;
    error = null;
    final generation = _generation;
    final version = ++_signalVersion;
    _changed();
    try {
      await _tone.update(null);
      if (!await requestMicrophone()) {
        if (sameAccount)
          error = 'Allow microphone access to answer. You can still decline.';
        return;
      }
      if (!sameAccount ||
          generation != _generation ||
          version != _signalVersion)
        return;
      // A local ringing record is not proof the invitation survived Android's
      // microphone prompt. Another device or the server may have ended it
      // without a notification reaching this process. Re-read before POST.
      final verified = HumanCallRecord.fromJson(await api.request(
        'GET',
        '/calls/${Uri.encodeComponent(record.id)}',
      ));
      if (!sameAccount ||
          generation != _generation ||
          version != _signalVersion ||
          !active ||
          call?.id != record.id ||
          call?.state != 'ringing')
        return;
      call = verified;
      _lastVerified = DateTime.now();
      if (!active ||
          verified.id != record.id ||
          !verified.incoming ||
          verified.state != 'ringing') {
        _changed();
        return;
      }
      final data = await api.request(
        'POST',
        '/calls/${record.id}/transition',
        data: {'action': 'accept'},
      );
      if (!sameAccount ||
          generation != _generation ||
          version != _signalVersion)
        return;
      call = HumanCallRecord.fromJson(data);
      _lastVerified = DateTime.now();
      await _syncMedia();
    } catch (e) {
      if (sameAccount && generation == _generation) {
        await _handleSignalFailure(e);
        error = 'Could not answer. The invitation may have ended. Try again.';
      }
    } finally {
      if (sameAccount) {
        busy = false;
        _changed();
      }
    }
  }

  Future<void> _syncMedia() async {
    final record = call;
    if (record == null || !sameAccount) return;
    if (record.terminal || _localEnd) {
      await _release();
      if (record.terminal) {
        _poll?.cancel();
        _poll = null;
      }
      return;
    }
    if (record.state != 'accepted' || _media != null || _audioFailed) return;
    final lease = _MediaAttempt();
    _media = lease;
    final generation = _generation;
    mediaState = 'connecting';
    _changed();
    try {
      if (!await requestMicrophone())
        throw StateError('Microphone permission required.');
      if (!_valid(lease, generation)) {
        await _retire(lease);
        return;
      }
      await startForeground();
      lease.foreground = true;
      if (!_valid(lease, generation)) {
        await _retire(lease);
        return;
      }
      final token = await api.request('POST', '/calls/${record.id}/token');
      if (!_valid(lease, generation)) {
        await _retire(lease);
        return;
      }
      final audio = audioFactory();
      lease.audio = audio;
      await audio.connect(
        token,
        (status) {
          if (!_valid(lease, generation)) return;
          if (status == 'disconnected' || status == 'failed') {
            _audioFailed = true;
            mediaState = 'failed';
            error = 'Call audio disconnected. Retry audio or end the call.';
            unawaited(_retire(lease));
          } else {
            mediaState = status;
            if (status == 'connected') connectedAt ??= DateTime.now();
          }
          _changed();
        },
        microphoneEnabled: !muted,
        speakerEnabled: speaker,
      );
      if (!_valid(lease, generation)) {
        await audio.close();
        await _retire(lease);
        return;
      }
    } catch (_) {
      final wasCurrent = _valid(lease, generation);
      await _retire(lease);
      if (wasCurrent && sameAccount) {
        _audioFailed = true;
        error =
            'Call audio could not connect. Check microphone access and retry.';
        mediaState = 'failed';
      }
    } finally {
      _changed();
    }
  }

  Future<void> _retire(_MediaAttempt lease) async {
    if (identical(_media, lease)) _media = null;
    await lease.release(stopForeground);
  }

  Future<void> _release() async {
    final lease = _media;
    _media = null;
    if (lease != null) await lease.release(stopForeground);
  }

  Future<void> retryAudio() async {
    if (!sameAccount || !active) return;
    await _release();
    _audioFailed = false;
    error = null;
    await refresh();
  }

  Future<void> toggleMute() async {
    final lease = _media, audio = _media?.audio;
    if (audio == null || !audioReady) return;
    final value = !muted;
    try {
      await audio.mute(value);
      if (sameAccount && identical(_media, lease)) muted = value;
    } catch (_) {
      if (sameAccount) error = 'Could not change the microphone.';
    }
    _changed();
  }

  Future<void> toggleSpeaker() async {
    final lease = _media, audio = _media?.audio;
    if (audio == null || !audioReady) return;
    final value = !speaker;
    try {
      await audio.speaker(value);
      if (sameAccount && identical(_media, lease)) speaker = value;
    } catch (_) {
      if (sameAccount) error = 'Could not change audio output.';
    }
    _changed();
  }

  Future<void> end() async {
    // Two taps must not increment generation or fire parallel transitions.
    if (call == null || !sameAccount || _localEnd || _pendingEnd || _ending)
      return;
    _localEnd = true;
    _pendingEnd = !call!.terminal;
    _generation++;
    _signalVersion++;
    await _release();
    _changed();
    if (_pendingEnd) {
      await _confirmEnd();
      if (_pendingEnd) _startPolling();
    }
  }

  /// Safe to retry after network loss. Reuses the same logical call and
  /// never restarts local media or creates a second outgoing invitation.
  Future<void> retryEndConfirmation() async {
    if (!sameAccount || !_localEnd || !_pendingEnd || _ending) return;
    await _confirmEnd();
    if (_pendingEnd) _startPolling();
  }

  Future<void> _confirmEnd() async {
    final record = call;
    if (record == null || !sameAccount || _ending) return;
    _ending = true;
    final generation = _generation;
    final expiredRing = record.state == 'ringing' &&
        record.expiresAt != null &&
        !record.expiresAt!.isAfter(DateTime.now());
    final action = record.state == 'ringing'
        ? (record.incoming ? 'decline' : 'cancel')
        : 'end';
    try {
      // The authoritative call state can become missed while the device sleeps.
      // Resolve that state before considering any user-ended transition.
      final data = expiredRing
          ? await api.request('GET', '/calls/${record.id}')
          : await api.request(
              'POST',
              '/calls/${record.id}/transition',
              data: {'action': action},
            );
      if (!sameAccount || generation != _generation || call?.id != record.id)
        return;
      call = HumanCallRecord.fromJson(data);
      _pendingEnd = !call!.terminal;
      if (!_pendingEnd) {
        _poll?.cancel();
        _poll = null;
        error = null;
      }
    } catch (_) {
      // Accept can win a simultaneous decline/cancel. Fetch its authoritative
      // state so the next retry sends `end`, rather than replaying decline forever.
      try {
        final data = await api.request('GET', '/calls/${record.id}');
        if (sameAccount && generation == _generation && call?.id == record.id) {
          call = HumanCallRecord.fromJson(data);
          _pendingEnd = !call!.terminal;
          if (!_pendingEnd) {
            _poll?.cancel();
            _poll = null;
            error = null;
          }
        }
      } catch (_) {}
      if (sameAccount && _pendingEnd)
        error = 'Call ended on this phone. Waiting to confirm with the server.';
    } finally {
      _ending = false;
      _changed();
    }
  }

  Future<void> close() async {
    if (_closed) return;
    _closed = true;
    try {
      await _tone.close();
    } catch (_) {
      // Optional signaling can never prevent microphone/service cleanup.
    }
    _generation++;
    _signalVersion++;
    _poll?.cancel();
    _poll = null;
    await _release();
    call = null;
  }

  @override
  void dispose() {
    unawaited(close());
    super.dispose();
  }
}

final humanCallControllerProvider = ChangeNotifierProvider<HumanCallController>(
  (ref) {
    final authorization = ref.watch(sessionProvider.select(
      (s) => (
        s is SessionSignedIn ? s.user.id : null,
        ref.read(sessionProvider.notifier).authorizationEpoch,
      ),
    ));
    final controller = HumanCallController(
      api: ref.watch(humanCallsTransportProvider),
      audioFactory: LiveKitHumanCallAudio.new,
      ownerId: authorization.$1 ?? '',
      authorizationEpoch: authorization.$2,
      currentAuthorizationEpoch: () =>
          ref.read(sessionProvider.notifier).authorizationEpoch,
      currentOwner: () {
        final s = ref.read(sessionProvider);
        return s is SessionSignedIn ? s.user.id : null;
      },
      requestMicrophone: () async {
        if (LiveCallForeground.active) return false;
        return (await AppPermissions.request(AppPermission.microphone)).granted;
      },
      startForeground: () => LiveCallForeground.startOrThrow(),
      stopForeground: LiveCallForeground.stop,
    );
    return controller;
  },
);
