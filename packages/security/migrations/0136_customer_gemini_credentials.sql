-- Customer-owned Gemini credentials are NEVER part of the platform-wide pool.
-- Store ciphertext only, bound to the authenticated tenant/account via AEAD.
CREATE TABLE security.customer_gemini_credentials (
 tenant_id text NOT NULL,user_id text NOT NULL,
 ciphertext bytea,nonce bytea,tag bytea,key_suffix text,verified_at timestamptz,
 pending_id uuid,last_attempt_at timestamptz,
 PRIMARY KEY(tenant_id,user_id),
 FOREIGN KEY(tenant_id,user_id) REFERENCES identity.users(tenant_id,user_id) ON DELETE CASCADE,
 CHECK ((ciphertext IS NULL AND nonce IS NULL AND tag IS NULL AND key_suffix IS NULL AND verified_at IS NULL)
 OR (ciphertext IS NOT NULL AND nonce IS NOT NULL AND tag IS NOT NULL AND key_suffix IS NOT NULL
     AND octet_length(nonce)=12 AND octet_length(tag)=16 AND length(key_suffix)=4 AND verified_at IS NOT NULL))
);
CREATE FUNCTION security.clear_inactive_customer_gemini() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
 IF NEW.state <> 'active' THEN
  DELETE FROM security.customer_gemini_credentials WHERE tenant_id=NEW.tenant_id AND user_id=NEW.user_id;
 END IF;
 RETURN NEW;
END; $$;
CREATE TRIGGER clear_inactive_customer_gemini AFTER UPDATE OF state ON identity.users
 FOR EACH ROW WHEN (OLD.state IS DISTINCT FROM NEW.state) EXECUTE FUNCTION security.clear_inactive_customer_gemini();
REVOKE ALL ON security.customer_gemini_credentials FROM PUBLIC;
