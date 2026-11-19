CREATE TABLE security.whatsapp_call_offer_observations (
  tenant_id text NOT NULL,
  channel_id uuid NOT NULL,
  reference text NOT NULL CHECK(length(reference)=64),
  offered_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  messaging_at timestamptz,
  call_device_at timestamptz,
  CHECK(messaging_at IS NOT NULL OR call_device_at IS NOT NULL),
  PRIMARY KEY(tenant_id,channel_id,reference),
  FOREIGN KEY(tenant_id,channel_id) REFERENCES security.whatsapp_channels(tenant_id,channel_id)
);
CREATE INDEX whatsapp_call_offer_observations_recent
  ON security.whatsapp_call_offer_observations(tenant_id,channel_id,offered_at DESC);

ALTER TABLE security.whatsapp_incoming_calls ADD COLUMN offer_reference text CHECK(length(offer_reference)=64);
CREATE INDEX whatsapp_incoming_call_offer_reference
  ON security.whatsapp_incoming_calls(tenant_id,offer_reference) WHERE offer_reference IS NOT NULL;
