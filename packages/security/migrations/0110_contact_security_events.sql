-- Contact changes and sign-in risk events are auditable without storing OTPs.
ALTER TABLE security.platform_auth_events
  DROP CONSTRAINT IF EXISTS platform_auth_events_action_check;
ALTER TABLE security.platform_auth_events
  ADD CONSTRAINT platform_auth_events_action_check CHECK(action IN (
    'session_created','password_accepted','password_failed',
    'session_revoked','logout_all','password_reset',
    'contact_changed','new_device_signin','password_locked'
  ));
