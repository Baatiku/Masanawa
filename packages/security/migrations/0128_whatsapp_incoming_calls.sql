-- A call socket has its own QR credential rows and must link the same number
-- as its tenant's messaging channel.
ALTER TABLE security.whatsapp_channels
  ADD COLUMN call_target_channel_id uuid,
  ADD CONSTRAINT whatsapp_call_target_fk FOREIGN KEY (tenant_id,call_target_channel_id)
    REFERENCES security.whatsapp_channels(tenant_id,channel_id),
  ADD CONSTRAINT whatsapp_call_target_not_self CHECK (call_target_channel_id <> channel_id);

ALTER TABLE security.whatsapp_channels DROP CONSTRAINT whatsapp_channels_linked_jid_key;
CREATE UNIQUE INDEX whatsapp_messaging_linked_jid ON security.whatsapp_channels(linked_jid)
  WHERE call_target_channel_id IS NULL;
CREATE UNIQUE INDEX whatsapp_call_pairing_per_target ON security.whatsapp_channels(tenant_id,call_target_channel_id)
  WHERE call_target_channel_id IS NOT NULL AND state <> 'disconnected';

CREATE TABLE security.whatsapp_incoming_calls (
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  reference text NOT NULL CHECK(length(reference)=64),
  offered_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  answered_at timestamptz,
  ended_at timestamptz,
  end_reason text CHECK(end_reason IN ('remote','paused','timeout','provider_failed','media_failed','disconnected')),
  PRIMARY KEY(tenant_id,channel_id,reference),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);
CREATE INDEX whatsapp_incoming_calls_recent ON security.whatsapp_incoming_calls(tenant_id,channel_id,offered_at DESC);
