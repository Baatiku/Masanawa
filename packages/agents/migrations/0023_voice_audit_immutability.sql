CREATE TRIGGER admin_voice_assignment_events_immutable BEFORE UPDATE OR DELETE ON agents.admin_voice_assignment_events
 FOR EACH ROW EXECUTE FUNCTION agents.reject_admin_persona_audit_mutation();
