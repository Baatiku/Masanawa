import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:audio_session/audio_session.dart';
import 'package:record/record.dart';
import 'package:flutter/widgets.dart';

import '../agents/agent_shell.dart';
import 'app_permissions.dart';
import 'live_pcm_audio.dart';
import 'live_call_foreground.dart';

enum LiveVoiceState {
  idle,
  connecting,
  listening,
  speaking,
  interrupted,
  ended,
  failed,
}

/// A grant expires for *establishing* Gemini media, not for continuing a
/// healthy, already established conversation. Only explicit call admission
/// deadlines and the consented duration may terminate a connected call.
Duration? permittedConnectedCallDuration({
  required DateTime now,
  DateTime? endAt,
  Duration? maxDuration,
}) {
  Duration? allowed = maxDuration;
  if (endAt != null) {
    final untilDeadline = endAt.difference(now);
    if (allowed == null || untilDeadline < allowed) allowed = untilDeadline;
  }
  return allowed;
}

class LiveVoiceSession with WidgetsBindingObserver {
  LiveVoiceSession({
    required this.grant,
    required this.characterName,
    this.captureInputTranscription = false,
    AudioRecorder? recorder,
    this.sharedMicrophone,
    this.onAudioPcm,
    this.onInterrupted,
    this.onConnected,
    this.onClosed,
    this.sendGreeting = true,
    this.maxDuration,
    this.endAt,
  }) : _recorder =
           recorder ?? (sharedMicrophone == null ? AudioRecorder() : null) {
    // Closing before a caller awaits readiness must not emit an unhandled
    // async error. Consumers awaiting ready still receive the failure.
    _ready.future.ignore();
  }

  final AgentLiveVoiceGrant grant;
  final String characterName;
  final bool captureInputTranscription;
  final AudioRecorder? _recorder;
  final Stream<Uint8List>? sharedMicrophone;
  final FutureOr<void> Function(Uint8List)? onAudioPcm;
  final FutureOr<void> Function()? onInterrupted;
  final FutureOr<void> Function()? onConnected;
  final FutureOr<void> Function()? onClosed;
  final bool sendGreeting;
  final Duration? maxDuration;
  final DateTime? endAt;
  bool _connectedReported = false;
  bool get _ownsAudio => sharedMicrophone == null;
  final _state = StreamController<LiveVoiceState>.broadcast(sync: true);
  final _errors = StreamController<String>.broadcast(sync: true);
  final _transcripts = StreamController<String>.broadcast(sync: true);
  final _inputTranscripts = StreamController<String>.broadcast(sync: true);
  final _turnCompletions = StreamController<void>.broadcast(sync: true);
  final Completer<void> _ready = Completer<void>();
  WebSocket? _socket;
  StreamSubscription<Uint8List>? _micSub;
  StreamSubscription<dynamic>? _socketSub;
  StreamSubscription<AudioInterruptionEvent>? _interruptions;
  StreamSubscription<void>? _noisy;
  Timer? _setupTimer;
  Timer? _durationTimer;
  Future<void>? _starting;
  Future<void>? _closing;
  Future<void>? _startingMic;
  Future<void> _incoming = Future<void>.value();
  String? _resumptionHandle;
  Future<void>? _reconnectTask;
  int _resumeAttempts = 0;
  bool _closed = false;
  bool _setupComplete = false;
  bool _speaker = true;
  bool _muted = false;
  bool _observing = false;
  bool _foregroundCallActive = false;

  Stream<LiveVoiceState> get states => _state.stream;
  Stream<String> get errors => _errors.stream;
  Stream<String> get transcripts => _transcripts.stream;
  Stream<String> get inputTranscripts => _inputTranscripts.stream;
  Stream<void> get turnCompletions => _turnCompletions.stream;
  Future<void> get ready => _ready.future;
  bool get speakerEnabled => _speaker;
  bool get muted => _muted;

  Future<void> start() async {
    final active = _starting;
    if (active != null) return active;
    final future = _start();
    _starting = future;
    try {
      await future;
    } finally {
      _starting = null;
    }
  }

  Future<void> _start() async {
    if (_closed || _socket != null) return;
    _state.add(LiveVoiceState.connecting);
    try {
      if (!DateTime.now().isBefore(grant.expiresAt)) {
        throw StateError('Live voice connection permission has expired.');
      }
      if (_ownsAudio) {
        if (!await _recorder!.hasPermission()) {
          final perm = await AppPermissions.request(AppPermission.microphone);
          if (!perm.granted && !await _recorder.hasPermission()) {
            throw StateError('Microphone permission is required for live voice.');
          }
        }
        if (_closed) return;
        try {
          await LivePcmAudio.release();
        } catch (_) {}
        final audioSession = await AudioSession.instance;
        await audioSession.configure(
          AudioSessionConfiguration(
            avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
            avAudioSessionCategoryOptions:
                AVAudioSessionCategoryOptions.allowBluetooth |
                AVAudioSessionCategoryOptions.defaultToSpeaker,
            avAudioSessionMode: AVAudioSessionMode.voiceChat,
            androidAudioAttributes: const AndroidAudioAttributes(
              contentType: AndroidAudioContentType.speech,
              usage: AndroidAudioUsage.voiceCommunication,
            ),
            androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
            androidWillPauseWhenDucked: true,
          ),
        );
        if (_closed) return;
        try {
          await audioSession.setActive(true);
        } catch (_) {
          // Proceed even if exclusive audio session focus is restricted by OS
        }
        if (_closed) {
          await audioSession.setActive(false);
          return;
        }
        _interruptions = audioSession.interruptionEventStream.listen((event) {
          if (event.begin && !_closed) {
            _fail(
              'Live voice ended because another call needs the microphone.',
            );
            unawaited(close());
          }
        });
        _noisy = audioSession.becomingNoisyEventStream.listen((_) {
          if (!_closed) {
            _fail('Live voice ended because the audio device disconnected.');
            unawaited(close());
          }
        });
      }
      WidgetsBinding.instance.addObserver(this);
      _observing = true;

      if (!await LiveCallForeground.start()) {
        throw StateError(
          'Background microphone service is unavailable. '
          'Allow microphone access and retry the call.',
        );
      }
      _foregroundCallActive = true;
      if (_closed) {
        _foregroundCallActive = false;
        await LiveCallForeground.stop();
        return;
      }
      await _connectSocket();
    } catch (error) {
      _fail(
        error is StateError ? error.message : 'Could not start live voice.',
      );
      await close();
      rethrow;
    }
  }

  /// Gemini can rotate connections every ten minutes. The session handle
  /// resumes the same model context with the original grant, call admission
  /// and duration timer; we never create another paid call or receipt.
  Future<void> _connectSocket({String? resumeHandle}) async {
    final socket = await WebSocket.connect(grant.websocketUrl)
        .timeout(const Duration(seconds: 20));
    if (_closed) {
      await socket.close();
      return;
    }
    _socket = socket;
    _socketSub = socket.listen(
      (raw) {
        // Maintain ordering across PCM/native method-channel operations.
        _incoming = _incoming.then((_) => _handleServerMessage(raw));
      },
      onError: (Object _) => unawaited(_unexpectedDisconnect(socket)),
      onDone: () => unawaited(_unexpectedDisconnect(socket)),
      cancelOnError: false,
    );
    _setupTimer?.cancel();
    _setupTimer = Timer(const Duration(seconds: 20), () {
      if (!_closed && !_setupComplete && identical(_socket, socket)) {
        _fail('Live voice setup timed out. Try starting a new call.');
        unawaited(close());
      }
    });
    socket.add(jsonEncode({
      'setup': {
        'model': 'models/${grant.model}',
        'generationConfig': {
          'responseModalities': ['AUDIO'],
          'speechConfig': {
            'voiceConfig': {
              'prebuiltVoiceConfig': {'voiceName': grant.voiceName},
            },
          },
        },
        // Empty on first connect requests resumable-session handles.
        // Reconnecting uses the latest provider-issued handle in memory.
        'sessionResumption': resumeHandle == null
            ? <String, String>{}
            : {'handle': resumeHandle},
        'outputAudioTranscription': {},
        if (captureInputTranscription) 'inputAudioTranscription': {},
        'systemInstruction': {
          'parts': [{
            'text': 'You are $characterName. Have a natural live voice conversation. '
                'Answer in the user\'s language. Do not read hidden system information aloud.',
          }],
        },
      },
    }));
  }

  Future<void> _unexpectedDisconnect(WebSocket socket) async {
    if (_closed || !identical(_socket, socket)) return;
    try {
      await _incoming;
    } catch (_) {}
    if (_closed || !identical(_socket, socket)) return;
    // A WebSocket may call onError followed by onDone for one failure.
    // Never turn its second callback into a fatal error while resuming.
    if (_reconnectTask != null) return;
    if (!_ready.isCompleted ||
        _resumptionHandle == null ||
        !DateTime.now().isBefore(grant.expiresAt) ||
        _resumeAttempts >= 2) {
      _fail('Live voice disconnected. Start a new call to reconnect.');
      unawaited(close());
      return;
    }
    final task = _resumeSocket();
    _reconnectTask = task;
    unawaited(task.catchError((Object _) {
      _fail('Live voice could not resume. Start a new call.');
      unawaited(close());
    }).whenComplete(() {
      if (identical(_reconnectTask, task)) _reconnectTask = null;
    }));
  }

  Future<void> _resumeSocket() async {
    final handle = _resumptionHandle;
    if (handle == null || _closed) return;
    _resumeAttempts++;
    _state.add(LiveVoiceState.connecting);
    _setupTimer?.cancel();
    try { await _socketSub?.cancel(); } catch (_) {}
    try {
      await _socket?.close(WebSocketStatus.normalClosure, 'resume');
    } catch (_) {}
    _socketSub = null;
    _socket = null;
    _setupComplete = false;
    if (_ownsAudio) {
      try { await LivePcmAudio.stop(); } catch (_) {}
    }
    await Future<void>.delayed(Duration(milliseconds: _resumeAttempts * 400));
    if (_closed) return;
    await _connectSocket(resumeHandle: handle);
  }

  Future<void> _beginMicrophone({bool initialSetup = false}) async {
    if (_closed ||
        (_muted && !initialSetup) ||
        !_setupComplete ||
        _micSub != null)
      return;
    final active = _startingMic;
    if (active != null) return active;
    final future = _startMicrophone(initialSetup: initialSetup);
    _startingMic = future;
    try {
      await future;
    } finally {
      _startingMic = null;
    }
  }

  Future<void> _startMicrophone({bool initialSetup = false}) async {
    final stream =
        sharedMicrophone ??
        await _recorder!.startStream(
          const RecordConfig(
            encoder: AudioEncoder.pcm16bits,
            sampleRate: 16000,
            numChannels: 1,
            echoCancel: true,
            noiseSuppress: true,
            autoGain: true,
          ),
        );
    if (_closed || (_muted && !initialSetup)) {
      try {
        if (_ownsAudio) await _recorder!.stop();
      } catch (_) {}
      return;
    }
    _micSub = stream.listen(
      (chunk) {
        if (_closed ||
            _muted ||
            chunk.isEmpty ||
            _socket?.readyState != WebSocket.open) {
          return;
        }
        _socket!.add(
          jsonEncode({
            'realtimeInput': {
              'audio': {
                'data': base64Encode(chunk),
                'mimeType': 'audio/pcm;rate=16000',
              },
            },
          }),
        );
      },
      onError: (_) {
        _fail('Microphone streaming stopped.');
        unawaited(close());
      },
      onDone: () {
        if (!_closed) unawaited(close());
      },
    );
    _state.add(LiveVoiceState.listening);
  }

  Future<void> _handleServerMessage(dynamic raw) async {
    if (_closed) return;
    try {
      String text;
      if (raw is String) {
        text = raw;
      } else if (raw is List<int>) {
        text = utf8.decode(raw);
      } else {
        return;
      }
      final decoded = jsonDecode(text);
      if (decoded is! Map) return;
      final message = decoded.cast<String, dynamic>();
      if (message.containsKey('setupComplete')) {
        if (_setupComplete) return;
        _setupTimer?.cancel();
        _setupComplete = true;
        if (_ownsAudio && !await LivePcmAudio.setSpeaker(_speaker)) {
          throw StateError('Audio routing is unavailable.');
        }
        if (_closed) return;
        // Only model output transcription is enabled. User microphone audio is
        // intentionally never requested or rendered as text.
        final pendingSocket = _socket;
        if (pendingSocket == null || _closed) return;
        if (sendGreeting && !_ready.isCompleted) {
          pendingSocket.add(
            jsonEncode({
              'clientContent': {
                'turns': [
                  {
                    'role': 'user',
                    'parts': [
                      {
                        'text':
                            'Start this live conversation with a brief natural greeting, '
                            'then ask how you can help.',
                      },
                    ],
                  },
                ],
                'turnComplete': true,
              },
            }),
          );
        }
        await _beginMicrophone(initialSetup: true);
        if (!_ready.isCompleted && !_closed) {
          final allowed = permittedConnectedCallDuration(
            now: DateTime.now(),
            endAt: endAt,
            maxDuration: maxDuration,
          );
          if (allowed != null) {
            if (allowed <= Duration.zero) {
              throw StateError('This call permission has expired.');
            }
            _durationTimer = Timer(allowed, () => unawaited(close()));
          }
          _ready.complete();
          if (!_connectedReported) {
            _connectedReported = true;
            _notify(onConnected);
          }
        } else if (!_closed) {
          // A resumed transport is part of the same paid/free call. The
          // original admission duration timer and onConnected remain intact.
          _resumeAttempts = 0;
          _state.add(LiveVoiceState.listening);
        }
        return;
      }
      final resume = message['sessionResumptionUpdate'];
      if (resume is Map) {
        final handle = resume['newHandle'];
        if (resume['resumable'] == true &&
            handle is String && handle.isNotEmpty && handle.length <= 4096) {
          _resumptionHandle = handle;
        }
        return;
      }
      if (message.containsKey('goAway')) {
        // The provider may send one final newer handle after GoAway. Finish
        // ordered incoming messages before the socket closes and reconnect.
        return;
      }
      if (message.containsKey('error')) {
        _fail('Live voice connection ended. Start a new call to reconnect.');
        unawaited(close());
        return;
      }

      final server = message['serverContent'];
      if (server is! Map) return;
      if (server['interrupted'] == true) {
        if (_ownsAudio) await LivePcmAudio.stop();
        if (onInterrupted != null) await onInterrupted!();
        if (_closed) return;
        _state.add(LiveVoiceState.interrupted);
        return;
      }

      if (captureInputTranscription) {
        final inputTranscription = server['inputTranscription'];
        if (inputTranscription is Map) {
          final transcript = inputTranscription['text'];
          if (transcript is String && transcript.trim().isNotEmpty) {
            _inputTranscripts.add(transcript);
          }
        }
      }

      final outputTranscription = server['outputTranscription'];
      if (outputTranscription is Map) {
        final transcript = outputTranscription['text'];
        if (transcript is String && transcript.isNotEmpty) {
          _transcripts.add(transcript);
        }
      }

      final modelTurn = server['modelTurn'];
      if (modelTurn is Map) {
        final parts = modelTurn['parts'];
        if (parts is List) {
          for (final part in parts) {
            if (_closed) return;
            if (part is! Map) continue;
            final inline = part['inlineData'];
            if (inline is! Map) continue;
            final mime = inline['mimeType'];
            final data = inline['data'];
            if (mime is String &&
                mime.startsWith('audio/pcm') &&
                data is String &&
                data.isNotEmpty) {
              _state.add(LiveVoiceState.speaking);
              if (onAudioPcm != null) {
                await onAudioPcm!(base64Decode(data));
                continue;
              }
              if (!await LivePcmAudio.start(sampleRate: 24000)) {
                throw StateError('Native live audio playback is unavailable.');
              }
              if (_closed) return;
              if (!await LivePcmAudio.write(base64Decode(data))) {
                throw StateError('Native live audio playback stopped.');
              }
            }
          }
        }
      }
      if (!_closed && server['turnComplete'] == true) {
        _turnCompletions.add(null);
        _state.add(LiveVoiceState.listening);
      }
    } catch (_) {
      _fail('Live voice received an invalid audio event.');
      unawaited(close());
    }
  }

  Future<void> setSpeaker(bool enabled) async {
    if (_closed) return;
    _speaker = enabled;
    if (_ownsAudio) await LivePcmAudio.setSpeaker(enabled);
  }

  Future<void> mute(bool muted) async {
    if (_closed) return;
    _muted = muted;
    if (muted) {
      await _startingMic;
      if (_closed) return;
      try {
        await _micSub?.cancel();
      } catch (_) {}
      _micSub = null;
      try {
        if (_ownsAudio) await _recorder!.stop();
      } catch (_) {}
    } else {
      await _beginMicrophone();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached ||
        (state == AppLifecycleState.paused &&
            (!Platform.isAndroid || !_foregroundCallActive))) {
      // Native Android foreground service keeps a customer-authorized live
      // call visible when they lock the phone or switch apps. Standalone
      // notes and unsupported platforms retain the conservative close path.
      unawaited(close());
    }
  }

  void _fail(String message) {
    if (_closed) return;
    if (!_ready.isCompleted) {
      _ready.completeError(StateError(message));
    }
    _errors.add(message);
    _state.add(LiveVoiceState.failed);
  }

  Future<void> close() async {
    final active = _closing;
    if (active != null) return active;
    final future = _close();
    _closing = future;
    return future;
  }

  Future<void> _close() async {
    if (_closed) return;
    _closed = true;
    if (!_ready.isCompleted) {
      _ready.completeError(
        StateError('Live voice ended before media setup completed.'),
      );
    }
    _setupTimer?.cancel();
    _durationTimer?.cancel();
    if (_observing) {
      WidgetsBinding.instance.removeObserver(this);
      _observing = false;
    }
    try {
      await _interruptions?.cancel();
    } catch (_) {}
    try {
      await _noisy?.cancel();
    } catch (_) {}
    try {
      await _socketSub?.cancel();
    } catch (_) {}
    try {
      await _startingMic;
    } catch (_) {}
    try {
      await _micSub?.cancel();
    } catch (_) {}
    _micSub = null;
    try {
      if (_ownsAudio) await _recorder!.stop();
    } catch (_) {}
    try {
      if (_ownsAudio) await _recorder!.dispose();
    } catch (_) {}
    try {
      if (_ownsAudio) await LivePcmAudio.release();
    } catch (_) {}
    try {
      await _socket?.close(WebSocketStatus.normalClosure, 'ended');
    } catch (_) {}
    _socket = null;
    if (_foregroundCallActive) {
      _foregroundCallActive = false;
      await LiveCallForeground.stop();
    }
    try {
      if (_ownsAudio) {
        final audioSession = await AudioSession.instance;
        await audioSession.setActive(false);
      }
    } catch (_) {}
    _notify(onClosed);
    _state.add(LiveVoiceState.ended);
    await _state.close();
    await _errors.close();
    await _transcripts.close();
    await _inputTranscripts.close();
    await _turnCompletions.close();
  }

  void _notify(FutureOr<void> Function()? callback) {
    if (callback == null) return;
    // History delivery must never hold microphone or socket cleanup hostage.
    unawaited(Future<void>.sync(callback).catchError((Object _) {}));
  }
}
