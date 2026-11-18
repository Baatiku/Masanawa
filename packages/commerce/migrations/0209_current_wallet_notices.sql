-- Current MB/NGN notices are copies of committed journals, never a source of money.
-- No backfill, per-reply, per-call-second or per-view alerts.
CREATE OR REPLACE FUNCTION agents.queue_mobile_notice(
 p_tenant text,p_user text,p_event text,p_category text,p_title text,p_kind text,p_link text
) RETURNS void LANGUAGE plpgsql AS $$
BEGIN
 IF length(p_event) NOT BETWEEN 1 AND 160 OR
    p_category NOT IN ('messages','calls','rooms','status','wallet','p2p') OR
    length(p_title) NOT BETWEEN 1 AND 120 OR length(p_kind) NOT BETWEEN 1 AND 80 OR
    p_link IS NULL OR length(p_link)>300 THEN RAISE EXCEPTION 'invalid mobile notice'; END IF;
 -- A disable that wins this lock prevents optional private state reappearing.
 PERFORM 1 FROM identity.users WHERE tenant_id=p_tenant AND user_id=p_user AND state='active' FOR SHARE;
 IF NOT FOUND THEN RETURN; END IF;
 INSERT INTO agents.mobile_notification_history(tenant_id,user_id,event_id,category,title,deep_link)
 VALUES(p_tenant,p_user,p_event,p_category,p_title,p_link) ON CONFLICT DO NOTHING;
 INSERT INTO agents.mobile_notification_outbox(tenant_id,user_id,event_id,category,kind,deep_link)
 VALUES(p_tenant,p_user,p_event,p_category,p_kind,p_link) ON CONFLICT DO NOTHING;
END $$;
CREATE FUNCTION gb_wallet.notice_key(t text,op text,u text,role text)
RETURNS text LANGUAGE sql IMMUTABLE STRICT AS $$
 SELECT 'gb-'||encode(sha256(convert_to(jsonb_build_array(t,op,u,role)::text,'UTF8')),'hex')
$$;
CREATE FUNCTION gb_wallet.queue_movement_notice() RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE k text; title_out text; title_in text; link text;
BEGIN
 SELECT operation_kind INTO k FROM gb_wallet.operations WHERE tenant_id=NEW.tenant_id AND operation_id=NEW.operation_id;
 IF k NOT IN ('send','request_pay','tip','verified_deposit','ngn_exchange','welcome_grant','reversal') THEN RETURN NEW; END IF;
 link:='masanawa://wallet/activity/mb:'||NEW.movement_id::text;
 title_out:=CASE k WHEN 'tip' THEN 'MB tip sent' WHEN 'reversal' THEN 'MB adjustment recorded' ELSE 'MB sent' END;
 title_in:=CASE k WHEN 'welcome_grant' THEN 'Welcome MB added' WHEN 'ngn_exchange' THEN 'MB purchase completed'
  WHEN 'verified_deposit' THEN 'MB funding credited' WHEN 'reversal' THEN 'MB adjustment recorded' ELSE 'MB received' END;
 IF NEW.from_kind='human' THEN
  PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.from_id,
   gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.from_id,'out'),
   'wallet',title_out,'wallet_mb_update',link);
 END IF;
 IF NEW.to_kind='human' THEN
  PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.to_id,
   gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.to_id,'in'),
   'wallet',title_in,'wallet_mb_update',link);
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER gb_wallet_movement_notice AFTER INSERT ON gb_wallet.movements
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_movement_notice();
CREATE FUNCTION gb_wallet.queue_ngn_notice() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 -- The atomic exchange's MB side emits one notice; don't send a second cash-side alert.
 IF NEW.kind='exchange' THEN RETURN NEW; END IF;
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.account_id,
  gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.account_id,'ngn'),
  'wallet',CASE NEW.kind WHEN 'deposit' THEN 'NGN deposit credited' ELSE 'NGN deposit reversed' END,
  'wallet_ngn_update',CASE WHEN NEW.operation_id ~ '^[A-Za-z0-9_:.-]{1,160}$'
   THEN 'masanawa://wallet/activity/ngn:'||NEW.operation_id ELSE 'masanawa://wallet/activity' END);
 RETURN NEW;
END $$;
CREATE TRIGGER gb_wallet_ngn_notice AFTER INSERT ON gb_wallet.ngn_entries
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_ngn_notice();
CREATE FUNCTION gb_wallet.queue_data_notice() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state IN ('delivered','failed') AND OLD.state IS DISTINCT FROM NEW.state THEN
  PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.user_id,
   gb_wallet.notice_key(NEW.tenant_id,NEW.operation_id,NEW.user_id,'data-'||NEW.state),
   'wallet',CASE NEW.state WHEN 'delivered' THEN 'Data purchase delivered' ELSE 'Data purchase failed' END,
   'wallet_data_update','masanawa://wallet/activity');
 END IF;
 RETURN NEW;
END $$;
CREATE TRIGGER gb_wallet_data_notice AFTER UPDATE OF state ON gb_wallet.data_redemptions
 FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_data_notice();
