import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';

import '../agents/agent_shell.dart';
import '../core/live_voice_session.dart';
import '../core/call_recording.dart';
import 'call_outcome.dart';
import 'group_call_controller.dart';
import 'incoming_call_transport.dart';

typedef IncomingSessionFactory =
    LiveVoiceSession Function(
      AgentLiveVoiceGrant grant,
      IncomingCallRecord call,
      GroupAdmission admission,
      void Function() closed,
    );

class IncomingCallController extends ChangeNotifier
    with WidgetsBindingObserver {
  IncomingCallController({
    required this.callId,
    required this.accountKey,
    required this.currentAccountKey,
    required this.transport,
    required this.authorize,
    this.onConnected,
    this.onClosed,
    this.onOutcome,
    IncomingSessionFactory? sessionFactory,
    this.pollInterval = const Duration(seconds: 5),
  }) : _sessionFactory = sessionFactory ?? _nativeSession {
    WidgetsBinding.instance.addObserver(this);
    _poll = Timer.periodic(pollInterval, (_) {
      if (_foreground && !busy && !ended) unawaited(refresh());
    });
  }
  static LiveVoiceSession _nativeSession(
    AgentLiveVoiceGrant grant,
    IncomingCallRecord call,
    GroupAdmission admission,
    void Function() closed,
  ) => LiveVoiceSession(
    grant: grant,
    characterName: call.displayName,
    maxDuration: admission.remaining,
    endAt: admission.expiresAt,
    onClosed: closed,
  );
  final String callId, accountKey;
  final String? Function() currentAccountKey;
  final IncomingCallTransport transport;
  final Future<GroupAdmission?> Function(IncomingCallRecord) authorize;
  final Future<void> Function(AgentLiveVoiceGrant)? onConnected, onClosed;
  final Future<void> Function(AgentLiveVoiceGrant,CallEndReason?)? onOutcome;
  final IncomingSessionFactory _sessionFactory;
  final Duration pollInterval;
  Timer? _poll;
  IncomingCallRecord? call;
  LiveVoiceSession? _session;
  StreamSubscription<LiveVoiceState>? _states;
  Timer? _elapsedTick;
  final Stopwatch _elapsed=Stopwatch();
  CallRecorder? recording;
  Duration get elapsed=>_elapsed.elapsed;
  bool get audioInterrupted=>_session?.audioInterrupted??false;
  String get statusLabel=>audioInterrupted?'Audio paused':_session?.reconnecting==true?'Reconnecting…':muted?'Muted':'Connected';
  Future<void> resumeAudio()async{await _session?.resumeAudio();_notify();}
  Future<void> toggleRecording()async{final capture=recording;if(capture==null)return;if(capture.recording){await capture.stop();}else if(_valid&&active){await capture.start();}}
  GroupAdmission? _admission;
  AgentLiveVoiceGrant? _grant;
  String? error;
  bool busy = false,
      ended = false,
      active = false,
      muted = false,
      _disposed = false,
      _loading = false;
  Future<void>? _ending;
  bool _foreground = true;
  bool get _valid => !_disposed && !ended && currentAccountKey() == accountKey;
  bool get canAccept =>
      _foreground &&
      _valid &&
      !busy &&
      call?.ringing == true &&
      call!.expiresAt.isAfter(DateTime.now());
  void _notify() {
    if (!_disposed) notifyListeners();
  }

  void _check() {
    if (!_valid) throw StateError('This call ended or your account changed.');
  }

  Future<void> refresh() async {
    if (!_foreground || !_valid || _loading || busy) return;
    _loading = true;
    try {
      final value = await transport.load(callId);
      if (!_valid) return;
      // Once authoritative state leaves ringing, an old response cannot revive it.
      if (call != null && !call!.ringing && value.ringing) return;
      call = value;
      error = null;
      if (!value.ringing && value.state != 'accepted') { _session?.endReason??=CallEndReason.providerEnded; await end(); }
    } catch (_) {
      if (_valid) {
        error = 'Could not check this call. Check your connection and retry.';
      }
    } finally {
      _loading = false;
      _notify();
    }
  }

  Future<void> accept() async {
    if (!canAccept) return;
    busy = true;
    error = null;
    _notify();
    try {
      // Acceptance is a server race decision; it never authorizes spending.
      final accepted = await transport.accept(callId);
      _check();
      call = accepted;
      if (accepted.state != 'accepted') {
        await end();
        return;
      }
      final admission = await authorize(accepted);
      if (admission != null) _admission = admission;
      if (!_valid) {
        await _cleanup();
        return;
      }
      if (admission == null) {
        await end();
        return;
      }
      if (admission.remaining <= Duration.zero) {
        throw StateError('Voice approval expired.');
      }
      final grant = await transport.token(
        callId,
        admissionId: admission.admissionId,
      );
      _grant = grant;
      if (!_valid) {
        await _cleanup();
        return;
      }
      final session = _sessionFactory(
        grant,
        accepted,
        admission,
        () => unawaited(end()),
      );
      // The fresh ephemeral Gemini permission must be for the SAME accepted
      // invitation, signed-in account and consented paid admission. A
      // resumption is never a second inbound call or financial reservation.
      session.renewConnectionGrant = () async {
        if (!_valid || currentAccountKey() != accountKey ||
            _admission?.admissionId != admission.admissionId ||
            admission.remaining <= Duration.zero ||
            call?.callId != callId || call?.state != 'accepted') {
          throw StateError('The incoming call admission is no longer valid.');
        }
        return transport.token(
          callId, admissionId: admission.admissionId,
        );
      };
      _session = session;
      if(session.audioObserver==null){
        recording=CallRecorder(store:CallRecordingStore(accountKey),agentName:accepted.displayName,
          isCurrentAccount:()=>currentAccountKey()==accountKey,onChanged:_notify);
        session.audioObserver=recording;
      }
      _states=session.states.listen((_)=>_notify());
      await session.start();
      await session.ready;
      _check();
      await onConnected?.call(grant);
      _check();
      await admission.onMediaStarted();
      _check();
      active = true;
      _elapsed.start();_elapsedTick=Timer.periodic(const Duration(seconds:1),(_)=>_notify());
    } catch (failure) {
      _session?.endReason ??= currentAccountKey()!=accountKey ? CallEndReason.accountChanged : CallEndReason.connectionFailed;
      error = failure is StateError
          ? failure.message
          : 'Could not connect this call. Check Calls and Wallet activity.';
      await end();
    } finally {
      busy = false;
      _notify();
    }
  }

  Future<void> decline() async {
    if (!canAccept) return;
    busy = true;
    _notify();
    try {
      final value = await transport.decline(callId);
      if (_valid) {
        call = value;
        await end();
      }
    } catch (_) {
      if (_valid) error = 'Could not decline this call. Retry.';
    } finally {
      busy = false;
      _notify();
    }
  }

  Future<void> setMuted(bool value) async {
    await _session?.mute(value);
    muted = value;
    _notify();
  }

  Future<void> _cleanup() async {
    final session = _session;
    _session = null;
    _elapsed.stop();_elapsedTick?.cancel();
    await _states?.cancel();_states=null;
    recording?.ended();
    final admission = _admission;
    _admission = null;
    final grant = _grant;
    _grant = null;
    try {
      await session?.close();
    } catch (_) {}
    try {
      if (grant != null) {await onOutcome?.call(grant,session?.endReason);await onClosed?.call(grant);}
    } catch (_) {}
    try {
      await admission?.onEnded();
    } catch (_) {
      error =
          'Call ended. Billing completion is pending; check Wallet activity.';
    }
  }

  Future<void> end() {
    if (_ending != null) return _ending!;
    _session?.endReason??=currentAccountKey()!=accountKey?CallEndReason.accountChanged:CallEndReason.userEnded;
    ended = true;
    active = false;
    _poll?.cancel();
    _notify();
    return _ending = _cleanup();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _foreground = state == AppLifecycleState.resumed;
    if (state == AppLifecycleState.resumed) {
      if (!ended) unawaited(refresh());
    } else if (state == AppLifecycleState.detached) {
      _session?.endReason??=CallEndReason.appClosed;
      if (busy || _session != null) unawaited(end());
    } else if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.hidden) {
      // An accepted native Android call owns a visible foreground microphone
      // notification and remains live on screen lock. Unanswered invitations,
      // half-authorized calls and non-Android clients release conservatively.
      if (!Platform.isAndroid || !active || _session == null) {
        if (busy || _session != null) unawaited(end());
      }
    }
  }

  @override
  void dispose() {
    _disposed = true;
    WidgetsBinding.instance.removeObserver(this);
    unawaited(end());
    super.dispose();
  }
}

