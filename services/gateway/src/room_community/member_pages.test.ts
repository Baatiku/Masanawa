import {PGlite} from '@electric-sql/pglite';
import Fastify from 'fastify';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService,registerRoomCommunityRoutes} from './index.js';

let db:PGlite,service:ReturnType<typeof createRoomCommunityService>,roomId:string;
const alice={tenantId:'t',userId:'alice'},bob={tenantId:'t',userId:'bob'};
type Member={userId:string;role:string;state:string;displayName:string|null;handle:string|null};
type Page={paginationVersion:number;items:Member[];nextCursor:string|null};
beforeEach(async()=>{
 db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));
 const pool={query:(s:string,values?:unknown[])=>db.query(s,values),connect:async()=>({query:(s:string,values?:unknown[])=>db.query(s,values),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async({authorizationHeader})=>authorizationHeader==='bob'?bob:alice});
 roomId=(await service.dispatch(alice,'POST','',{name:'Roster test Room',requestId:'new-roster'})).id;
 await service.dispatch(bob,'POST',roomId+'/community/join',{});
 await db.exec(`INSERT INTO identity.users(tenant_id,user_id)
  SELECT 't','roster_'||lpad(n::text,3,'0') FROM generate_series(0,239) n;
  INSERT INTO talks.public_profiles(tenant_id,user_id,handle,display_name)
  SELECT 't','roster_'||lpad(n::text,3,'0'),'acct'||lpad(n::text,3,'0'),
   CASE WHEN n=13 THEN 'literal 100%_#' ELSE 'Member '||lpad(n::text,3,'0') END FROM generate_series(0,239) n;
  INSERT INTO rooms.memberships(tenant_id,room_id,user_id,role)
  SELECT 't','${roomId}',user_id,'member' FROM identity.users WHERE tenant_id='t' AND user_id LIKE 'roster_%';`);
},30000);
afterEach(async()=>{await db.close();});

it('paginates all active member identities beyond the legacy 200 limit without skipping ties',async()=>{
 const old=await service.dispatch(bob,'GET',roomId+'/community/members');
 expect(old.items).toHaveLength(200);
 let cursor:string|null=null;const all:Member[]=[];
 do{
  const page:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{limit:23,...(cursor?{cursor}:{})});
  expect(page.paginationVersion).toBe(1);
  all.push(...page.items);cursor=page.nextCursor;
 }while(cursor);
 expect(all).toHaveLength(242);
 expect(new Set(all.map(row=>row.userId)).size).toBe(242);
 expect(all.find(row=>row.userId==='roster_239')).toMatchObject({displayName:'Member 239',handle:'acct239',role:'member',state:'active'});
 expect(all.find(row=>row.userId==='alice')).toMatchObject({displayName:'Alice',role:'owner'});
});
it('performs literal public handle/name search across older members, including wildcard characters',async()=>{
 const oldest:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{search:'Member 239'});
 expect(oldest.items.map(row=>row.userId)).toEqual(['roster_239']);
 expect((await service.dispatch(bob,'GET',roomId+'/community/members/page',{search:'acct239'})).items.map((row:Member)=>row.userId)).toEqual(['roster_239']);
 for(const term of ['100%_#','%','_','#']){
  const p:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{search:term});
  expect(p.items.map(row=>row.userId)).toEqual(['roster_013']);
 }
 expect((await service.dispatch(bob,'GET',roomId+'/community/members/page',{search:'not-a-person'})).items).toEqual([]);
});
it('rechecks account, block, membership and ban authority on later pages',async()=>{
 const first:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{limit:10});
 await db.exec(`UPDATE identity.users SET state='suspended' WHERE tenant_id='t' AND user_id='roster_239';
  UPDATE rooms.memberships SET state='banned' WHERE tenant_id='t' AND room_id='${roomId}' AND user_id='roster_238';
  INSERT INTO talks.safety_preferences VALUES('t','bob','roster_237',true);`);
 let cursor=first.nextCursor;const remaining:string[]=[];
 while(cursor){const p:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{limit:29,cursor});remaining.push(...p.items.map(v=>v.userId));cursor=p.nextCursor;}
 for(const name of ['roster_239','roster_238','roster_237'])expect(remaining).not.toContain(name);
 await expect(service.dispatch({...bob,tenantId:'other'},'GET',roomId+'/community/members/page')).rejects.toMatchObject({statusCode:404});
 await service.dispatch(alice,'PATCH',roomId+'/community/members/bob',{state:'banned'});
 await expect(service.dispatch(bob,'GET',roomId+'/community/members/page',{cursor:first.nextCursor})).rejects.toMatchObject({statusCode:403});
});
it('fences cursors to viewer, room and literal query; rejects malformed paging',async()=>{
 const first:Page=await service.dispatch(bob,'GET',roomId+'/community/members/page',{limit:3,search:'Member'});
 expect(first.nextCursor).toBeTruthy();
 const other=(await service.dispatch(alice,'POST','',{name:'Other Room',requestId:'other-roster'})).id;
 for(const [actor,path,input] of [
  [alice,roomId+'/community/members/page',{search:'Member',cursor:first.nextCursor}],
  [bob,other+'/community/members/page',{search:'Member',cursor:first.nextCursor}],
  [bob,roomId+'/community/members/page',{search:'changed',cursor:first.nextCursor}],
  [bob,roomId+'/community/members/page',{limit:0}],
  [bob,roomId+'/community/members/page',{limit:101}],
  [bob,roomId+'/community/members/page',{search:'x'.repeat(101)}],
  [bob,roomId+'/community/members/page',{cursor:'not-a-cursor'}],
 ] as const){
  await expect(service.dispatch(actor,'GET',path,input)).rejects.toMatchObject({statusCode:422,message:'invalid_member_page'});
 }
});
it('exposes read-only HTTP route, no-store cache, and bounded query validation',async()=>{
 const app=Fastify();registerRoomCommunityRoutes(app,service);
 try{
  const response=await app.inject({method:'GET',url:'/v1/rooms/'+roomId+'/community/members/page?limit=7&search=Member',headers:{authorization:'bob'}});
  expect(response.statusCode).toBe(200);
  expect(response.headers['cache-control']).toBe('no-store');
  expect(response.json()).toMatchObject({paginationVersion:1,items:[{role:'member'}]});
  expect(response.json().items).toHaveLength(7);
  expect((await app.inject({method:'GET',url:'/v1/rooms/'+roomId+'/community/members/page?limit=999',headers:{authorization:'bob'}})).statusCode).toBe(422);
 }finally{await app.close();}
});
