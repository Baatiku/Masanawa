-- One notice per committed transfer/order, never per reply or connected second.
CREATE FUNCTION gb_wallet.queue_ngn_spend_notice() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.purpose NOT IN ('send','request_pay') THEN RETURN NEW; END IF;
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.account_id,
  gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.account_id,'direct-ngn'),
  'wallet',CASE WHEN NEW.delta_kobo>0 THEN 'NGN received' ELSE 'NGN sent' END,
  'wallet_ngn_update','masanawa://wallet/activity/ngn:'||NEW.operation_id);
 RETURN NEW;
END $$;
CREATE TRIGGER ngn_spend_notice AFTER INSERT ON gb_wallet.ngn_spend_entries
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_ngn_spend_notice();
CREATE FUNCTION gb_wallet.queue_ngn_data_notice() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state IN ('delivered','failed') AND OLD.state IS DISTINCT FROM NEW.state THEN
  PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
   gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.user_id,'ngn-data-'||NEW.state),
   'wallet',CASE NEW.state WHEN 'delivered' THEN 'Data purchase delivered' ELSE 'Data purchase failed' END,
   'wallet_data_update','masanawa://wallet/activity');
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER ngn_data_notice AFTER UPDATE OF state ON gb_wallet.ngn_data_orders
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_ngn_data_notice();
