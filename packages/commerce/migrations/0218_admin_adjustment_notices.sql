-- New ledger kinds must never be reported as reversed bank deposits.
CREATE OR REPLACE FUNCTION gb_wallet.queue_ngn_notice() RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE notice_title text;
BEGIN
 IF NEW.kind NOT IN('deposit','deposit_reversal','admin_adjustment') THEN RETURN NEW; END IF;
 notice_title:=CASE NEW.kind WHEN 'deposit' THEN 'NGN deposit credited' WHEN 'deposit_reversal' THEN 'NGN deposit reversed' WHEN 'admin_adjustment' THEN 'NGN balance adjusted' END;
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.account_id,
  gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.account_id,'ngn'),
  'wallet',notice_title,'wallet_ngn_update',CASE WHEN NEW.operation_id ~ '^[A-Za-z0-9_:.-]{1,160}$'
   THEN 'masanawa://wallet/activity/ngn:'||NEW.operation_id ELSE 'masanawa://wallet/activity' END);
 RETURN NEW;
END $$;
