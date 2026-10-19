import 'package:livekit_client/livekit_client.dart';

abstract interface class HumanCallAudio {
  Future<void> connect(
    Map<String, dynamic> token,
    void Function(String) status, {
    bool microphoneEnabled = true,
    bool speakerEnabled = false,
  });
  Future<void> mute(bool value);
  Future<void> speaker(bool value);
  Future<void> close();
}

class LiveKitHumanCallAudio implements HumanCallAudio {
  Room? _room;
  EventsListener<RoomEvent>? _events;
  bool _closed = false;
  @override
  Future<void> connect(
    Map<String, dynamic> token,
    void Function(String) status, {
    bool microphoneEnabled = true,
    bool speakerEnabled = false,
  }) async {
    final url = token['server_url'], grant = token['participant_token'];
    if (url is! String ||
        !url.startsWith('wss://') ||
        grant is! String ||
        grant.isEmpty)
      throw StateError('Call audio is unavailable.');
    await LiveKitClient.initialize();
    if (_closed) return;
    final room = Room();
    _room = room;
    _events = room.createListener()
      ..on<RoomReconnectingEvent>((_) => status('reconnecting'))
      ..on<RoomReconnectedEvent>(
        (_) =>
            status(room.remoteParticipants.isEmpty ? 'waiting' : 'connected'),
      )
      ..on<RoomDisconnectedEvent>((_) => status('disconnected'))
      ..on<TrackSubscribedEvent>((_) => status('connected'))
      ..on<ParticipantDisconnectedEvent>((_) => status('waiting'));
    try {
      await room.connect(
        url,
        grant,
        connectOptions: const ConnectOptions(autoSubscribe: true),
      );
      if (_closed) {
        await _disposeRoom(room);
        return;
      }
      final participant = room.localParticipant;
      if (participant == null)
        throw StateError('Microphone participant unavailable.');
      await participant.setMicrophoneEnabled(microphoneEnabled);
      if (_closed) {
        await participant.setMicrophoneEnabled(false);
        await _disposeRoom(room);
        return;
      }
      await AudioManager.instance.setSpeakerOutputPreferred(speakerEnabled);
      if (_closed) {
        await _disposeRoom(room);
        return;
      }
      status(room.remoteParticipants.isEmpty ? 'waiting' : 'connected');
    } catch (_) {
      await close();
      rethrow;
    }
  }

  @override
  Future<void> mute(bool value) async {
    await _room?.localParticipant?.setMicrophoneEnabled(!value);
  }

  @override
  Future<void> speaker(bool value) =>
      AudioManager.instance.setSpeakerOutputPreferred(value);
  @override
  Future<void> close() async {
    _closed = true;
    final room = _room;
    _room = null;
    await _events?.dispose();
    _events = null;
    if (room == null) return;
    await _disposeRoom(room);
    try {
      await AudioManager.instance.setSpeakerOutputPreferred(false);
    } catch (_) {}
  }

  Future<void> _disposeRoom(Room room) async {
    try {
      await room.localParticipant
          ?.setMicrophoneEnabled(false)
          .timeout(const Duration(seconds: 3));
    } catch (_) {}
    try {
      await room.disconnect().timeout(const Duration(seconds: 3));
    } catch (_) {}
    try {
      await room.dispose().timeout(const Duration(seconds: 3));
    } catch (_) {}
  }
}
