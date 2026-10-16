-- Preserve the original canonical turn identity across provider retries.
-- Existing completed/delivered receipts and all financial records stay intact.
-- Legacy failed rows with unknown turn identity require reconciliation;
-- they must never automatically replay under a newly invented request ID.
ALTER TABLE security.customer_channel_messages
  ADD COLUMN request_id text;
