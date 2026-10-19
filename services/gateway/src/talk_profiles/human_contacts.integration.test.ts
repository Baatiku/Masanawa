import { beforeAll, afterAll, expect, it } from 'vitest';
import { readFile } from 'node:fs/promises';
import Fastify from 'fastify';
import { PGlite } from '@electric-sql/pglite';
import { createPostgresTalkProfileRepository, type TalkProfileSqlPool } from './postgres_repository.js';
import { createTalkProfileService } from './service.js';
import { registerTalkProfileRoutes } from '../talk_profile_routes.js';

const db = new PGlite();
const app = Fastify();
beforeAll(async () => {
  await db.exec('CREATE SCHEMA talks; CREATE SCHEMA identity; CREATE TABLE identity.users(tenant_id text,user_id text,state text);');
  for (const name of ['0003_talk_profiles.sql', '0009_talk_safety.sql']) {
    await db.exec(await readFile(new URL('../../../../packages/talks/migrations/' + name, import.meta.url), 'utf8'));
  }
  const profiles = [
    ['tenant','viewer','viewer','Viewer','active'],
    ['tenant','alice','alice','Alice Maker','active'],
    ['tenant','bob','bob','Bob Maker','active'],
    ['tenant','blocked','blocked','Blocked Maker','active'],
    ['tenant','blocker','blocker','Blocking Maker','active'],
    ['tenant','hidden','hidden','Hidden Maker','active'],
    ['tenant','inactive','inactive','Inactive Maker','disabled'],
    ['elsewhere','outside','outside','Outside Maker','active'],
  ];
  for (const [tenant,id,handle,name,state] of profiles) {
    await db.query('INSERT INTO identity.users VALUES($1,$2,$3)', [tenant,id,state]);
    await db.query(`INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name,bio,updated_at)
      VALUES($1,$2,$3,$4,'Public bio',now())`, [tenant,id,handle,name]);
  }
  await db.exec(`INSERT INTO talks.follows VALUES('tenant','viewer','alice',now());
    INSERT INTO talks.safety_preferences VALUES('tenant','viewer','blocked',true,false,now()),('tenant','blocker','viewer',true,false,now());
    INSERT INTO talks.safety_enforcement VALUES('tenant','profile','hidden',1,'restricted','moderation',now());`);
  registerTalkProfileRoutes(app, createTalkProfileService({
    repository: createPostgresTalkProfileRepository({ query: (sql, args) => db.query(sql, args) } as TalkProfileSqlPool),
    authorizer: { async authorize({ authorizationHeader }) {
      if (authorizationHeader !== 'Bearer viewer') throw Object.assign(new Error('unauthorized'), {statusCode:401});
      return {tenantId:'tenant', userId:'viewer'} as never;
    } },
  }));
}, 30_000);
afterAll(async () => { await app.close(); await db.close(); });
const headers = {authorization:'Bearer viewer'};

it('lists followed public contacts and searches names without private identity fields', async () => {
  const saved = await app.inject({url:'/v1/profiles/contacts',headers});
  expect(saved.statusCode).toBe(200);
  expect(saved.json()).toEqual({items:[{handle:'alice',displayName:'Alice Maker',bio:'Public bio',avatarUrl:null}],nextCursor:null});
  const found = await app.inject({url:'/v1/profiles/contacts?q=MAKER',headers});
  expect(found.statusCode).toBe(200);
  expect(found.json().items.map((x: {handle:string})=>x.handle)).toEqual(['alice','bob']);
  expect(JSON.stringify(found.json())).not.toMatch(/userId|tenantId|phone|email/);
});
it('treats SQL wildcard characters literally and rejects invalid query/cursor', async () => {
  for (const q of ['%_', "';--"]) {
    const response = await app.inject({url:'/v1/profiles/contacts?q='+encodeURIComponent(q),headers});
    expect(response.statusCode).toBe(200); expect(response.json().items).toEqual([]);
  }
  expect((await app.inject({url:'/v1/profiles/contacts?q=x',headers})).statusCode).toBe(400);
  expect((await app.inject({url:'/v1/profiles/contacts?after=bad%20cursor',headers})).statusCode).toBe(400);
  expect((await app.inject({url:'/v1/profiles/contacts'})).statusCode).toBe(401);
});
it('prevents bypassing block, moderation and inactive filters through profile routes', async () => {
  for (const handle of ['blocked','blocker','hidden','inactive','outside']) {
    expect((await app.inject({url:'/profiles/'+handle,headers})).statusCode).toBe(404);
    expect((await app.inject({url:'/profiles/by-user/'+handle,headers})).statusCode).toBe(404);
  }
  expect((await app.inject({url:'/profiles/me',headers})).json().isSelf).toBe(true);
  expect((await app.inject({url:'/profiles/alice',headers})).json().isSelf).toBe(false);
});
it('paginates by stable handle without dropping the lookahead item', async () => {
  for(let i=0;i<32;i++) {
    const handle='page'+String(i).padStart(2,'0');
    await db.query("INSERT INTO identity.users VALUES('tenant',$1,'active')",[handle]);
    await db.query("INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name,bio,updated_at) VALUES('tenant',$1,$1,'Page Person','',now())",[handle]);
  }
  const first = (await app.inject({url:'/v1/profiles/contacts?q=page',headers})).json();
  expect(first.items).toHaveLength(30); expect(first.nextCursor).toBe('page29');
  const second = (await app.inject({url:'/v1/profiles/contacts?q=page&after='+first.nextCursor,headers})).json();
  expect(second.items.map((x:{handle:string})=>x.handle)).toEqual(['page30','page31']);
  expect(second.nextCursor).toBeNull();
});

it('cannot follow blocked or inactive people through either target route', async () => {
  for (const handle of ['blocked','blocker','inactive']) {
    for (const path of ['/profiles/'+handle+'/follow','/profiles/by-user/'+handle+'/follow']) {
      expect((await app.inject({method:'POST',url:path,headers,payload:{following:true}})).statusCode).toBe(404);
    }
  }
  const follows=await db.query("SELECT followed_user_id FROM talks.follows WHERE follower_user_id='viewer' ORDER BY followed_user_id");
  expect(follows.rows).toEqual([{followed_user_id:'alice'}]);
});
