-- No customer text, financial amounts, payment credentials or addresses
-- leave the ledger via notifications. Events are emitted only by committed
-- canonical financial records and are safe to retry independently of money.
CREATE OR REPLACE FUNCTION commerce.queue_msnw_transfer_alert()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.actor_user_id,
   'finance-send-'||NEW.operation_id::text,'wallet','MSNW sent',
   'wallet_transfer','masanawa://wallet/transaction/'||NEW.operation_id::text);
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.recipient_user_id,
   'finance-receive-'||NEW.operation_id::text,'wallet','MSNW received',
   'wallet_transfer','masanawa://wallet/transaction/'||NEW.operation_id::text);
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_transfer_notification
 ON commerce.msnw_custody_operations;
CREATE TRIGGER msnw_transfer_notification AFTER INSERT
 ON commerce.msnw_custody_operations FOR EACH ROW
 EXECUTE FUNCTION commerce.queue_msnw_transfer_alert();

CREATE OR REPLACE FUNCTION commerce.queue_msnw_verified_funding_alert()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
   'finance-verified-funding-'||NEW.reference,'wallet',
   'Bank funding verified','wallet_funding',
   'masanawa://wallet/transaction/'||NEW.reference);
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_verified_funding_notification
 ON commerce.msnw_paystack_fiat_evidence;
CREATE TRIGGER msnw_verified_funding_notification AFTER INSERT
 ON commerce.msnw_paystack_fiat_evidence FOR EACH ROW
 EXECUTE FUNCTION commerce.queue_msnw_verified_funding_alert();

CREATE OR REPLACE FUNCTION commerce.queue_msnw_issuance_alert()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
   'finance-issued-'||NEW.reference,'wallet','MSNW funding credited',
   'wallet_funding','masanawa://wallet/transaction/'||NEW.reference);
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_issuance_notification
 ON commerce.msnw_custody_issuances;
CREATE TRIGGER msnw_issuance_notification AFTER INSERT
 ON commerce.msnw_custody_issuances FOR EACH ROW
 EXECUTE FUNCTION commerce.queue_msnw_issuance_alert();

CREATE OR REPLACE FUNCTION commerce.queue_msnw_payout_alert()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE recipient record;
BEGIN
 IF NEW.stage NOT IN ('finished','refunded') THEN RETURN NEW; END IF;
 SELECT p.tenant_id,p.user_id INTO recipient
   FROM commerce.msnw_usdt_payouts p
   WHERE p.conversion_id=NEW.conversion_id;
 IF FOUND THEN
   PERFORM agents.queue_mobile_notice(recipient.tenant_id,recipient.user_id,
     'finance-payout-'||NEW.event_id::text,'wallet',
     CASE NEW.stage WHEN 'finished' THEN 'Crypto withdrawal settled'
       ELSE 'Crypto withdrawal refunded' END,
     'wallet_withdrawal',
     'masanawa://wallet/transaction/'||NEW.conversion_id::text);
 END IF;
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_payout_notification
 ON commerce.msnw_usdt_payout_audit;
CREATE TRIGGER msnw_payout_notification AFTER INSERT
 ON commerce.msnw_usdt_payout_audit FOR EACH ROW
 EXECUTE FUNCTION commerce.queue_msnw_payout_alert();

CREATE OR REPLACE FUNCTION commerce.queue_msnw_bill_alert()
RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state IS DISTINCT FROM OLD.state AND
    NEW.state IN ('fulfilled','refunded') THEN
   PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
     'finance-bill-'||NEW.fulfillment_reference||'-'||NEW.state,
     'wallet',CASE WHEN NEW.state='fulfilled' THEN 'Bill payment completed'
       ELSE 'Bill payment update' END,
     'wallet_billing',
     'masanawa://wallet/transaction/'||NEW.fulfillment_reference);
 END IF;
 RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS msnw_bill_notification
 ON commerce.msnw_billing_reservations;
CREATE TRIGGER msnw_bill_notification AFTER UPDATE OF state
 ON commerce.msnw_billing_reservations FOR EACH ROW
 EXECUTE FUNCTION commerce.queue_msnw_bill_alert();
