import {PGlite} from '@electric-sql/pglite';
import {readFile} from 'node:fs/promises';
import {it,expect} from 'vitest';
import {createCreatorStatusRuntime} from './status.js';
async function fixture(){
 const db=new PGlite();
 await db.exec(`CREATE SCHEMA creator;CREATE SCHEMA identity;CREATE SCHEMA masana;CREATE SCHEMA feed;
 CREATE TABLE identity.users(tenant_id text,user_id text,state text);
 CREATE TABLE identity.characters(tenant_id text,character_id text,state text);
 CREATE TABLE creator.agents(tenant_id text,character_id text,owner_user_id text,state text,revision bigint,status_enabled boolean,status_posts_weekly int,status_rights_note text,PRIMARY KEY(tenant_id,character_id,owner_user_id));
 CREATE TABLE creator.fee_policies(tenant_id text,max_posts_weekly int,effective_at timestamptz,revision bigint);
 CREATE TABLE masana.character_revisions(tenant_id text,character_id text,state text,revision bigint,profile jsonb);
 INSERT INTO identity.users VALUES('t','owner','active');INSERT INTO identity.characters VALUES('t','character','active');
 INSERT INTO creator.agents VALUES('t','character','owner','published',1,true,2,'I own this content');
 INSERT INTO masana.character_revisions VALUES('t','character','approved',1,'{"displayName":"Garden guide","biography":"Gardening"}');`);
 await db.exec(await readFile(new URL('../../../../../packages/identity/migrations/0010_creator_status_cadence.sql',import.meta.url),'utf8'));
 // Minimal canonical editorial tables let the test inspect actual atomic states.
 await db.exec(`CREATE TABLE IF NOT EXISTS feed.posts(tenant_id text,id uuid DEFAULT gen_random_uuid(),author_masana_id text,kind text,body text,media_ids text[],transcript text,state text,idempotency_key text,published_by text,review_revision bigint DEFAULT 0,updated_at timestamptz DEFAULT now(),PRIMARY KEY(tenant_id,id),UNIQUE(tenant_id,published_by,idempotency_key));
 CREATE TABLE feed.editorial_events(tenant_id text,post_id uuid,revision bigint,previous_state text,next_state text,actor_id text,action text,idempotency_key text);`);
 const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 return {db,pool:pool as never};
}
it('runs enabled cadence once into canonical reviewed draft, not public publication',async()=>{
 const f=await fixture();try{let calls=0;const runtime=createCreatorStatusRuntime({pool:f.pool,generate:async()=>{calls++;return 'A useful gardening tip.';}});
 expect(await runtime.runOnce()).toMatchObject({completed:1});
 expect(await runtime.runOnce()).toMatchObject({completed:0});
 expect(calls).toBe(1);
 expect((await f.db.query('SELECT state,body FROM feed.posts')).rows).toEqual([{state:'in_review',body:'A useful gardening tip.'}]);
 expect((await f.db.query('SELECT action FROM feed.editorial_events ORDER BY revision')).rows).toEqual([{action:'create'},{action:'submit'}]);
 }finally{await f.db.close();}
});
it('cancels generated draft after owner pause instead of publishing stale work',async()=>{
 const f=await fixture();try{const runtime=createCreatorStatusRuntime({pool:f.pool,generate:async()=>{await f.db.exec("UPDATE creator.agents SET state='paused',revision=2");return 'Stale';}});
 expect(await runtime.runOnce()).toMatchObject({cancelled:1});expect((await f.db.query('SELECT * FROM feed.posts')).rows).toEqual([]);
 }finally{await f.db.close();}
});
it('honors active owner and current zero cap before any provider call',async()=>{
 const f=await fixture();try{let calls=0;const runtime=createCreatorStatusRuntime({pool:f.pool,generate:async()=>{calls++;return 'Draft';}});
 await f.db.exec("INSERT INTO creator.fee_policies VALUES('t',0,now(),1)");await runtime.runOnce();expect(calls).toBe(0);
 await f.db.exec("DELETE FROM creator.fee_policies;UPDATE identity.users SET state='disabled'");await runtime.runOnce();expect(calls).toBe(0);
 }finally{await f.db.close();}
});
it('provider outage keeps a bounded retry with no public post or lost job',async()=>{
 const f=await fixture();try{const runtime=createCreatorStatusRuntime({pool:f.pool,generate:async()=>{throw Error('outage');}});
 expect(await runtime.runOnce()).toMatchObject({retried:1});expect((await f.db.query('SELECT state,attempt FROM creator.status_jobs')).rows).toEqual([{state:'pending',attempt:1}]);
 expect((await f.db.query('SELECT * FROM feed.posts')).rows).toEqual([]);
 }finally{await f.db.close();}
});
