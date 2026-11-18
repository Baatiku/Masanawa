/// Diagnostic history metadata reported by the client; never billing evidence.
enum CallEndReason {
  userEnded('user_ended','Ended by you'),
  connectionFailed('connection_failed','Connection lost'),
  permissionDenied('permission_denied','Microphone permission was denied'),
  audioDeviceDisconnected('audio_device_disconnected','Audio device disconnected'),
  appClosed('app_closed','App closed'),
  durationLimit('duration_limit','Call duration limit reached'),
  providerEnded('provider_ended','Voice connection ended'),
  accountChanged('account_changed','Signed-in account changed'),
  participantRemoved('participant_removed','Participant removed');
  const CallEndReason(this.code,this.label);
  final String code,label;
  static CallEndReason? parse(Object? code){for(final value in values){if(value.code==code)return value;}return null;}
}
