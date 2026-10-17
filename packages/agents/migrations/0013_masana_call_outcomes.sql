-- Additive, bounded client-reported diagnostic metadata. Never billing evidence.
ALTER TABLE agents.masana_call_history
  ADD COLUMN IF NOT EXISTS end_reason text CHECK (end_reason IN (
    'user_ended','connection_failed','permission_denied','audio_device_disconnected',
    'app_closed','duration_limit','provider_ended','account_changed','participant_removed'
  ));
