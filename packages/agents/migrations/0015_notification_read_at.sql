-- User-visible acknowledgement is distinct from push delivery. An alert is
-- read only after the account owner explicitly opens or acknowledges it.
ALTER TABLE agents.mobile_notification_history
 ADD COLUMN IF NOT EXISTS read_at timestamptz;
