import {createHash,randomUUID} from 'node:crypto';
import {createCanonicalId} from '@masanawa/contracts';
import {validateCreatorGeneration,validateCreatorSeed} from '@masanawa/masana';
import {CreatorAgentError,type CreatorPool,type CreatorQuery} from './store.js';
type Owner={tenantId:string;userId:string};
const hash=(x:unknown)=>createHash('sha256').update(JSON.stringify(x)).digest('hex');
function text(x:unknown):string{if(typeof x!=='string'||!/^[-_a-zA-Z0-9:]{16,128}$/u.test(x))throw new CreatorAgentError('creator.invalid_reference',400);return x;}
export function createCreatorRevisionService(pool:CreatorPool){
 async function tx<T>(owner:Owner,character:string,run:(db:CreatorQuery,row:Record<string,unknown>)=>Promise<T>){
  const db=await pool.connect();let active=false;try{
   await db.query('BEGIN');active=true;
   const u=await db.query('SELECT state FROM identity.users WHERE tenant_id=$1 AND user_id=$2 FOR UPDATE',[owner.tenantId,owner.userId]);
   if(u.rows[0]?.state!=='active')throw new CreatorAgentError('creator.owner_not_active',403);
   const r=await db.query('SELECT * FROM creator.agents WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 FOR UPDATE',[owner.tenantId,owner.userId,character]);
   if(!r.rows[0])throw new CreatorAgentError('creator.agent_not_found',404);
   const result=await run(db,r.rows[0]);await db.query('COMMIT');active=false;return result;
  }catch(e){if(active)await db.query('ROLLBACK').catch(()=>{});throw e;}finally{db.release();}
 }
 return {
  async quote(owner:Owner,character:string,b:Record<string,unknown>){
   if(Object.keys(b).some(k=>!['expectedRevision','generated','idempotencyKey','portraitMediaId','bannerMediaId'].includes(k)))throw new CreatorAgentError('creator.invalid_payload',400);
   const key=text(b.idempotencyKey);
   return tx(owner,character,async(db,row)=>{
    if(row.state!=='published'&&row.state!=='paused')throw new CreatorAgentError('creator.edit_ineligible');
    if(!Number.isSafeInteger(b.expectedRevision)||Number(row.revision)!==b.expectedRevision)throw new CreatorAgentError('creator.stale_revision');
    const generated=validateCreatorGeneration(validateCreatorSeed(row.seed),b.generated,[]);
    const media:Record<string,string>={};
    for(const [field,kind] of [['portraitMediaId','portrait'],['bannerMediaId','banner']] as const){
     if(b[field]!==undefined){
      const mediaId=text(b[field]);
      const verified=await db.query("SELECT media_id FROM masana.character_media WHERE tenant_id=$1 AND character_id=$2 AND media_id=$3 AND kind=$4 AND approved_by=$5 AND length(btrim(rights_note))>4",[owner.tenantId,character,mediaId,kind,owner.userId]);
      if(!verified.rows[0])throw new CreatorAgentError('creator.media_unverified',403);media[field]=mediaId;
     }
    }
    const proposal={generated,media};
    const requestHash=hash([character,b.expectedRevision,proposal]);
    const old=await db.query("SELECT * FROM creator.operations WHERE tenant_id=$1 AND owner_user_id=$2 AND kind='substantive-edit' AND idempotency_key=$3",[owner.tenantId,owner.userId,key]);
    if(old.rows[0]){if(old.rows[0].request_hash!==requestHash)throw new CreatorAgentError('creator.idempotency_conflict');return old.rows[0];}
    const p=await db.query('SELECT revision,free_substantive_edits,paid_edit_msnw::text AS fee FROM creator.fee_policies WHERE tenant_id=$1 AND effective_at<=now() ORDER BY effective_at DESC,revision DESC LIMIT 1',[owner.tenantId]);
    const used=await db.query('SELECT count(*)::int AS count FROM creator.substantive_edits WHERE tenant_id=$1 AND character_id=$2',[owner.tenantId,character]);
    const policy=p.rows[0],fee=Number(used.rows[0]?.count??0)<Number(policy?.free_substantive_edits??3)?'0':String(policy?.fee??'100');
    if(!/^(0|[1-9][0-9]{0,35})$/u.test(fee))throw new CreatorAgentError('creator.price_unavailable',503);
    const op=randomUUID(),nonce=randomUUID(),amount=(BigInt(fee)*1000000n).toString();
    const q=await db.query("INSERT INTO creator.operations(tenant_id,operation_id,owner_user_id,character_id,kind,policy_revision,msnw_atomic,state,authorization_ref,expires_at,idempotency_key,request_hash,proposal,expected_revision) VALUES($1,$2,$3,$4,'substantive-edit',$5,$6,'quoted',$7,now()+interval '10 minutes',$8,$9,$10::jsonb,$11) RETURNING operation_id,authorization_ref,msnw_atomic,expires_at,state",[owner.tenantId,op,owner.userId,character,Number(policy?.revision??1),amount,nonce,key,requestHash,JSON.stringify(proposal),b.expectedRevision]);
    return q.rows[0];
   });
  },
  async confirm(owner:Owner,character:string,b:Record<string,unknown>){
   if(Object.keys(b).sort().join(',')!=='authorizationRef,idempotencyKey,operationId')throw new CreatorAgentError('creator.invalid_payload',400);
   const operation=text(b.operationId),nonce=text(b.authorizationRef),key=text(b.idempotencyKey);
   return tx(owner,character,async(db,row)=>{
    const r=await db.query("SELECT * FROM creator.operations WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3 AND operation_id=$4 AND kind='substantive-edit' FOR UPDATE",[owner.tenantId,owner.userId,character,operation]);
    const op=r.rows[0];if(!op||op.authorization_ref!==nonce||op.idempotency_key!==key)throw new CreatorAgentError('creator.quote_invalid');
    if(op.state==='captured'||op.state==='free_granted')return {characterId:character,revision:Number(op.expected_revision)+1,state:op.state,receiptRef:'creator:'+operation};
    if(op.state!=='quoted'||Date.parse(String(op.expires_at))<=Date.now())throw new CreatorAgentError('creator.quote_expired');
    if((row.state!=='published'&&row.state!=='paused')||Number(row.revision)!==Number(op.expected_revision))throw new CreatorAgentError('creator.stale_revision');
    const proposal=op.proposal as {generated:unknown;media:Record<string,string>};
    const generated=validateCreatorGeneration(validateCreatorSeed(row.seed),proposal.generated,[]);
    if(hash([character,Number(op.expected_revision),{generated,media:proposal.media}])!==op.request_hash)throw new CreatorAgentError('creator.quote_payload_changed');
    const amount=String(op.msnw_atomic);let wallet:string|null=null;
    if(BigInt(amount)>0n){
     const debit=await db.query('UPDATE commerce.msnw_custody_accounts SET available_micro=available_micro-$3::numeric,updated_at=clock_timestamp() WHERE tenant_id=$1 AND user_id=$2 AND available_micro >= $3::numeric RETURNING user_id',[owner.tenantId,owner.userId,amount]);
     if(debit.rowCount!==1)throw new CreatorAgentError('creator.insufficient_msnw');
     await db.query('INSERT INTO commerce.msnw_creator_fee_liabilities(tenant_id,accrued_micro) VALUES($1,$2::numeric) ON CONFLICT(tenant_id) DO UPDATE SET accrued_micro=commerce.msnw_creator_fee_liabilities.accrued_micro+$2::numeric,updated_at=clock_timestamp()',[owner.tenantId,amount]);
     wallet=randomUUID();
     await db.query("INSERT INTO commerce.msnw_creator_fee_journal(operation_id,tenant_id,owner_user_id,character_id,kind,idempotency_key,amount_micro,receipt_ref) VALUES($1,$2,$3,$4,'substantive-edit',$5,$6::numeric,$7)",[wallet,owner.tenantId,owner.userId,character,key,amount,'creator:'+operation]);
     await db.query("INSERT INTO commerce.msnw_creator_fee_postings(operation_id,entry_number,tenant_id,owner_user_id,bucket,delta_micro) VALUES($1,1,$2,$3,'available',-$4::numeric),($1,2,$2,NULL,'platform_fee',$4::numeric)",[wallet,owner.tenantId,owner.userId,amount]);
    }
    const cv=await db.query('SELECT v.constitution,v.version_number FROM identity.character_versions v JOIN identity.characters c ON c.tenant_id=v.tenant_id AND c.active_character_version_id=v.character_version_id WHERE c.tenant_id=$1 AND c.character_id=$2',[owner.tenantId,character]);
    const prior=cv.rows[0];if(!prior)throw new CreatorAgentError('creator.profile_unavailable',503);
    const version=createCanonicalId('character-version');
    const constitution={...(prior.constitution as object),biography:generated.biography,personality:[generated.manner],expertise:generated.specializations,languages:generated.languages};
    await db.query("INSERT INTO identity.character_versions(tenant_id,character_version_id,character_id,version_number,state,constitution,created_at,published_at) VALUES($1,$2,$3,$4,'published',$5::jsonb,clock_timestamp(),clock_timestamp())",[owner.tenantId,version,character,Number(prior.version_number)+1,JSON.stringify(constitution)]);
    await db.query('UPDATE identity.characters SET active_character_version_id=$3,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2',[owner.tenantId,character,version]);
    const profile=await db.query("SELECT revision,profile FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2 AND state='approved' FOR UPDATE",[owner.tenantId,character]);
    const old=profile.rows[0];if(!old)throw new CreatorAgentError('creator.profile_unavailable',503);
    await db.query("UPDATE masana.character_revisions SET state='retired' WHERE tenant_id=$1 AND character_id=$2 AND state='approved'",[owner.tenantId,character]);
    const next={...(old.profile as object),...proposal.media,biography:generated.biography,talents:generated.specializations,goals:generated.statusTopics};
    await db.query("INSERT INTO masana.character_revisions(tenant_id,character_id,revision,state,profile,approved_by,approved_at) VALUES($1,$2,$3,'approved',$4::jsonb,$5,clock_timestamp())",[owner.tenantId,character,Number(old.revision)+1,JSON.stringify(next),owner.userId]);
    await db.query('UPDATE creator.agents SET generated=$4::jsonb,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND character_id=$3',[owner.tenantId,owner.userId,character,JSON.stringify(generated)]);
    await db.query('UPDATE agents.agent_presentations SET character_version_id=$3,about=$4,greeting=$5,revision=revision+1 WHERE tenant_id=$1 AND character_id=$2',[owner.tenantId,character,version,generated.biography.slice(0,500),generated.greeting]);
    await db.query('INSERT INTO creator.substantive_edits(tenant_id,character_id,editor_user_id,revision,operation_id) VALUES($1,$2,$3,$4,$5)',[owner.tenantId,character,owner.userId,Number(row.revision)+1,operation]);
    const state=wallet?'captured':'free_granted';await db.query('UPDATE creator.operations SET state=$4,wallet_ledger_ref=$5,updated_at=clock_timestamp() WHERE tenant_id=$1 AND owner_user_id=$2 AND operation_id=$3',[owner.tenantId,owner.userId,operation,state,wallet]);
    return {characterId:character,revision:Number(row.revision)+1,state,receiptRef:'creator:'+operation};
   });
  },
 };
}
