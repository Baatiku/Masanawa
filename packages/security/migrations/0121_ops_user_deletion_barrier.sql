-- Match the deletion worker's lock before request/user rows. Administrative
-- suspension is reversible; a requested or revoked deletion is not.
CREATE FUNCTION security.apply_ops_user_access(p_tenant text,p_user text,p_state text,p_revision bigint,p_operation text,p_actor text,p_reason text)
RETURNS security.ops_user_lifecycle_events LANGUAGE plpgsql AS $$
DECLARE previous security.ops_user_lifecycle_events%ROWTYPE; changed identity.users%ROWTYPE; deletion_found boolean;
BEGIN
 PERFORM pg_advisory_xact_lock(hashtextextended('identity-access:'||p_tenant||':'||p_user,0));
 SELECT * INTO previous FROM security.ops_user_lifecycle_events WHERE tenant_id=p_tenant AND operation_id=p_operation;
 IF FOUND THEN
  IF previous.user_id<>p_user OR previous.actor_id<>p_actor OR previous.next_state<>p_state OR previous.reason<>p_reason THEN RAISE EXCEPTION 'user_transition_conflict'; END IF;
  RETURN previous;
 END IF;
 IF p_state NOT IN('active','disabled') OR p_user=p_actor OR length(trim(p_reason)) NOT BETWEEN 10 AND 500 THEN RAISE EXCEPTION 'invalid_user_transition'; END IF;
 PERFORM 1 FROM identity.account_deletion_requests WHERE tenant_id=p_tenant AND user_id=p_user FOR UPDATE;
 deletion_found:=FOUND;
 IF p_state='active' AND (deletion_found OR EXISTS(SELECT 1 FROM identity.account_deletion_access_revocations WHERE tenant_id=p_tenant AND user_id=p_user)) THEN RAISE EXCEPTION 'user_deletion_blocks_reactivation'; END IF;
 UPDATE identity.users SET state=p_state,revision=revision+1,updated_at=clock_timestamp()
 WHERE tenant_id=p_tenant AND user_id=p_user AND revision=p_revision AND state IN('active','disabled') AND state<>p_state RETURNING * INTO changed;
 IF NOT FOUND THEN RAISE EXCEPTION 'user_state_changed_or_archived'; END IF;
 IF p_state='disabled' THEN UPDATE security.platform_sessions SET revoked_at=clock_timestamp() WHERE tenant_id=p_tenant AND user_id=p_user AND revoked_at IS NULL; END IF;
 INSERT INTO security.ops_user_lifecycle_events(tenant_id,user_id,operation_id,actor_id,previous_state,next_state,revision,reason)
 VALUES(p_tenant,p_user,p_operation,p_actor,CASE WHEN p_state='disabled' THEN 'active' ELSE 'disabled' END,p_state,changed.revision,p_reason) RETURNING * INTO previous;
 RETURN previous;
END $$;
