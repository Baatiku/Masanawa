CREATE TABLE gb_wallet.admin_data_catalogues(
 tenant_id text PRIMARY KEY,bundles jsonb NOT NULL CHECK(jsonb_typeof(bundles)='array'),revision bigint NOT NULL DEFAULT 1,
 actor_id text NOT NULL,reason text NOT NULL,updated_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE TABLE gb_wallet.admin_data_catalogue_events(
 tenant_id text NOT NULL,revision bigint NOT NULL,actor_id text NOT NULL,bundles jsonb NOT NULL,reason text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,revision)
);
CREATE FUNCTION gb_wallet.audit_admin_data_catalogue() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN
 INSERT INTO gb_wallet.admin_data_catalogue_events(tenant_id,revision,actor_id,bundles,reason) VALUES(NEW.tenant_id,NEW.revision,NEW.actor_id,NEW.bundles,NEW.reason);RETURN NEW;
END $$;
CREATE TRIGGER audit_admin_data_catalogue AFTER INSERT OR UPDATE ON gb_wallet.admin_data_catalogues FOR EACH ROW EXECUTE FUNCTION gb_wallet.audit_admin_data_catalogue();
CREATE TRIGGER admin_data_catalogue_events_immutable BEFORE UPDATE OR DELETE ON gb_wallet.admin_data_catalogue_events FOR EACH ROW EXECUTE FUNCTION gb_wallet.refuse_movement_mutation();
