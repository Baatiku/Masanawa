CREATE TABLE security.ops_user_lifecycle_events (
 tenant_id text NOT NULL,user_id text NOT NULL,operation_id text NOT NULL,actor_id text NOT NULL,
 previous_state text NOT NULL,next_state text NOT NULL,revision bigint NOT NULL,reason text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,operation_id)
);
CREATE TRIGGER ops_user_lifecycle_events_immutable BEFORE UPDATE OR DELETE ON security.ops_user_lifecycle_events FOR EACH ROW EXECUTE FUNCTION security.reject_ops_role_event_mutation();
