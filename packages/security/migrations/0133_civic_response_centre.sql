-- Canonical, tenant-isolated incident authority shared by the Site and the Ops console.
-- Sensitive reports are private by default; a status change is not an agency dispatch.
CREATE SCHEMA IF NOT EXISTS civic_response;

CREATE TABLE civic_response.agency_contacts (
  id text PRIMARY KEY,
  name text NOT NULL,
  acronym text NOT NULL DEFAULT '',
  service_type text NOT NULL,
  scope text NOT NULL DEFAULT 'national' CHECK (scope IN ('national','state','local')),
  state text,
  lga text,
  address text,
  phone text,
  email text,
  website text,
  source_url text NOT NULL,
  verified_at date NOT NULL,
  verification_status text NOT NULL CHECK (verification_status IN ('verified','needs_review','inactive')),
  routing_tags text[] NOT NULL DEFAULT '{}',
  public_notes text NOT NULL DEFAULT '',
  latitude numeric(10,7),
  longitude numeric(10,7),
  revision integer NOT NULL DEFAULT 1 CHECK (revision > 0),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  removed_at timestamptz,
  CHECK (phone IS NOT NULL OR email IS NOT NULL OR website IS NOT NULL),
  CHECK (latitude IS NULL OR latitude BETWEEN -90 AND 90),
  CHECK (longitude IS NULL OR longitude BETWEEN -180 AND 180)
);
CREATE INDEX agency_contacts_lookup_idx ON civic_response.agency_contacts (service_type,state,lga) WHERE removed_at IS NULL;

CREATE TABLE civic_response.agency_contact_events (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  agency_id text NOT NULL REFERENCES civic_response.agency_contacts(id),
  actor_id text NOT NULL,
  action text NOT NULL,
  reason text NOT NULL,
  previous jsonb NOT NULL,
  changed_at timestamptz NOT NULL DEFAULT clock_timestamp()
);

CREATE TABLE civic_response.incidents (
  id uuid PRIMARY KEY,
  reference text NOT NULL UNIQUE,
  tenant_id text NOT NULL,
  reporter_id text NOT NULL,
  request_key text NOT NULL,
  title text NOT NULL CHECK (length(title) BETWEEN 6 AND 180),
  description text NOT NULL CHECK (length(description) BETWEEN 15 AND 10000),
  category text NOT NULL,
  subcategory text NOT NULL DEFAULT '',
  urgency text NOT NULL CHECK (urgency IN ('routine','priority','urgent','immediate')),
  incident_at timestamptz,
  location_state text NOT NULL,
  location_lga text NOT NULL DEFAULT '',
  location_details text NOT NULL DEFAULT '',
  latitude numeric(10,7),
  longitude numeric(10,7),
  people_at_risk integer CHECK (people_at_risk BETWEEN 0 AND 1000000),
  injuries_reported boolean,
  danger_ongoing boolean,
  reporter_safe boolean,
  consent_to_contact boolean NOT NULL DEFAULT false,
  contact_preference text NOT NULL DEFAULT 'in_app' CHECK (contact_preference IN ('in_app','phone','email')),
  source_mode text NOT NULL CHECK (source_mode IN ('typed','voice_note','voice_interview')),
  language_code text NOT NULL DEFAULT 'en',
  structured_facts jsonb NOT NULL DEFAULT '{}'::jsonb,
  status text NOT NULL DEFAULT 'submitted' CHECK (status IN ('submitted','triage','needs_info','routed','acknowledged','in_progress','resolved','closed','dismissed')),
  assigned_agency_id text REFERENCES civic_response.agency_contacts(id),
  external_reference text,
  dispatch_confirmed_at timestamptz,
  dispatch_confirmation_source text,
  reporter_update text,
  private_staff_notes text,
  revision integer NOT NULL DEFAULT 1 CHECK (revision > 0),
  hidden_at timestamptz,
  hidden_reason text,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  updated_at timestamptz NOT NULL DEFAULT clock_timestamp(),
  CHECK (dispatch_confirmed_at IS NULL OR (external_reference IS NOT NULL AND dispatch_confirmation_source IS NOT NULL)),
  CHECK (latitude IS NULL OR latitude BETWEEN -90 AND 90),
  CHECK (longitude IS NULL OR longitude BETWEEN -180 AND 180)
);
CREATE INDEX incidents_reporter_idx ON civic_response.incidents(tenant_id,reporter_id,created_at DESC);
CREATE UNIQUE INDEX incidents_idempotency_idx ON civic_response.incidents(tenant_id,reporter_id,request_key);
CREATE INDEX incidents_admin_queue_idx ON civic_response.incidents(tenant_id,status,created_at DESC) WHERE hidden_at IS NULL;

CREATE TABLE civic_response.incident_events (
  id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  incident_id uuid NOT NULL REFERENCES civic_response.incidents(id),
  tenant_id text NOT NULL,
  actor_id text NOT NULL,
  actor_role text NOT NULL CHECK (actor_role IN ('reporter','operator','system')),
  action text NOT NULL,
  previous_status text,
  new_status text,
  reason text NOT NULL DEFAULT '',
  changes jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT clock_timestamp()
);
CREATE INDEX incident_events_lookup_idx ON civic_response.incident_events(incident_id,id);

-- Append-only reviewer evidence: removal/hide is a reversible case state, not
-- deletion of the audit trail. Operators cannot rewrite either event ledger.
CREATE FUNCTION civic_response.reject_event_mutation() RETURNS trigger LANGUAGE plpgsql AS $$
BEGIN
  RAISE EXCEPTION 'civic_response_event_history_immutable';
END;
$$;
CREATE TRIGGER incident_events_immutable BEFORE UPDATE OR DELETE ON civic_response.incident_events
FOR EACH ROW EXECUTE FUNCTION civic_response.reject_event_mutation();
CREATE TRIGGER agency_contact_events_immutable BEFORE UPDATE OR DELETE ON civic_response.agency_contact_events
FOR EACH ROW EXECUTE FUNCTION civic_response.reject_event_mutation();

-- Curated national contacts only. Local police stations and other branches
-- must be imported through a source-reviewed and audited administrator flow.
INSERT INTO civic_response.agency_contacts
 (id,name,acronym,service_type,phone,website,address,source_url,verified_at,verification_status,routing_tags,public_notes)
VALUES
 ('ng-emergency-112','Nigeria National Emergency Communications Centres','ECC','all_emergencies','112','https://ncc.gov.ng/node/3132',NULL,'https://ncc.gov.ng/node/3132',DATE '2026-11-20','verified',ARRAY['security','medical','fire','road','disaster'],'National emergency number. Call 112 for immediate help.'),
 ('ng-frsc-122','Federal Road Safety Corps','FRSC','road_safety','122','https://frsc.gov.ng/commands/national-headquarters/',NULL,'https://frsc.gov.ng/commands/national-headquarters/',DATE '2026-11-20','verified',ARRAY['traffic','crash','road'],'Road incidents and rescue.'),
 ('ng-nema','National Emergency Management Agency','NEMA','disaster','080022556362','https://nema.gov.ng/','NEMA Headquarters, Abuja, Nigeria','https://nema.gov.ng/flood-incidents-nema-activates-operational-offices-nationwide-to-support-states-conduct-assessments/',DATE '2026-11-20','verified',ARRAY['disaster','flood','displacement'],'0800CALLNEMA for disaster coordination.'),
 ('ng-fire','Federal Fire Service','FFS','fire','08032003557','https://fedfire.gov.ng/contact-us/','Mohammadu Buhari Way, Area 10, Garki, Abuja, Nigeria','https://fedfire.gov.ng/contact-us/',DATE '2026-11-20','verified',ARRAY['fire','rescue'],'Fire response; 112 is also published by FFS.'),
 ('ng-nscdc','Nigeria Security and Civil Defence Corps','NSCDC','security','199','https://nscdc.gov.ng/contact-address/','Nnamdi Azikiwe Airport Road, Sauka, Abuja, Nigeria','https://nscdc.gov.ng/contact-address/',DATE '2026-11-20','verified',ARRAY['security','infrastructure','civil_defence'],'Published national security/civil-defence hotline.')
ON CONFLICT (id) DO NOTHING;
