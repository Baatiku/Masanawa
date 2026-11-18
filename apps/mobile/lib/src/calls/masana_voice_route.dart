/// The AI chat router admits `entry=live-voice` for an immediate voice session.
/// Reuse this route for every Masana Call / Call again action so they cannot
/// silently fall back to the ordinary text-chat entry mode.
String masanaLiveVoiceRoute(String characterId) =>
    '/chat/${Uri.encodeComponent(characterId)}?entry=live-voice';
