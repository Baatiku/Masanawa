import {describe,it,expect} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import sharp from 'sharp';
import {createCreatorCompletionService,type CreatorImageObjects} from './completion.js';
const owner={tenantId:'tenant_12345678',userId:'owner_12345678'},character='character_12345678';
async function fixture(){
 const db=new PGlite();
 await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA creator;CREATE SCHEMA agents;CREATE SCHEMA masana;
 CREATE TABLE identity.users(tenant_id text,user_id text,state text);
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,revision int,updated_at timestamptz);
 CREATE TABLE creator.agents(tenant_id text,owner_user_id text,character_id text,state text,revision int,status_enabled boolean,status_posts_weekly int,status_rights_note text,seed jsonb,updated_at timestamptz);
 CREATE TABLE creator.fee_policies(tenant_id text,max_posts_weekly int,effective_at timestamptz,revision int);
 CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,visible_in_user_app boolean,revision int);
 CREATE TABLE masana.character_media(tenant_id text,media_id text,character_id text,kind text,object_key text,rights_note text,approved_by text);
 INSERT INTO identity.users VALUES('tenant_12345678','owner_12345678','active');
 INSERT INTO identity.characters VALUES('tenant_12345678','character_12345678','active',1,now());
 INSERT INTO creator.agents VALUES('tenant_12345678','owner_12345678','character_12345678','published',2,true,1,NULL,'{}',now());
 INSERT INTO agents.agent_presentations VALUES('tenant_12345678','character_12345678',true,1);`);
 const pool={async query(sql:string,params:readonly unknown[]=[]){const r=await db.query<Record<string,unknown>>(sql,[...params]);return {rows:r.rows,rowCount:r.affectedRows??0};},async connect(){return {...this,release(){}};}};
 const objects=new Map<string,Buffer>();
 const images:CreatorImageObjects={async putObject(key,data){objects.set(key,data);const {createHash}=await import('node:crypto');return {sha256:createHash('sha256').update(data).digest('hex'),bytes:data.length};},async statObject(key){const data=objects.get(key);return data?{contentType:'image/webp',bytes:data.length}:null;},async deleteObject(key){objects.delete(key);},async presignGet(){return {url:'https://media.test/image?signature=test',expiresAt:new Date(Date.now()+120000).toISOString()};}};
 return {db,pool,objects,service:createCreatorCompletionService({pool,images,approvedDownloadOrigins:['https://media.test']})};
}
describe('creator completion canonical state fences',()=>{
 it('persists cadence and rejects stale or over-cap schedules without changing state',async()=>{
  const f=await fixture();try{
   expect(await f.service.schedule(owner,character,{expectedRevision:2,enabled:true,postsWeekly:2,rightsNote:'I own all content'})).toMatchObject({revision:3,delivery:'requires_review'});
   await expect(f.service.schedule(owner,character,{expectedRevision:2,enabled:false,postsWeekly:1,rightsNote:'I own all content'})).rejects.toMatchObject({code:'creator.stale_revision'});
   await expect(f.service.schedule(owner,character,{expectedRevision:3,enabled:true,postsWeekly:3,rightsNote:'I own all content'})).rejects.toMatchObject({code:'creator.schedule_cap'});
   const r=await f.db.query('SELECT revision,status_posts_weekly FROM creator.agents');expect(r.rows[0]).toMatchObject({revision:3,status_posts_weekly:2});
  }finally{await f.db.close();}
 });
 it('retirement atomically disables discovery and scheduling, retaining ownership',async()=>{
  const f=await fixture();try{
   await f.service.retire(owner,character,{expectedRevision:2});
   expect((await f.db.query('SELECT state,status_enabled FROM creator.agents')).rows[0]).toEqual({state:'retired',status_enabled:false});
   expect((await f.db.query('SELECT state FROM identity.characters')).rows[0]).toEqual({state:'disabled'});
   expect((await f.db.query('SELECT visible_in_user_app FROM agents.agent_presentations')).rows[0]).toEqual({visible_in_user_app:false});
   await expect(f.service.schedule(owner,character,{expectedRevision:3,enabled:true,postsWeekly:1,rightsNote:'I own all content'})).rejects.toMatchObject({code:'creator.schedule_ineligible'});
  }finally{await f.db.close();}
 });
 it('denies other owners and restricted identities before storage side effects',async()=>{
  const f=await fixture();try{
   await expect(f.service.retire({...owner,userId:'other_12345678'},character,{expectedRevision:2})).rejects.toMatchObject({code:'creator.owner_not_active'});
   await f.db.exec("UPDATE creator.agents SET state='restricted'");
   await expect(f.service.uploadImage(owner,character,{expectedRevision:2,kind:'portrait',rightsNote:'I own this image',dataBase64:'aGVsbG8='})).rejects.toMatchObject({code:'creator.media_ineligible'});
   expect(f.objects.size).toBe(0);
  }finally{await f.db.close();}
 });
 it('processes actual image bytes, verifies storage and binds only canonical server object keys',async()=>{
  const f=await fixture();try{
   const image=await sharp({create:{width:12,height:12,channels:3,background:'green'}}).png().toBuffer();
   const result=await f.service.uploadImage(owner,character,{expectedRevision:2,kind:'portrait',rightsNote:'I own this original image',dataBase64:image.toString('base64')});
   expect(result).toMatchObject({revision:3,state:'awaiting_revision_review'});
   const row=(await f.db.query('SELECT * FROM masana.character_media')).rows[0] as Record<string,unknown>;
   expect(row.approved_by).toBe(owner.userId);expect(String(row.object_key)).toMatch(/^creator\/tenant_12345678\/character_12345678\/media_/);
   expect(f.objects.size).toBe(1);expect((await sharp([...f.objects.values()][0]).metadata()).format).toBe('webp');
   await expect(f.service.uploadImage(owner,character,{expectedRevision:3,kind:'portrait',rightsNote:'I own this image',dataBase64:Buffer.from('not image').toString('base64')})).rejects.toMatchObject({code:'creator.image_processing_failed'});
   expect(f.objects.size).toBe(1);
  }finally{await f.db.close();}
 });
});
