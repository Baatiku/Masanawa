CREATE TABLE talks.human_conversations (
 tenant_id text NOT NULL,id text NOT NULL,low_user text NOT NULL,high_user text NOT NULL,initiator text NOT NULL,
 state text NOT NULL DEFAULT 'pending' CHECK(state IN ('pending','accepted','declined')),updated_at timestamptz NOT NULL,
 PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,low_user,high_user),CHECK(low_user<high_user));
CREATE TABLE talks.human_viewers(tenant_id text NOT NULL,conversation_id text NOT NULL,user_id text NOT NULL,pinned boolean NOT NULL DEFAULT false,archived boolean NOT NULL DEFAULT false,muted boolean NOT NULL DEFAULT false,hidden boolean NOT NULL DEFAULT false,read_at timestamptz,PRIMARY KEY(tenant_id,conversation_id,user_id));
CREATE TABLE talks.human_privacy(tenant_id text NOT NULL,user_id text NOT NULL,value jsonb NOT NULL,PRIMARY KEY(tenant_id,user_id));
CREATE TABLE talks.human_requests(tenant_id text NOT NULL,user_id text NOT NULL,request_id text NOT NULL,operation text NOT NULL,fingerprint text NOT NULL,result jsonb NOT NULL,PRIMARY KEY(tenant_id,user_id,request_id));
CREATE TABLE talks.human_messages(tenant_id text NOT NULL,id text NOT NULL,conversation_id text NOT NULL,user_id text NOT NULL,request_id text NOT NULL,text text NOT NULL,reply_to_id text,created_at timestamptz NOT NULL,deleted boolean NOT NULL DEFAULT false,delivered_at timestamptz,read_at timestamptz,PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,user_id,request_id));
CREATE INDEX human_messages_page ON talks.human_messages(tenant_id,conversation_id,created_at,id);
CREATE TABLE talks.human_media(tenant_id text NOT NULL,id text NOT NULL,conversation_id text NOT NULL,user_id text NOT NULL,message_id text,kind text NOT NULL,mime_type text NOT NULL,name text NOT NULL,size_bytes integer NOT NULL,duration_ms integer,data_base64 text NOT NULL,created_at timestamptz NOT NULL DEFAULT clock_timestamp(),PRIMARY KEY(tenant_id,id));
CREATE TABLE talks.human_reports(tenant_id text NOT NULL,id text NOT NULL,user_id text NOT NULL,message_id text NOT NULL,reason text NOT NULL,created_at timestamptz NOT NULL,PRIMARY KEY(tenant_id,id));
CREATE TABLE talks.human_events(sequence bigserial PRIMARY KEY,tenant_id text NOT NULL,user_id text NOT NULL,type text NOT NULL,conversation_id text,call_id text,created_at timestamptz NOT NULL);
CREATE INDEX human_events_cursor ON talks.human_events(tenant_id,user_id,sequence);
CREATE TABLE talks.human_outbox(id text PRIMARY KEY,tenant_id text NOT NULL,user_id text NOT NULL,sender_id text NOT NULL,event_id text NOT NULL,category text NOT NULL,conversation_id text,call_id text,sent_at timestamptz,attempts integer NOT NULL DEFAULT 0,available_at timestamptz NOT NULL,lease_until timestamptz);
CREATE TABLE talks.human_calls(tenant_id text NOT NULL,id text NOT NULL,caller text NOT NULL,recipient text NOT NULL,state text NOT NULL CHECK(state IN ('ringing','accepted','declined','busy','missed','cancelled','ended')),created_at timestamptz NOT NULL,answered_at timestamptz,ended_at timestamptz,expires_at timestamptz NOT NULL,caller_heartbeat timestamptz NOT NULL,recipient_heartbeat timestamptz NOT NULL,teardown_pending boolean NOT NULL DEFAULT false,PRIMARY KEY(tenant_id,id));
CREATE INDEX human_calls_active ON talks.human_calls(tenant_id,state,expires_at);

-- Shared recipient admission for existing targeted human Room invitations.
-- A follow affects privacy admission only; it never accepts a message request.
CREATE FUNCTION talks.human_contact_allowed(scope_tenant text,sender text,recipient text,kind text)
RETURNS boolean LANGUAGE sql STABLE AS $$
 SELECT sender<>recipient
 AND EXISTS(SELECT 1 FROM identity.users WHERE tenant_id=scope_tenant AND user_id=sender AND state='active')
 AND EXISTS(SELECT 1 FROM identity.users WHERE tenant_id=scope_tenant AND user_id=recipient AND state='active')
 AND NOT EXISTS(SELECT 1 FROM talks.safety_preferences WHERE tenant_id=scope_tenant AND blocked AND
   ((viewer_user_id=sender AND subject_user_id=recipient) OR(viewer_user_id=recipient AND subject_user_id=sender)))
 AND NOT EXISTS(SELECT 1 FROM talks.public_profiles p JOIN talks.safety_enforcement e ON e.tenant_id=p.tenant_id AND e.target_kind='profile' AND e.target_id=p.handle WHERE p.tenant_id=scope_tenant AND p.user_id IN (sender,recipient) AND e.visibility<>'public')
 AND CASE COALESCE((SELECT value->>kind FROM talks.human_privacy WHERE tenant_id=scope_tenant AND user_id=recipient),'everyone')
   WHEN 'everyone' THEN true
   WHEN 'contacts' THEN EXISTS(SELECT 1 FROM talks.follows WHERE tenant_id=scope_tenant AND follower_user_id=recipient AND followed_user_id=sender)
     OR EXISTS(SELECT 1 FROM talks.human_conversations WHERE tenant_id=scope_tenant AND low_user=LEAST(sender,recipient) AND high_user=GREATEST(sender,recipient) AND state='accepted')
   ELSE false END;
$$;

-- Called only by the existing qualified account-deletion worker after clearance.
-- Preserve other authors' text, attribution/tombstones and moderation report IDs.
CREATE FUNCTION talks.redact_human_account(scope_tenant text,subject text)
RETURNS void LANGUAGE sql AS $$
 UPDATE talks.human_messages SET text='',deleted=true,reply_to_id=NULL WHERE tenant_id=scope_tenant AND user_id=subject;
 DELETE FROM talks.human_media WHERE tenant_id=scope_tenant AND user_id=subject;
 UPDATE talks.human_requests SET result=result-'lastMessage' WHERE tenant_id=scope_tenant AND operation='conversation' AND result->>'id' IN (SELECT id FROM talks.human_conversations WHERE tenant_id=scope_tenant AND (low_user=subject OR high_user=subject));
 DELETE FROM talks.human_requests WHERE tenant_id=scope_tenant AND user_id=subject;
 DELETE FROM talks.human_privacy WHERE tenant_id=scope_tenant AND user_id=subject;
 DELETE FROM talks.human_viewers WHERE tenant_id=scope_tenant AND user_id=subject;
 DELETE FROM talks.human_events WHERE tenant_id=scope_tenant AND user_id=subject;
 DELETE FROM talks.human_outbox WHERE tenant_id=scope_tenant AND (user_id=subject OR sender_id=subject);
 UPDATE talks.human_reports SET reason='[deleted]' WHERE tenant_id=scope_tenant AND user_id=subject;
 UPDATE talks.human_calls SET state='ended',ended_at=clock_timestamp(),teardown_pending=true WHERE tenant_id=scope_tenant AND (caller=subject OR recipient=subject) AND state IN ('ringing','accepted');
$$;
