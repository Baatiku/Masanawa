-- One restricted 500 MB chat/call entitlement per active customer identity.
-- The claim is immutable by application policy; historical phone welcome
-- grants count toward this entitlement and are never issued a second time.
CREATE TABLE gb_wallet.universal_welcome_claims (
 tenant_id text NOT NULL,
 account_id text NOT NULL,
 granted_mb bigint NOT NULL CHECK(granted_mb IN (0,500)),
 operation_id text,
 claimed_at timestamptz NOT NULL DEFAULT statement_timestamp(),
 PRIMARY KEY(tenant_id,account_id),
 CHECK ((granted_mb=0 AND operation_id IS NULL) OR
        (granted_mb=500 AND operation_id IS NOT NULL)),
 FOREIGN KEY(tenant_id,account_id) REFERENCES identity.users(tenant_id,user_id)
);

-- This single forward-only migration includes existing active users. No old
-- Credits/MSNW value is converted, and old welcome grants cannot be doubled.
INSERT INTO gb_wallet.universal_welcome_claims
 (tenant_id,account_id,granted_mb,operation_id)
SELECT u.tenant_id,u.user_id,
 CASE WHEN w.account_id IS NULL THEN 500 ELSE 0 END,
 CASE WHEN w.account_id IS NULL THEN
   'launch500_'||md5(u.tenant_id||':'||u.user_id) ELSE NULL END
FROM identity.users u
LEFT JOIN gb_wallet.welcome_claims w ON w.tenant_id=u.tenant_id
 AND w.account_id=u.user_id
WHERE u.state='active'
ON CONFLICT DO NOTHING;

INSERT INTO gb_wallet.accounts(tenant_id,account_kind,account_id)
SELECT tenant_id,'human',account_id FROM gb_wallet.universal_welcome_claims
WHERE granted_mb=500
ON CONFLICT DO NOTHING;

INSERT INTO gb_wallet.operations
 (tenant_id,operation_id,actor_id,idempotency_key,request_sha256,
  operation_kind,amount_mb,state)
SELECT tenant_id,operation_id,account_id,'welcome:universal:v1',
 encode(sha256(convert_to(tenant_id||':'||account_id||':launch500','UTF8')),'hex'),
 'welcome_grant',500,'completed'
FROM gb_wallet.universal_welcome_claims WHERE granted_mb=500
ON CONFLICT DO NOTHING;

-- Move-then-update: if the migration is safely retried, no new movement means
-- no new MB, even if a claim or operation was already present.
WITH issued AS (
 INSERT INTO gb_wallet.movements
  (tenant_id,operation_id,from_kind,from_id,to_kind,to_id,
   source_bucket,target_bucket,amount_mb)
 SELECT tenant_id,operation_id,'issuance','welcome','human',account_id,
        'issuance','welcome',500
 FROM gb_wallet.universal_welcome_claims WHERE granted_mb=500
 ON CONFLICT DO NOTHING
 RETURNING tenant_id,to_id,amount_mb
)
UPDATE gb_wallet.accounts a SET welcome_mb=a.welcome_mb+i.amount_mb,
 version=a.version+1 FROM issued i
WHERE a.tenant_id=i.tenant_id AND a.account_kind='human'
 AND a.account_id=i.to_id;

REVOKE ALL ON gb_wallet.universal_welcome_claims FROM PUBLIC;
