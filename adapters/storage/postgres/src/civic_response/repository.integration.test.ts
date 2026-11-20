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
    for(const name of ['0133_civic_response_centre.sql','0134_civic_response_verified_directory.sql'])
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
});
