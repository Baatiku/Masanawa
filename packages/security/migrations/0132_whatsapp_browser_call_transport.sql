ALTER TABLE security.whatsapp_channels
  ADD COLUMN call_transport text NOT NULL DEFAULT 'native'
    CHECK(call_transport IN ('native','browser')),
  ADD CHECK(call_transport='native' OR call_target_channel_id IS NOT NULL);

-- One persistent Chromium session on the pilot Droplet.
CREATE UNIQUE INDEX whatsapp_browser_call_pairing_capacity
  ON security.whatsapp_channels(call_transport)
  WHERE call_transport='browser' AND state NOT IN ('disconnected','needs_pairing');
