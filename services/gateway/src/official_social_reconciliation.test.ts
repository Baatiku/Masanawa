import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {createHash} from 'node:crypto';
import {expect,it} from 'vitest';
import {createOfficialSocialSync} from './official_social_store.js';
import {OfficialSocialError,type OfficialSourcePost,type OfficialInspection} from './official_social_import.js';
async function fixture(){
 const db=new PGlite();await db.exec(`CREATE SCHEMA identity;CREATE SCHEMA masana;
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text,active_character_version_id text);
 CREATE TABLE identity.character_ownership(tenant_id text,character_id text,kind text);
 CREATE TABLE masana.public_official_dossiers(tenant_id text,character_id text,character_version_id text,state text,review_expires_at timestamptz);
 CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text);
 INSERT INTO identity.characters VALUES('t','official','active','v1');INSERT INTO identity.character_ownership VALUES('t','official','platform');
 INSERT INTO masana.public_official_dossiers VALUES('t','official','v1','approved',now()+interval '1 day');INSERT INTO masana.character_revisions VALUES('t','official','approved');`);
 for(const name of ['0001_feed.sql','0017_official_social_sources.sql','0022_official_social_reconciliation.sql'])await db.exec(await readFile(new URL('../../../packages/feed/migrations/'+name,import.meta.url),'utf8'));
 await db.exec(`INSERT INTO feed.official_social_sources(tenant_id,character_id,platform,account_id,handle,rights_basis,state,reviewed_by,review_expires_at)
 VALUES('t','official','x','123','official','Reviewed permission','approved','reviewer',now()+interval '1 day')`);
 const query=(s:string,v?:unknown[])=>db.query(s,v);const pg={query,connect:async()=>({query,release(){}})};
 const due=()=>db.exec(`UPDATE feed.official_social_sources SET next_sync_at=now()-interval '1 minute',next_inspection_at=now()-interval '1 minute';UPDATE feed.official_social_posts SET next_check_at=now()-interval '1 minute'`);
 return {db,pg,due};
}
const post=(id:string,body='Original '+id,version=1,providerId=id):OfficialSourcePost=>({platform:'x',accountId:'123',externalId:id,providerId,editVersion:version,
 originalText:body,publishedAt:'2026-10-01T00:00:00Z',sourceUrl:'https://x.com/official/status/'+providerId,contentSha256:createHash('sha256').update(body).digest('hex')});
it('polls new head posts while backfilling history, reconciles edits/deletions, and never treats omissions as deletion',async()=>{
 const f=await fixture();try{
 const calls:(string|undefined)[]=[];let head=0;
 const inspector=async():Promise<OfficialInspection>=>({posts:[post('1','Edited original',2,'3')],withdrawn:[{externalId:'0',reason:'deleted'}],checkedIds:['1','0']});
 const sync=createOfficialSocialSync(f.pg as never,async(_a,cursor)=>{calls.push(cursor);if(cursor)return {posts:[post('0')]};return {posts:[post(String(++head))],nextCursor:'old'};},inspector);
 await sync.runOnce();await f.due();await sync.runOnce();expect(calls).toEqual([undefined,undefined,'old']);
 expect((await f.db.query('SELECT count(*)::int AS n FROM feed.posts')).rows).toEqual([{n:3}]);
 await f.due();expect(await sync.reconcileOnce()).toEqual({checked:2,withdrawn:1});
 const rows=(await f.db.query<{external_id:string;provider_id:string;withdrawn_at:unknown;provider_checked_at:unknown}>('SELECT * FROM feed.official_social_posts ORDER BY external_id')).rows;
 expect(rows[0]!.withdrawn_at).not.toBeNull();expect(rows[1]!.provider_id).toBe('3');expect(rows[2]!.withdrawn_at).toBeNull();expect(rows[2]!.provider_checked_at).toBeNull();
 const provenance=(await f.db.query<{source_provenance:{originalPublishedAt:string}}>(`SELECT source_provenance FROM feed.posts WHERE body='Edited original'`)).rows[0]!;
 expect(provenance.source_provenance.originalPublishedAt).toBe('2026-10-01T00:00:00.000Z');
 const old=createOfficialSocialSync(f.pg as never,async()=>({posts:[post('1','Stale old text',1)]}));await f.due();await old.runOnce();
 expect((await f.db.query(`SELECT body FROM feed.posts WHERE body='Edited original'`)).rows).toHaveLength(1);
 }finally{await f.db.close();}
},30000);
it('shares provider rate backoff, suspends denied sources and leaves canonical financial data untouched',async()=>{
 const f=await fixture();try{
 const sync=createOfficialSocialSync(f.pg as never,async()=>({posts:[post('1')]}),async()=>{throw new OfficialSocialError('official_source_rate_limited',120000);});
 await sync.runOnce();await f.due();await expect(sync.reconcileOnce()).rejects.toThrow('rate_limited');
 expect((await f.db.query('SELECT platform FROM feed.official_social_provider_limits')).rows).toEqual([{platform:'x'}]);
 expect(await sync.runOnce()).toEqual({imported:0});
 await f.db.exec(`DELETE FROM feed.official_social_provider_limits`);await f.due();
 const denied=createOfficialSocialSync(f.pg as never,async()=>{throw new OfficialSocialError('official_source_access_denied');});
 await expect(denied.runOnce()).rejects.toThrow('access_denied');expect((await f.db.query('SELECT state FROM feed.official_social_sources')).rows).toEqual([{state:'suspended'}]);
 expect((await f.db.query('SELECT body FROM feed.posts')).rows).toEqual([{body:'Original 1'}]);
 }finally{await f.db.close();}
},30000);
it('does not advance a source checkpoint after partial failure and retries without duplicate posts or revisions',async()=>{
 const f=await fixture();try{
 let fail=true;const query=async(s:string,v?:unknown[])=>{if(fail&&s.startsWith('INSERT INTO feed.posts')&&String(v?.[4]).endsWith('-2')){fail=false;throw Error('database unavailable');}return f.db.query(s,v);};
 const pg={query,connect:async()=>({query,release(){}})};
 const sync=createOfficialSocialSync(pg as never,async()=>({posts:[post('1'),post('2')],nextCursor:'history'}));
 await expect(sync.runOnce()).rejects.toThrow('database unavailable');expect((await f.db.query('SELECT cursor,last_synced_at FROM feed.official_social_sources')).rows).toEqual([{cursor:null,last_synced_at:null}]);
 await f.due();await sync.runOnce();expect((await f.db.query('SELECT count(*)::int AS n FROM feed.posts')).rows).toEqual([{n:2}]);
 expect((await f.db.query('SELECT count(*)::int AS n FROM feed.official_social_revisions')).rows).toEqual([{n:2}]);
 }finally{await f.db.close();}
},30000);
