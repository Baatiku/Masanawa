ALTER TABLE security.whatsapp_incoming_calls
  DROP CONSTRAINT whatsapp_incoming_calls_end_reason_check,
  ADD CONSTRAINT whatsapp_incoming_calls_end_reason_check CHECK(end_reason IN (
    'remote','paused','timeout','provider_failed','media_failed','disconnected',
    'session_unavailable','offer_expired','busy','accept_failed','connect_timeout','media_timeout','policy_unavailable'
  ));

CREATE INDEX whatsapp_messaging_call_offers_recent
  ON security.whatsapp_audit(tenant_id,channel_id,created_at DESC)
  WHERE action='call.incoming' AND metadata->>'video'='false';
