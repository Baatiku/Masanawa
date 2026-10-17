import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';
import 'package:audio_session/audio_session.dart';
import 'package:record/record.dart';
import '../core/app_permissions.dart';
import '../core/live_pcm_audio.dart';
import '../core/microphone_capture.dart';

abstract interface class GroupMicrophone {
  Future<Stream<Uint8List>> start(void Function() onInterrupted);
  Future<void> close();
}

abstract interface class RecoverableGroupMicrophone implements GroupMicrophone {
  bool get paused;
  set onPauseChanged(void Function(bool)? callback);
  Future<void> resume();
  Future<void> setSpeaker(bool enabled);
}

class NativeGroupMicrophone implements RecoverableGroupMicrophone {
  NativeGroupMicrophone({AudioRecorder? recorder}):_recorder=recorder??AudioRecorder();
  final AudioRecorder _recorder;
  final _output=StreamController<Uint8List>.broadcast(sync:true);
  AudioSession? _session;
  StreamSubscription<AudioInterruptionEvent>? _interruptions;
  StreamSubscription<void>? _noisy;
  StreamSubscription<Uint8List>? _capture;
  bool _closed=false,_paused=false,_headsetPaused=false,_speaker=true;
  @override bool get paused=>_paused;
  @override void Function(bool)? onPauseChanged;
  Future<Stream<Uint8List>>? _starting;
  Future<void>? _closing,_openingCapture,_pausing,_resuming;
  @override Future<Stream<Uint8List>> start(void Function() onInterrupted){
    if(_closed)return Future.error(StateError('Microphone is closed.'));
    return _starting??=_start();
  }
  Future<Stream<Uint8List>> _start()async{
    if(!await _recorder.hasPermission())throw StateError('Microphone permission is required.');
    if(_closed)throw StateError('Call ended.');
    final session=await AudioSession.instance;if(_closed)throw StateError('Call ended.');_session=session;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory:AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:AVAudioSessionCategoryOptions.allowBluetooth|AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode:AVAudioSessionMode.voiceChat,
      androidAudioAttributes:const AndroidAudioAttributes(contentType:AndroidAudioContentType.speech,usage:AndroidAudioUsage.voiceCommunication),
      androidAudioFocusGainType:AndroidAudioFocusGainType.gain,androidWillPauseWhenDucked:true,
    ));
    if(_closed)throw StateError('Call ended.');
    if(!await session.setActive(true))throw StateError('Audio is in use. End the other call first.');
    if(_closed){await session.setActive(false);throw StateError('Call ended.');}
    _interruptions=session.interruptionEventStream.listen((event){
      if(event.type==AudioInterruptionType.duck)return;
      if(event.begin){unawaited(_pause());}
      else if(!_headsetPaused){unawaited(resume());}
    });
    _noisy=session.becomingNoisyEventStream.listen((_){_headsetPaused=true;unawaited(_pause());});
    if(!await LivePcmAudio.setSpeaker(_speaker))throw StateError('Native audio routing is unavailable.');
    await _beginCapture();
    if(_closed)throw StateError('Call ended.');
    return _output.stream;
  }
  Future<void> _beginCapture(){
    final active=_openingCapture;if(active!=null)return active;
    final task=_openCapture();_openingCapture=task;
    return task.whenComplete((){if(identical(_openingCapture,task))_openingCapture=null;});
  }
  Future<void> _openCapture()async{
    if(_closed||_paused||_capture!=null)return;
    final input=await startCallMicrophone(_recorder,bluetoothGranted:await AppPermissions.bluetoothConnectGranted());
    if(_closed||_paused){try{await _recorder.stop().timeout(const Duration(seconds:2));}catch(_){}return;}
    _capture=input.listen((bytes){if(!_closed&&!_paused&&!_output.isClosed)_output.add(bytes);},
      onError:(Object error){if(!_closed&&!_paused&&!_output.isClosed)_output.addError(error);},
      onDone:(){if(!_closed&&!_paused&&!_output.isClosed)_output.addError(StateError('Microphone stopped.'));});
  }
  Future<void> _pause(){
    if(_closed||_paused)return _pausing??Future.value();
    _paused=true;onPauseChanged?.call(true);
    return _pausing=_pauseCapture();
  }
  Future<void> _pauseCapture()async{
    try{await _openingCapture;}catch(_){}
    try{await _capture?.cancel();}catch(_){} _capture=null;
    try{await _recorder.stop().timeout(const Duration(seconds:2));}catch(_){}
  }
  @override Future<void> resume(){
    final active=_resuming;if(active!=null)return active;
    final task=_resume();_resuming=task;
    return task.whenComplete((){if(identical(_resuming,task))_resuming=null;});
  }
  Future<void> _resume()async{
    if(_closed||!_paused)return;
    try{
      await _pausing;
      if(_closed||!await _session!.setActive(true)||_closed)return;
      _headsetPaused=false;_paused=false;
      await LivePcmAudio.setSpeaker(_speaker);await _beginCapture();
      if(!_closed&&!_paused)onPauseChanged?.call(false);
    }catch(_){if(!_closed){_paused=true;onPauseChanged?.call(true);}}
  }
  @override Future<void> setSpeaker(bool enabled)async{
    if(_closed)return;
    if(!await LivePcmAudio.setSpeaker(enabled))throw StateError('Audio route could not change.');
    _speaker=enabled;
  }
  @override Future<void> close(){
    if(_closing!=null)return _closing!;_closed=true;
    return _closing=_close();
  }
  Future<void> _close()async{
    onPauseChanged=null;
    try{await _interruptions?.cancel();}catch(_){}
    try{await _noisy?.cancel();}catch(_){}
    try{await _capture?.cancel();}catch(_){} _capture=null;
    try{await _recorder.stop().timeout(const Duration(seconds:2));}catch(_){}
    try{await _starting;}catch(_){}
    try{await _openingCapture;}catch(_){}
    try{await _pausing;}catch(_){}
    try{await _resuming;}catch(_){}
    try{await _recorder.stop().timeout(const Duration(seconds:2));}catch(_){}
    try{await _recorder.dispose().timeout(const Duration(seconds:2));}catch(_){}
    try{await LivePcmAudio.release();}catch(_){}
    try{await _session?.setActive(false);}catch(_){}
    await _output.close();
  }
}

abstract interface class GroupPcmPlayer {
  Future<void> write(Uint8List bytes);
  Future<void> stop();
}

class NativeGroupPcmPlayer implements GroupPcmPlayer {
  @override
  Future<void> write(Uint8List bytes) async {
    if (!await LivePcmAudio.start(sampleRate: 24000) ||
        !await LivePcmAudio.write(bytes)) {
      throw StateError('Native audio playback is unavailable.');
    }
  }

  @override
  Future<void> stop() => LivePcmAudio.stop();
}

/// Holds one speaker's turn; only human microphone frames feed model inputs.
/// PCM is paced at 24 kHz and the aggregate waiting buffer is bounded.
class GroupPlaybackCoordinator {
  GroupPlaybackCoordinator({
    required this.player,
    required this.onFailure,
    this.onSpeakerChanged,
    this.maxQueuedBytes = 24000 * 2 * 6,
    Future<void> Function(Duration)? wait,
  }) : _wait = wait ?? Future<void>.delayed;
  final GroupPcmPlayer player;
  final void Function(Object) onFailure;
  final void Function(String?)? onSpeakerChanged;
  final int maxQueuedBytes;
  final Future<void> Function(Duration) _wait;
  final Map<String, Queue<Uint8List>> _queues = {};
  final Set<String> _removed = {}, _finished = {};
  String? _speaker;
  bool _draining = false, _closed = false;
  int _queuedBytes = 0, _epoch = 0;
  Timer? _turnTimeout;
  Completer<void>? _cancelPacing;
  void _cancelWait(){final wait=_cancelPacing;if(wait!=null&&!wait.isCompleted)wait.complete();}
  int get queuedBytes => _queuedBytes;
  String? get speaker => _speaker;
  void _setSpeaker(String? value){
    if(_speaker==value)return;
    _speaker=value;onSpeakerChanged?.call(value);
  }
  void add(String id, Uint8List bytes) {
    if (_closed ||
        _removed.contains(id) ||
        bytes.isEmpty ||
        bytes.length.isOdd ||
        bytes.length > maxQueuedBytes ||
        _queuedBytes + bytes.length > maxQueuedBytes) {
      return;
    }
    _finished.remove(id);
    (_queues[id] ??= Queue<Uint8List>()).add(Uint8List.fromList(bytes));
    _queuedBytes += bytes.length;
    if(_speaker==null)_setSpeaker(id);
    _turnTimeout ??= Timer(const Duration(seconds: 15), () {
      final active = _speaker;
      if (active != null) unawaited(interrupt(active));
    });
    unawaited(_drain());
  }

  void turnComplete(String id) {
    _finished.add(id);
    unawaited(_drain());
  }

  Future<void> remove(String id) async {
    _removed.add(id);
    await interrupt(id);
  }

  Future<void> interrupt(String id) async {
    final queue = _queues.remove(id);
    if (queue != null) {
      for (final bytes in queue) {
        _queuedBytes -= bytes.length;
      }
    }
    _finished.remove(id);
    if (_speaker == id) {
      _epoch++;_cancelWait();
      _setSpeaker(null);
      _turnTimeout?.cancel();
      _turnTimeout = null;
      await player.stop();
    }
    unawaited(_drain());
  }

  Future<void> _drain() async {
    if (_draining || _closed) return;
    _draining = true;
    try {
      while (!_closed) {
        if(_speaker==null)_setSpeaker(_queues.keys
            .where((id) => _queues[id]!.isNotEmpty && !_removed.contains(id))
            .firstOrNull);
        final id = _speaker;
        if (id == null) break;
        _turnTimeout ??= Timer(
          const Duration(seconds: 15),
          () => unawaited(interrupt(id)),
        );
        final queue = _queues[id];
        if (queue == null || queue.isEmpty) {
          if (!_finished.remove(id)) break;
          _queues.remove(id);
          _setSpeaker(null);
          _turnTimeout?.cancel();
          _turnTimeout = null;
          continue;
        }
        final bytes = queue.removeFirst();
        _queuedBytes -= bytes.length;
        final epoch = _epoch;
        await player.write(bytes);
        if (_closed || epoch != _epoch) {
          await player.stop();
          continue;
        }
        final cancel=Completer<void>();_cancelPacing=cancel;
        await Future.any<void>([_wait(Duration(microseconds:(bytes.length*1000000/48000).ceil())),cancel.future]);
        if(identical(_cancelPacing,cancel))_cancelPacing=null;
      }
    } catch (error) {
      onFailure(error);
    } finally {
      _draining = false;
    }
  }

  Future<void> suspend()async{
    if(_closed)return;
    _epoch++;_cancelWait();_turnTimeout?.cancel();_turnTimeout=null;
    _queues.clear();_finished.clear();_queuedBytes=0;_setSpeaker(null);
    await player.stop();
  }

  Future<void> close() async {
    if (_closed) return;
    _closed = true;
    _epoch++;_cancelWait();
    _turnTimeout?.cancel();
    _queues.clear();
    _queuedBytes = 0;
    _setSpeaker(null);
    await player.stop();
  }
}

