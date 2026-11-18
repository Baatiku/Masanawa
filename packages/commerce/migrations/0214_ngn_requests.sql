CREATE TABLE gb_wallet.ngn_payment_requests (
 tenant_id text NOT NULL,request_id text NOT NULL,requester_id text NOT NULL,payer_id text NOT NULL,
 amount_kobo bigint NOT NULL CHECK(amount_kobo BETWEEN 1 AND 1000000000),
 idempotency_key text NOT NULL,request_sha256 text NOT NULL,
 state text NOT NULL DEFAULT 'open' CHECK(state IN ('open','paid','cancelled','declined')),
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),expires_at timestamptz NOT NULL DEFAULT clock_timestamp()+interval '7 days',
 paid_at timestamptz,operation_id text,
 PRIMARY KEY(tenant_id,request_id),UNIQUE(tenant_id,requester_id,idempotency_key),
 CHECK(requester_id<>payer_id),CHECK((state='paid')=(operation_id IS NOT NULL)),
 FOREIGN KEY(tenant_id,operation_id) REFERENCES gb_wallet.ngn_spends(tenant_id,operation_id)
);
CREATE INDEX ngn_request_payer ON gb_wallet.ngn_payment_requests(tenant_id,payer_id,created_at DESC);
CREATE FUNCTION gb_wallet.queue_ngn_request_notice() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 PERFORM agents.queue_mobile_notice(NEW.tenant_id,NEW.payer_id,
  gb_wallet.notice_key(NEW.tenant_id,NEW.request_id,NEW.payer_id,'ngn-request'),
  'wallet','NGN payment requested','wallet_ngn_request','masanawa://wallet/requests/'||NEW.request_id);
 RETURN NEW;
END $$;
CREATE TRIGGER ngn_request_notice AFTER INSERT ON gb_wallet.ngn_payment_requests FOR EACH ROW EXECUTE FUNCTION gb_wallet.queue_ngn_request_notice();
REVOKE ALL ON gb_wallet.ngn_payment_requests FROM PUBLIC;
