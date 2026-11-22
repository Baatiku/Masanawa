import {readFile} from 'node:fs/promises';
import {PGlite} from '@electric-sql/pglite';
import type {Pool,PoolClient} from 'pg';
import {beforeAll,afterAll,describe,it,expect} from 'vitest';
import {createCivicResponseRepository} from './repository.js';

describe('Response Centre SQL authorization, review and audit',()=>{
  let db:PGlite;
  let pool:Pool;
  const citizen={tenantId:'tenant_response',userId:'citizen_one'};
  const staff={tenantId:'tenant_response',userId:'operator_one'};
  const draft={requestKey:'request_key_12345678',title:'Open electricity cables near market',
    description:'There are exposed live electricity wires outside a market gate in Ibadan.',
    category:'infrastructure',subcategory:'Exposed electrical wires',urgency:'urgent',locationState:'Oyo',
    sourceMode:'typed'};
  beforeAll(async()=>{
    db=new PGlite();
    for(const name of ['0133_civic_response_centre.sql','0134_civic_response_verified_directory.sql','0135_civic_response_public_feed.sql'])
      await db.exec(await readFile(new URL(`../../../../../packages/security/migrations/${name}`,import.meta.url),'utf8'));
    let tail=Promise.resolve();
    pool={query:(sql:string,args:unknown[]=[])=>db.query(sql,args),connect:async()=>{
      const prior=tail;let release!:()=>void;
      tail=new Promise<void>(resolve=>{release=resolve;});await prior;
      return {query:(sql:string,args:unknown[]=[])=>db.query(sql,args),release} as unknown as PoolClient;
    }} as unknown as Pool;
  });
  afterAll(async()=>{await db?.close()});
  it('saves once and confines citizen read and changes to their own tenant and account',async()=>{
    const repo=createCivicResponseRepository(pool);
    const first=await repo.create(citizen,draft),second=await repo.create(citizen,draft);
    expect(first.created).toBe(true);expect(second.created).toBe(false);
    expect(second.incident.id).toBe(first.incident.id);
    await expect(repo.create(citizen,{...draft,title:'Different title for same idempotency key'})).rejects.toMatchObject({code:'request_key_reused'});
    expect(await repo.myIncidents({...citizen,userId:'other_citizen'})).toEqual([]);
    await expect(repo.myIncident({...citizen,tenantId:'tenant_other'},first.incident.id)).rejects.toMatchObject({statusCode:404});
    const updated=await repo.appendReporterUpdate(citizen,first.incident.id,{message:'The live wire is near the western market entrance.',expectedRevision:1});
    expect(updated.revision).toBe(2);
    await expect(repo.appendReporterUpdate(citizen,first.incident.id,{message:'Duplicate stale edit',expectedRevision:1})).rejects.toMatchObject({statusCode:409});
    const items=await repo.events(citizen,first.incident.id);
    expect(items.some(item=>item.message?.includes('western market entrance'))).toBe(true);
  });
  it('requires manual proof to claim official receipt; logs operator edits and soft removal',async()=>{
    const repo=createCivicResponseRepository(pool);
    const id=(await repo.myIncidents(citizen))[0]!.id;
    await expect(repo.adminUpdate(staff,id,{expectedRevision:2,reason:'Official reply claimed without evidence',status:'acknowledged'})).rejects.toMatchObject({code:'official_acknowledgement_evidence_required'});
    const accepted=await repo.adminUpdate(staff,id,{expectedRevision:2,reason:'Reviewed public location and made a preliminary assignment',status:'triage',assignedAgencyId:'ng-emergency-112',reporterUpdate:'Review pending'});
    expect(accepted.status).toBe('triage');expect(accepted.dispatchConfirmedAt).toBeNull();
    const received=await repo.adminUpdate(staff,id,{expectedRevision:3,reason:'Operator manually verified reference with agency desk',status:'acknowledged',externalReference:'EXTERNAL-CASE-123',dispatchConfirmationSource:'Agency desk operator confirmed receipt by direct call at 14:30'});
    expect(received.dispatchConfirmedAt).toBeTruthy();
    const after=await repo.adminIncident(citizen.tenantId,id);
    expect(after.dispatchConfirmationSource).toContain('Agency desk');
    const hidden=await repo.adminUpdate(staff,id,{expectedRevision:4,reason:'Sensitive details require a restricted review',hide:true});
    expect(hidden.revision).toBe(5);expect(await repo.myIncidents(citizen)).toHaveLength(0);
    const logs=await repo.events(staff,id,true);
    expect(logs.filter(item=>item.actorRole==='operator')).toHaveLength(3);
    await expect(db.query(`DELETE FROM civic_response.incident_events WHERE incident_id=$1::uuid`,[id])).rejects.toThrow('civic_response_event_history_immutable');
  });
  it('immediately lists reported locations and safe metadata while protecting reporter identity',async()=>{
    const repo=createCivicResponseRepository(pool);
    const reporter={tenantId:'tenant_response',userId:'citizen_public'};
    const fresh=await repo.create(reporter,{...draft,requestKey:'public_incident_request_2026',publicConsent:false,locationLga:'Ibadan North',locationDetails:'western market entrance'});
    const id=fresh.incident.id;
    expect(await repo.publicIncidents()).toEqual([]);
    await expect(repo.reviewPublication(staff,id,{expectedRevision:1,reason:'Premature attempted publication',publish:true,publicTitle:'Reviewed water supply outage',publicSummary:'This report describes an infrastructure problem needing public attention.'})).rejects.toMatchObject({code:'publication_not_permitted'});
    await expect(repo.setPublicConsent(citizen,id,{consent:true,expectedRevision:1})).rejects.toMatchObject({code:'incident_changed_or_missing'});
    const consented=await repo.setPublicConsent(reporter,id,{consent:true,expectedRevision:1});
    expect(consented.publicationStatus).toBe('pending_review');
    const pending=await repo.publicIncidents();
    expect(pending).toHaveLength(1);
    expect(pending[0]).toMatchObject({publicationStatus:'pending_review',title:'Reported infrastructure issue in Oyo',locationState:'Oyo',locationLga:'Ibadan North',locationDetails:'western market entrance'});
    expect(JSON.stringify(pending)).not.toContain('citizen_public');
    const pendingAudio=await repo.publicAudioSource(fresh.incident.reference);
    expect(pendingAudio).toMatchObject({publicationStatus:'pending_review',title:'',summary:'',locationState:'Oyo'});
    const reviewed=await repo.reviewPublication(staff,id,{expectedRevision:2,reason:'Reviewed for privacy, no identifiable details',publish:true,
      publicTitle:'Power supply safety problem in Oyo',publicSummary:'A reported public electrical hazard has been logged for internal review. No official dispatch has been confirmed.'});
    expect(reviewed.publicationStatus).toBe('published');
    const publicResult=await repo.publicIncidents({state:'Oyo'});
    expect(publicResult).toHaveLength(1);
    expect(Object.keys(publicResult[0]!).sort()).toEqual(['category','locationState','locationLga','locationDetails','publicationStatus','publishedAt','reference','status','summary','title','updatedAt'].sort());
    expect(publicResult[0]?.publicationStatus).toBe('published');
    const reviewedAudio=await repo.publicAudioSource(fresh.incident.reference);
    expect(reviewedAudio).toMatchObject({publicationStatus:'published',title:'Power supply safety problem in Oyo'});
    expect(reviewedAudio.summary).toContain('No official dispatch');
    expect(JSON.stringify(publicResult)).toContain('western market entrance');
    expect(JSON.stringify(publicResult)).not.toContain('citizen_public');
    expect((await repo.publicIncidents({state:'Lagos'}))).toHaveLength(0);
    const other=await repo.create(reporter,{...draft,requestKey:'public_medical_req_2026',category:'medical',publicConsent:true});
    await expect(repo.reviewPublication(staff,other.incident.id,{expectedRevision:1,reason:'Sensitive medical details must remain private',publish:true,
      publicTitle:'Medical problem in community',publicSummary:'This medical report contains information that must not be visible.'})).rejects.toMatchObject({code:'publication_not_permitted'});
    const revoked=await repo.setPublicConsent(reporter,id,{consent:false,expectedRevision:3});
    expect(revoked.publicationStatus).toBe('private');
    expect(await repo.publicIncidents()).toEqual([]);
    await expect(repo.publicAudioSource(fresh.incident.reference)).rejects.toMatchObject({code:'public_incident_not_found'});
    expect((await repo.events(staff,id,true)).map(x=>x.action)).toEqual(expect.arrayContaining(['publication_requested','publication_approved','publication_consent_withdrawn']));
  });
  it('keeps private citizen-approved synopsis out of the pending public feed while stripping contact numbers',async()=>{
    const repo=createCivicResponseRepository(pool);
    const result=await repo.create({tenantId:'tenant_response',userId:'citizen_live'},{
      ...draft,requestKey:'request_live_public_20261120',publicConsent:true,
      title:'Exposed power cables near the community market',
      description:'Exposed electricity cables are lying on the main road. Call 08012345678 for updates.',
      locationLga:'Ibadan North',locationDetails:'Main market junction, Ibadan'
    });
    const publicRows=await repo.publicIncidents({state:'Oyo'});
    const row=publicRows.find(item=>item.reference===result.incident.reference);
    expect(row).toMatchObject({publicationStatus:'pending_review',locationLga:'Ibadan North',locationDetails:'Main market junction, Ibadan',
      title:'Reported infrastructure issue in Oyo'});
    expect(row.summary).toContain('have not been independently verified');
    expect(row.summary).not.toContain('Exposed electricity cables');
    const stored=await repo.myIncident({tenantId:'tenant_response',userId:'citizen_live'},result.incident.id);
    expect(stored.publicSummary).toContain('Exposed electricity cables');
    expect(stored.publicSummary).not.toContain('08012345678');
    expect(JSON.stringify(row)).not.toContain('citizen_live');
  });
});
