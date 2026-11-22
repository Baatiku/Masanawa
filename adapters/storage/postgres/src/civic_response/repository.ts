import { randomUUID } from 'node:crypto';
import type { Pool } from 'pg';
import { withTransaction } from '../transaction.js';

/** Scope all incident reads/writes to the verified bearer identity, never a caller-supplied owner. */
export type ResponseActor = { tenantId: string; userId: string };
export const RESPONSE_CATEGORIES = Object.freeze([
  {id:'crime_security',label:'Crime & security',items:['Robbery','Assault','Kidnapping','Threats','Suspicious activity','Terrorism','Community conflict','Other']},
  {id:'medical',label:'Medical & public health',items:['Medical emergency','Ambulance','Disease outbreak','Unsafe healthcare','Mental health crisis','Medicine access','Other']},
  {id:'fire_rescue',label:'Fire & rescue',items:['Building fire','Vehicle fire','Explosion','Entrapment','Gas leak','Rescue','Other']},
  {id:'road_transport',label:'Road & transport',items:['Road crash','Dangerous driving','Blocked road','Bridge damage','Vehicle hazard','Transport misconduct','Other']},
  {id:'disaster',label:'Disaster & weather',items:['Flooding','Building collapse','Severe storm','Drought','Displacement','Landslide','Other']},
  {id:'missing_person',label:'Missing persons',items:['Missing adult','Missing child','Found vulnerable person','Other']},
  {id:'child_protection',label:'Child protection',items:['Child abuse','Neglect','Child exploitation','Unsafe school','Other']},
  {id:'gender_violence',label:'Gender-based violence',items:['Domestic violence','Sexual violence','Harassment','Forced marriage','Other']},
  {id:'trafficking',label:'Human trafficking',items:['Suspected trafficking','Forced labour','Smuggling','Exploitation','Other']},
  {id:'cybercrime',label:'Cybercrime & fraud',items:['Online fraud','Identity theft','Cyberstalking','Data breach','Extortion','Other']},
  {id:'misconduct',label:'Corruption & official misconduct',items:['Bribery','Abuse of authority','Extortion','Unlawful detention','Service obstruction','Other']},
  {id:'elections_rights',label:'Elections & civil rights',items:['Election intimidation','Voting access','Rights violation','Discrimination','Other']},
  {id:'infrastructure',label:'Infrastructure & utilities',items:['Power failure','Exposed electrical wires','Damaged road','Street lighting','Telecom outage','Public building','Other']},
  {id:'water_sanitation',label:'Water & sanitation',items:['Unsafe drinking water','Sewage','Waste dumping','Drainage','Water supply','Other']},
  {id:'environment',label:'Environment & pollution',items:['Oil spill','Air pollution','Illegal mining','Deforestation','Wildlife harm','Other']},
  {id:'education',label:'Schools & education',items:['School safety','Teacher misconduct','Access to school','Facility damage','Other']},
  {id:'social_protection',label:'Social services & welfare',items:['Homelessness','Food insecurity','Disability access','Elder abuse','Relief distribution','Other']},
  {id:'border_customs',label:'Border, customs & immigration',items:['Unsafe crossing','Smuggling','Immigration issue','Customs misconduct','Other']},
  {id:'public_services',label:'Government services & complaints',items:['Delayed service','Unfair fees','Public office complaint','Consumer complaint','Other']},
  {id:'other',label:'Other public-interest report',items:['Other']},
] as const);
export const RESPONSE_STATUSES = Object.freeze(['submitted','triage','needs_info','routed','acknowledged','in_progress','resolved','closed','dismissed'] as const);
export type IncidentStatus = typeof RESPONSE_STATUSES[number];
const statusSet = new Set<string>(RESPONSE_STATUSES);
const categorySet = new Set<string>(RESPONSE_CATEGORIES.map(c=>c.id));
// Never expose safeguarding, accusations, health, identity or person-centred reports.
export const PUBLIC_REPORT_CATEGORIES = Object.freeze(['fire_rescue','road_transport','disaster','infrastructure','water_sanitation','environment','public_services'] as const);
const publicCategorySet = new Set<string>(PUBLIC_REPORT_CATEGORIES);
const urgencies = new Set(['routine','priority','urgent','immediate']);
const contactPreferences = new Set(['in_app','phone','email']);
const sourceModes = new Set(['typed','voice_note','voice_interview']);
const trim = (v: unknown, max: number) => typeof v === 'string' ? v.trim().slice(0,max) : '';
// Redact machine-detectable identifiers before displaying a citizen-approved public synopsis.
const publicText=(value:string,max:number)=>value
  .replace(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}/gi,'[contact removed]')
  .replace(/(?:\+?234|0)[0-9][0-9 -]{8,15}[0-9]/g,'[phone removed]')
  .replace(/\b(?:BVN|NIN|passport\s*number)\s*[:#-]?\s*[A-Z0-9-]+/gi,'[identifier removed]')
  .replace(/\b\d{8,}\b/g,'[identifier removed]')
  .replace(/https?:\/\/\S+/gi,'[link removed]')
  .trim().slice(0,max);
const validNumber = (n: unknown, min: number, max: number) => typeof n === 'number' && Number.isFinite(n) && n>=min && n<=max ? n : null;

export class CivicResponseError extends Error {
  constructor(readonly statusCode: 400|401|403|404|409|422|429, readonly code: string) {super(code);}
}
function requireRevision(n: unknown): number {
  if (!Number.isSafeInteger(n) || Number(n)<1) throw new CivicResponseError(400,'invalid_revision');
  return Number(n);
}
export type NewIncident = {
  requestKey:string;title:string;description:string;category:string;subcategory:string;urgency:string;
  locationState:string;locationLga?:string;locationDetails?:string;incidentAt?:string|null;
  latitude?:number|null;longitude?:number|null;peopleAtRisk?:number|null;injuriesReported?:boolean|null;
  dangerOngoing?:boolean|null;reporterSafe?:boolean|null;consentToContact?:boolean;
  publicConsent?:boolean;
  contactPreference?:string;sourceMode:string;languageCode?:string;structuredFacts?:Record<string,unknown>;
};

function validateNew(body: NewIncident) {
  if (!/^[a-zA-Z0-9_-]{16,90}$/.test(body.requestKey)||!categorySet.has(body.category)||!urgencies.has(body.urgency)||!sourceModes.has(body.sourceMode)||
    trim(body.title,181).length<6||body.title.length>180||trim(body.description,10001).length<15||body.description.length>10000||
    trim(body.locationState,80).length<2||body.locationState.length>80||
    (body.incidentAt&&Number.isNaN(Date.parse(body.incidentAt)))||
    (body.peopleAtRisk!=null&&!Number.isSafeInteger(validNumber(body.peopleAtRisk,0,1000000)))||
    (body.latitude!=null&&validNumber(body.latitude,-90,90)===null)||
    (body.longitude!=null&&validNumber(body.longitude,-180,180)===null)||
    (body.contactPreference&&!contactPreferences.has(body.contactPreference))||
    typeof body.structuredFacts==='object'&&body.structuredFacts!==null&&JSON.stringify(body.structuredFacts).length>9000) {
    throw new CivicResponseError(400,'invalid_incident');
  }
  const safeFacts=body.structuredFacts&&typeof body.structuredFacts==='object'&&!Array.isArray(body.structuredFacts)?body.structuredFacts:{};
  return {title:body.title.trim(),description:body.description.trim(),subcategory:trim(body.subcategory,100),state:body.locationState.trim(),
    lga:trim(body.locationLga,100),location:trim(body.locationDetails,600),language:trim(body.languageCode,12)||'en',
    facts:safeFacts};
}

const INCIDENT_VIEW = `id,reference,title,description,category,subcategory,urgency,incident_at AS "incidentAt",location_state AS "locationState",location_lga AS "locationLga",location_details AS "locationDetails",latitude,longitude,people_at_risk AS "peopleAtRisk",injuries_reported AS "injuriesReported",danger_ongoing AS "dangerOngoing",reporter_safe AS "reporterSafe",consent_to_contact AS "consentToContact",public_consent AS "publicConsent",publication_status AS "publicationStatus",public_title AS "publicTitle",public_summary AS "publicSummary",published_at AS "publishedAt",contact_preference AS "contactPreference",source_mode AS "sourceMode",language_code AS "languageCode",structured_facts AS "structuredFacts",status,assigned_agency_id AS "assignedAgencyId",external_reference AS "externalReference",dispatch_confirmed_at AS "dispatchConfirmedAt",reporter_update AS "reporterUpdate",revision,created_at AS "createdAt",updated_at AS "updatedAt"`;

export function createCivicResponseRepository(pool: Pool) {
  return {
    categories: () => RESPONSE_CATEGORIES,
    async contacts(query: {state?:string;serviceType?:string;includeInactive?:boolean}={}) {
      const result=await pool.query(`SELECT id,name,acronym,service_type AS "serviceType",scope,state,lga,address,phone,email,website,source_url AS "sourceUrl",verified_at AS "verifiedAt",verification_status AS "verificationStatus",routing_tags AS "routingTags",public_notes AS "publicNotes",latitude,longitude,revision,removed_at AS "removedAt"
        FROM civic_response.agency_contacts WHERE ($1::text IS NULL OR state IS NULL OR state=$1)
        AND ($2::text IS NULL OR $2=ANY(routing_tags) OR service_type=$2) AND ($3 OR (removed_at IS NULL AND verification_status='verified'))
        ORDER BY CASE WHEN state=$1 THEN 0 ELSE 1 END,CASE WHEN scope='national' THEN 0 ELSE 1 END,name LIMIT 300`,
        [query.state??null,query.serviceType??null,!!query.includeInactive]);
      return result.rows;
    },
    async create(actor:ResponseActor,body:NewIncident) {
      const safe=validateNew(body);
      return withTransaction(pool,async client=>{
        const id=randomUUID();
        const reference=`MR-${new Date().toISOString().slice(0,10).replace(/-/g,'')}-${id.slice(0,8).toUpperCase()}`;
        const result=await client.query(`INSERT INTO civic_response.incidents
          (id,reference,tenant_id,reporter_id,request_key,title,description,category,subcategory,urgency,incident_at,
           location_state,location_lga,location_details,latitude,longitude,people_at_risk,injuries_reported,danger_ongoing,reporter_safe,
           consent_to_contact,contact_preference,source_mode,language_code,structured_facts,public_consent,publication_status,public_title,public_summary)
          VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,CASE WHEN $26 THEN 'pending_review' ELSE 'private' END,$27,$28)
          ON CONFLICT (tenant_id,reporter_id,request_key) DO NOTHING RETURNING ${INCIDENT_VIEW}`,
          [id,reference,actor.tenantId,actor.userId,body.requestKey,safe.title,safe.description,body.category,safe.subcategory,body.urgency,body.incidentAt??null,
           safe.state,safe.lga,safe.location,body.latitude??null,body.longitude??null,body.peopleAtRisk??null,body.injuriesReported??null,body.dangerOngoing??null,body.reporterSafe??null,
           !!body.consentToContact,body.contactPreference??'in_app',body.sourceMode,safe.language,JSON.stringify(safe.facts),!!body.publicConsent,
            body.publicConsent&&publicCategorySet.has(body.category)?publicText(safe.title,180):null,
            body.publicConsent&&publicCategorySet.has(body.category)?publicText(safe.description,900):null]);
        if(result.rows.length){
          await client.query(`INSERT INTO civic_response.incident_events(incident_id,tenant_id,actor_id,actor_role,action,new_status,reason) VALUES($1,$2,$3,'reporter','created','submitted','Citizen submitted incident')`,[id,actor.tenantId,actor.userId]);
          return {incident:result.rows[0],created:true,dispatchConfirmed:false};
        }
        const prior=await client.query(`SELECT ${INCIDENT_VIEW},title AS "savedTitle",description AS "savedDescription" FROM civic_response.incidents WHERE tenant_id=$1 AND reporter_id=$2 AND request_key=$3`,[actor.tenantId,actor.userId,body.requestKey]);
        // Identical request keys may not be repurposed for a different report.
        if(prior.rows[0]?.savedTitle!==safe.title||prior.rows[0]?.savedDescription!==safe.description)throw new CivicResponseError(409,'request_key_reused');
        const {savedTitle:_,savedDescription:__,...incident}=prior.rows[0]!;
        return {incident,created:false,dispatchConfirmed:!!incident.dispatchConfirmedAt};
      });
    },
    async myIncidents(actor:ResponseActor,limit=30,offset=0) {
      const res=await pool.query(`SELECT ${INCIDENT_VIEW} FROM civic_response.incidents WHERE tenant_id=$1 AND reporter_id=$2 AND hidden_at IS NULL ORDER BY created_at DESC,id DESC LIMIT $3 OFFSET $4`,[actor.tenantId,actor.userId,limit,offset]);return res.rows;
    },
    async myIncident(actor:ResponseActor,id:string) {
      const res=await pool.query(`SELECT ${INCIDENT_VIEW} FROM civic_response.incidents WHERE tenant_id=$1 AND reporter_id=$2 AND id=$3::uuid AND hidden_at IS NULL`,[actor.tenantId,actor.userId,id]);
      if(!res.rows[0])throw new CivicResponseError(404,'incident_not_found');
      return res.rows[0];
    },
    /** Consented incident locations and citizen-reviewed summaries are visible; reporter identity stays private. */
    async publicIncidents(input:{category?:string;state?:string;limit?:number;offset?:number}={}) {
      const limit=Math.min(50,Math.max(1,input.limit??20)),offset=Math.min(10000,Math.max(0,input.offset??0));
      if(input.category&&!publicCategorySet.has(input.category))return [];
      const result=await pool.query(`SELECT reference,
        CASE WHEN publication_status='published' THEN public_title ELSE CONCAT('Reported ',REPLACE(category,'_',' '),' issue in ',location_state) END AS "title",
        CASE WHEN publication_status='published' THEN public_summary ELSE 'A citizen submitted a report about this category of public issue. The details are awaiting editorial review and have not been independently verified.' END AS "summary",
        category,location_state AS "locationState",location_lga AS "locationLga",location_details AS "locationDetails",status,
        publication_status AS "publicationStatus",COALESCE(published_at,created_at) AS "publishedAt",updated_at AS "updatedAt"
        FROM civic_response.incidents WHERE publication_status IN ('pending_review','published') AND public_consent=true AND hidden_at IS NULL
        AND category=ANY($1::text[]) AND ($2::text IS NULL OR category=$2) AND ($3::text IS NULL OR location_state=$3)
        ORDER BY COALESCE(published_at,created_at) DESC,id DESC LIMIT $4 OFFSET $5`,[PUBLIC_REPORT_CATEGORIES,input.category??null,input.state??null,limit,offset]);
      return result.rows;
    },
    /** Public-audio eligibility is re-evaluated on every playback, including cached audio.
     * Projection deliberately excludes the reporter, private description and raw media.
     */
    async publicAudioSource(reference:string) {
      const res=await pool.query(`SELECT reference,
        CASE WHEN publication_status='published' THEN public_title ELSE '' END AS "title",
        CASE WHEN publication_status='published' THEN public_summary ELSE '' END AS "summary",
        category,location_state AS "locationState",location_lga AS "locationLga",status,
        publication_status AS "publicationStatus"
        FROM civic_response.incidents
        WHERE reference=$1 AND publication_status IN ('pending_review','published')
          AND public_consent=true AND hidden_at IS NULL AND category=ANY($2::text[]) LIMIT 1`,
        [reference,PUBLIC_REPORT_CATEGORIES]);
      if(!res.rows[0])throw new CivicResponseError(404,'public_incident_not_found');
      return res.rows[0] as {
        reference:string;title:string;summary:string;category:string;
        locationState:string;locationLga:string|null;status:string;
        publicationStatus:'pending_review'|'published';
      };
    },
    async setPublicConsent(actor:ResponseActor,id:string,input:{consent:boolean;expectedRevision:number}) {
      requireRevision(input.expectedRevision);
      if(typeof input.consent!=='boolean')throw new CivicResponseError(400,'invalid_public_consent');
      return withTransaction(pool,async client=>{
        const result=await client.query(`UPDATE civic_response.incidents SET public_consent=$5,
          publication_status=CASE WHEN $5 THEN 'pending_review' ELSE 'private' END,
          published_at=NULL,publication_reviewed_by=NULL,
          revision=revision+1,updated_at=clock_timestamp()
          WHERE id=$1::uuid AND tenant_id=$2 AND reporter_id=$3 AND revision=$4 AND hidden_at IS NULL
          RETURNING ${INCIDENT_VIEW}`,[id,actor.tenantId,actor.userId,input.expectedRevision,input.consent]);
        if(!result.rows[0])throw new CivicResponseError(409,'incident_changed_or_missing');
        await client.query(`INSERT INTO civic_response.incident_events(incident_id,tenant_id,actor_id,actor_role,action,reason)
          VALUES($1,$2,$3,'reporter',$4,$5)`,[id,actor.tenantId,actor.userId,input.consent?'publication_requested':'publication_consent_withdrawn',input.consent?'Reporter requested a reviewed public summary':'Reporter withdrew public publication consent']);
        return result.rows[0];
      });
    },
    async appendReporterUpdate(actor:ResponseActor,id:string,input:{message:string;expectedRevision:number}) {
      requireRevision(input.expectedRevision);
      const message=trim(input.message,4000);
      if(message.length<3||input.message.length>4000)throw new CivicResponseError(400,'invalid_update');
      return withTransaction(pool,async client=>{
        const change=await client.query(`UPDATE civic_response.incidents SET reporter_update=$5,
          status=CASE WHEN status='needs_info' THEN 'submitted' ELSE status END,revision=revision+1,updated_at=clock_timestamp()
          WHERE id=$1::uuid AND tenant_id=$2 AND reporter_id=$3 AND revision=$4 AND hidden_at IS NULL
          RETURNING ${INCIDENT_VIEW}`,[id,actor.tenantId,actor.userId,input.expectedRevision,message]);
        if(!change.rows[0])throw new CivicResponseError(409,'incident_changed_or_missing');
        await client.query(`INSERT INTO civic_response.incident_events(incident_id,tenant_id,actor_id,actor_role,action,reason,changes)
         VALUES($1,$2,$3,'reporter','additional_information','Reporter provided additional information',jsonb_build_object('message',$4::text))`,[id,actor.tenantId,actor.userId,message]);
        return change.rows[0];
      });
    },
    async events(actor:ResponseActor,id:string,staff=false) {
      if(!staff)await this.myIncident(actor,id);
      const res=await pool.query(`SELECT actor_role AS "actorRole",action,previous_status AS "previousStatus",new_status AS "newStatus",reason,created_at AS "createdAt",CASE WHEN actor_role='reporter' THEN changes->>'message' ELSE NULL END AS message FROM civic_response.incident_events WHERE incident_id=$1::uuid AND tenant_id=$2 ORDER BY id ASC LIMIT 300`,[id,actor.tenantId]);
      return staff?res.rows:res.rows.map(({reason,...row})=>({...row,reason:row.actorRole==='reporter'?reason:''}));
    },
    async adminList(tenantId:string,input:{status?:string;category?:string;limit?:number;offset?:number;includeHidden?:boolean}={}) {
      const limit=Math.min(100,Math.max(1,input.limit??30)),offset=Math.min(10000,Math.max(0,input.offset??0));
      const result=await pool.query(`SELECT ${INCIDENT_VIEW},reporter_id AS "reporterId",private_staff_notes AS "privateStaffNotes",hidden_at AS "hiddenAt" FROM civic_response.incidents
        WHERE tenant_id=$1 AND ($2::text IS NULL OR status=$2) AND ($3::text IS NULL OR category=$3) AND ($4 OR hidden_at IS NULL)
        ORDER BY CASE WHEN urgency='immediate' THEN 0 WHEN urgency='urgent' THEN 1 ELSE 2 END,created_at DESC LIMIT $5 OFFSET $6`,
        [tenantId,input.status??null,input.category??null,!!input.includeHidden,limit,offset]);return result.rows;
    },
    async adminIncident(tenantId:string,id:string) {
      const result=await pool.query(`SELECT ${INCIDENT_VIEW},reporter_id AS "reporterId",private_staff_notes AS "privateStaffNotes",hidden_at AS "hiddenAt",hidden_reason AS "hiddenReason",dispatch_confirmation_source AS "dispatchConfirmationSource" FROM civic_response.incidents WHERE tenant_id=$1 AND id=$2::uuid`,[tenantId,id]);
      if(!result.rows[0])throw new CivicResponseError(404,'incident_not_found');return result.rows[0];
    },
    async adminUpdate(actor:ResponseActor,id:string,input:{expectedRevision:number;reason:string;status?:string;title?:string;description?:string;urgency?:string;category?:string;assignedAgencyId?:string|null;privateStaffNotes?:string;reporterUpdate?:string;externalReference?:string;dispatchConfirmationSource?:string;hide?:boolean}) {
      requireRevision(input.expectedRevision);
      if(trim(input.reason,1000).length<8||input.reason.length>1000||!Object.keys(input).some(k=>!['reason','expectedRevision'].includes(k)))throw new CivicResponseError(400,'reason_and_change_required');
      if(input.status!==undefined&&!statusSet.has(input.status)||input.category!==undefined&&!categorySet.has(input.category)||input.urgency!==undefined&&!urgencies.has(input.urgency)||
        input.title!==undefined&&(trim(input.title,181).length<6||input.title.length>180)||input.description!==undefined&&(trim(input.description,10001).length<15||input.description.length>10000))throw new CivicResponseError(400,'invalid_change');
      if(input.privateStaffNotes!==undefined&&input.privateStaffNotes.length>5000||input.reporterUpdate!==undefined&&input.reporterUpdate.length>2000||input.externalReference!==undefined&&input.externalReference.length>200||input.dispatchConfirmationSource!==undefined&&input.dispatchConfirmationSource.length>1000)throw new CivicResponseError(400,'change_too_large');
      return withTransaction(pool,async client=>{
        const old=await client.query(`SELECT * FROM civic_response.incidents WHERE id=$1::uuid AND tenant_id=$2 FOR UPDATE`,[id,actor.tenantId]);
        const row=old.rows[0];if(!row)throw new CivicResponseError(404,'incident_not_found');
        if(row.revision!==input.expectedRevision)throw new CivicResponseError(409,'incident_revision_conflict');
        if(input.assignedAgencyId){const c=await client.query(`SELECT id FROM civic_response.agency_contacts WHERE id=$1 AND verification_status='verified' AND removed_at IS NULL`,[input.assignedAgencyId]);if(!c.rows.length)throw new CivicResponseError(422,'unverified_agency');}
        const patch={...input};delete (patch as Partial<typeof input>).expectedRevision;delete (patch as Partial<typeof input>).reason;
        const columns:Record<string,string>={status:'status',title:'title',description:'description',urgency:'urgency',category:'category',assignedAgencyId:'assigned_agency_id',privateStaffNotes:'private_staff_notes',reporterUpdate:'reporter_update',externalReference:'external_reference',dispatchConfirmationSource:'dispatch_confirmation_source'};
        const set:string[]=[];const vals:unknown[]=[id,actor.tenantId,input.expectedRevision];
        for(const [key,col] of Object.entries(columns)){if(Object.hasOwn(patch,key)){vals.push(patch[key as keyof typeof patch]);set.push(`${col}=$${vals.length}`);}}
        if(input.hide!==undefined)set.push(input.hide?`hidden_at=clock_timestamp(),hidden_reason=$${vals.push(input.reason)}`:'hidden_at=NULL,hidden_reason=NULL');
        // Withdrawing a case or moving it into a protected category immediately unpublishes it.
        if(input.hide===true||(input.category!==undefined&&!publicCategorySet.has(input.category))){set.push("publication_status='private'","published_at=NULL");}
        if(!set.length)throw new CivicResponseError(400,'empty_change');
        // Only a deliberate, evidenced manual confirmation can mark actual agency receipt.
        // Selecting an agency by itself is NOT a dispatch or an acknowledgement.
        const requestedConfirmation=input.dispatchConfirmationSource!==undefined;
        if(requestedConfirmation&&(!trim(input.dispatchConfirmationSource,1000)||!trim(input.externalReference??row.external_reference,200)))
          throw new CivicResponseError(422,'official_acknowledgement_evidence_required');
        if(input.status==='acknowledged'&&!row.dispatch_confirmed_at&&!requestedConfirmation)
          throw new CivicResponseError(422,'official_acknowledgement_evidence_required');
        if(requestedConfirmation&&!row.dispatch_confirmed_at)set.push('dispatch_confirmed_at=clock_timestamp()');
        set.push('revision=revision+1','updated_at=clock_timestamp()');
        const res=await client.query(`UPDATE civic_response.incidents SET ${set.join(',')} WHERE id=$1::uuid AND tenant_id=$2 AND revision=$3 RETURNING ${INCIDENT_VIEW}` ,vals);
        const auditChanges:Record<string,{before:unknown;after:unknown}>={};
        for(const [key,col] of Object.entries(columns)){
          if(Object.hasOwn(patch,key))auditChanges[key]={before:row[col]??null,after:patch[key as keyof typeof patch]??null};
        }
        if(input.hide!==undefined)auditChanges.hidden={before:!!row.hidden_at,after:input.hide};
        if(requestedConfirmation)auditChanges.officialReceiptConfirmed={before:!!row.dispatch_confirmed_at,after:true};
        await client.query(`INSERT INTO civic_response.incident_events(incident_id,tenant_id,actor_id,actor_role,action,previous_status,new_status,reason,changes) VALUES($1,$2,$3,'operator',$4,$5,$6,$7,$8::jsonb)`,
          [id,actor.tenantId,actor.userId,input.hide?'visibility_changed':requestedConfirmation?'official_receipt_recorded':'admin_updated',row.status,res.rows[0].status,input.reason,JSON.stringify(auditChanges)]);
        return res.rows[0];
      });
    },
    async reviewPublication(actor:ResponseActor,id:string,input:{expectedRevision:number;reason:string;publish:boolean;publicTitle?:string;publicSummary?:string}) {
      requireRevision(input.expectedRevision);
      if(trim(input.reason,1000).length<8||input.reason.length>1000||typeof input.publish!=='boolean')throw new CivicResponseError(400,'publication_reason_required');
      const title=trim(input.publicTitle,140),summary=trim(input.publicSummary,600);
      if(input.publish&&(title.length<8||summary.length<20||input.publicTitle?.length!==title.length||input.publicSummary?.length!==summary.length))throw new CivicResponseError(400,'invalid_public_summary');
      // A second server-side safeguard against common accidental personal data disclosure.
      if(input.publish&&/(?:\b\d{7,}\b|[\w.+-]+@[\w.-]+\.[a-z]{2,}|https?:\/\/|\b(?:BVN|NIN|passport number)\b)/i.test(`${title} ${summary}`))throw new CivicResponseError(422,'public_summary_contains_sensitive_data');
      return withTransaction(pool,async client=>{
        const previous=await client.query(`SELECT * FROM civic_response.incidents WHERE id=$1::uuid AND tenant_id=$2 FOR UPDATE`,[id,actor.tenantId]);
        const row=previous.rows[0];if(!row)throw new CivicResponseError(404,'incident_not_found');
        if(row.revision!==input.expectedRevision)throw new CivicResponseError(409,'incident_revision_conflict');
        if(input.publish&&(!row.public_consent||row.hidden_at||!publicCategorySet.has(row.category)))throw new CivicResponseError(422,'publication_not_permitted');
        const result=await client.query(`UPDATE civic_response.incidents SET publication_status=$4,
          public_title=CASE WHEN $5 THEN $6 ELSE public_title END,
          public_summary=CASE WHEN $5 THEN $7 ELSE public_summary END,
          published_at=CASE WHEN $5 THEN clock_timestamp() ELSE NULL END,
          publication_reviewed_by=$8,revision=revision+1,updated_at=clock_timestamp()
          WHERE id=$1::uuid AND tenant_id=$2 AND revision=$3 RETURNING ${INCIDENT_VIEW}`,
          [id,actor.tenantId,input.expectedRevision,input.publish?'published':'private',input.publish,title,summary,actor.userId]);
        await client.query(`INSERT INTO civic_response.incident_events(incident_id,tenant_id,actor_id,actor_role,action,reason,changes)
          VALUES($1,$2,$3,'operator',$4,$5,$6::jsonb)`,[id,actor.tenantId,actor.userId,input.publish?'publication_approved':'publication_retracted',input.reason,JSON.stringify({from:row.publication_status,to:input.publish?'published':'private',publicTitle:input.publish?title:null})]);
        return result.rows[0];
      });
    },
    async saveContact(actorId:string,input:{id:string;name:string;acronym?:string;serviceType:string;scope:string;state?:string|null;lga?:string|null;address?:string|null;phone?:string|null;email?:string|null;website?:string|null;sourceUrl:string;verifiedAt:string;verificationStatus:string;routingTags?:string[];publicNotes?:string;latitude?:number|null;longitude?:number|null;expectedRevision:number;reason:string;removed?:boolean}) {
      if(!/^[a-z0-9-]{4,80}$/.test(input.id)||trim(input.name,180).length<3||!['national','state','local'].includes(input.scope)||!['verified','needs_review','inactive'].includes(input.verificationStatus)||!/^https:\/\//.test(input.sourceUrl)||!/^\d{4}-\d{2}-\d{2}$/.test(input.verifiedAt)||
        (!Number.isSafeInteger(input.expectedRevision)||input.expectedRevision<0||input.expectedRevision>100000)||trim(input.reason,500).length<8||!
        [input.phone,input.email,input.website].some(x=>typeof x==='string'&&!!x.trim())||input.routingTags&&(!Array.isArray(input.routingTags)||input.routingTags.length>20||input.routingTags.some(tag=>!/^[a-z_]{2,50}$/.test(tag))))throw new CivicResponseError(400,'invalid_contact');
      return withTransaction(pool,async client=>{
        const old=(await client.query(`SELECT * FROM civic_response.agency_contacts WHERE id=$1 FOR UPDATE`,[input.id])).rows[0];
        if((old?.revision??0)!==input.expectedRevision)throw new CivicResponseError(409,'contact_revision_conflict');
        const res=await client.query(`INSERT INTO civic_response.agency_contacts(id,name,acronym,service_type,scope,state,lga,address,phone,email,website,source_url,verified_at,verification_status,routing_tags,public_notes,latitude,longitude,removed_at,revision)
          VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13::date,$14,$15,$16,$17,$18,CASE WHEN $19 THEN clock_timestamp() ELSE NULL END,1)
          ON CONFLICT (id) DO UPDATE SET name=EXCLUDED.name,acronym=EXCLUDED.acronym,service_type=EXCLUDED.service_type,scope=EXCLUDED.scope,state=EXCLUDED.state,lga=EXCLUDED.lga,address=EXCLUDED.address,phone=EXCLUDED.phone,email=EXCLUDED.email,website=EXCLUDED.website,source_url=EXCLUDED.source_url,verified_at=EXCLUDED.verified_at,verification_status=EXCLUDED.verification_status,routing_tags=EXCLUDED.routing_tags,public_notes=EXCLUDED.public_notes,latitude=EXCLUDED.latitude,longitude=EXCLUDED.longitude,removed_at=EXCLUDED.removed_at,revision=civic_response.agency_contacts.revision+1,updated_at=clock_timestamp()
          RETURNING id,name,revision`,[input.id,input.name,input.acronym??'',input.serviceType,input.scope,input.state??null,input.lga??null,input.address??null,input.phone??null,input.email??null,input.website??null,input.sourceUrl,input.verifiedAt,input.verificationStatus,input.routingTags??[],input.publicNotes??'',input.latitude??null,input.longitude??null,!!input.removed]);
        await client.query(`INSERT INTO civic_response.agency_contact_events(agency_id,actor_id,action,reason,previous) VALUES($1,$2,$3,$4,$5::jsonb)`,[input.id,actorId,input.removed?'removed':old?'updated':'created',input.reason,JSON.stringify(old??{})]);
        return res.rows[0];
      });
    },
  };
}
