import {createHash} from 'node:crypto';
import {PGlite} from '@electric-sql/pglite';
import {afterEach,beforeEach,expect,it} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>,roomId:string,path:string;
const owner={tenantId:'t',userId:'alice'},recipient={tenantId:'t',userId:'bob'},admin={tenantId:'t',userId:'eve'};
beforeEach(async()=>{
 db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});
 roomId=(await service.dispatch(owner,'POST','',{name:'Paged invitations',requestId:'room'})).id;path=roomId+'/community';
 for(let n=0;n<105;n++)await db.query(`INSERT INTO rooms.membership_invites(tenant_id,room_id,invite_id,token_hash,created_by,recipient_user_id,request_id,created_at,expires_at)
  VALUES('t',$1,$2,$3,'alice',$4,$5,'2026-01-01T00:00:00Z'::timestamptz+($6::int*interval '1 microsecond'),clock_timestamp()+interval '1 day')`,[roomId,'page_'+String(n).padStart(3,'0'),createHash('sha256').update('page'+n).digest('hex'),n%2?'bob':null,'key-'+n,Math.floor(n/3)]);
},30000);
afterEach(async()=>{await db.close();});
it('pages all manager history without skipping microsecond/tied timestamps and omits secrets',async()=>{
 const seen:string[]=[];let cursor:string|null=null;
 do{
  const result=await service.dispatch(owner,'GET',path+'/invites',{limit:17,...(cursor?{cursor}:{})});
  expect(result).toMatchObject({issuanceVersion:1,paginationVersion:1});expect(result.items.length).toBeLessThanOrEqual(17);
  expect(JSON.stringify(result)).not.toMatch(/token|hash|recipient_user_id|created_by/);
  seen.push(...result.items.map((v:any)=>v.inviteId));cursor=result.nextCursor;
 }while(cursor);
 expect(seen).toHaveLength(105);expect(new Set(seen).size).toBe(105);expect(seen[0]).toBe('page_104');expect(seen.at(-1)).toBe('page_000');
});
it('recovers an original keyed issuance outside the first 100 rows without exposing a raw code',async()=>{
 const first=await service.dispatch(owner,'GET',path+'/invites');expect(first.items).toHaveLength(100);expect(first.items.map((v:any)=>v.requestId)).not.toContain('key-0');
 const recovered=await service.dispatch(owner,'GET',path+'/invites/request',{requestId:'key-0'});
 expect(recovered).toMatchObject({issuanceVersion:1,item:{inviteId:'page_000',requestId:'key-0',kind:'code',status:'active'}});
 expect(JSON.stringify(recovered)).not.toMatch(/token|hash|recipient_user_id/);
 await service.dispatch(owner,'DELETE',path+'/invites/page_000');
 expect((await service.dispatch(owner,'GET',path+'/invites/request',{requestId:'key-0'})).item.status).toBe('revoked');
 expect(await service.dispatch(owner,'GET',path+'/invites/request',{requestId:'not-found'})).toEqual({issuanceVersion:1,item:null});
});
it('keeps another issuer request identity private and rechecks current manager permission',async()=>{
 await service.dispatch(admin,'POST',path+'/join');await service.dispatch(owner,'PATCH',path+'/members/eve',{role:'admin'});
 expect((await service.dispatch(admin,'GET',path+'/invites')).items.every((v:any)=>v.requestId===null)).toBe(true);
 expect((await service.dispatch(admin,'GET',path+'/invites/request',{requestId:'key-0'})).item).toBeNull();
 const page=await service.dispatch(admin,'GET',path+'/invites',{limit:2});
 await service.dispatch(owner,'PATCH',path+'/members/eve',{role:'member'});
 await expect(service.dispatch(admin,'GET',path+'/invites',{cursor:page.nextCursor})).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch(admin,'GET',path+'/invites/request',{requestId:'key-0'})).rejects.toMatchObject({statusCode:403});
});
it('binds cursors to tenant, viewer and listing and rejects malformed bounds uniformly',async()=>{
 const page=await service.dispatch(owner,'GET',path+'/invites',{limit:3});
 const incoming=await service.dispatch(recipient,'GET','invitations',{limit:3});
 await expect(service.dispatch(owner,'GET',path+'/invites',{cursor:incoming.nextCursor})).rejects.toMatchObject({statusCode:422});
 await expect(service.dispatch({...recipient,tenantId:'other'},'GET','invitations',{cursor:incoming.nextCursor})).rejects.toMatchObject({statusCode:422});
 const other=(await service.dispatch(owner,'POST','',{name:'Other Room',requestId:'other'})).id;
 await expect(service.dispatch(owner,'GET',other+'/community/invites',{cursor:page.nextCursor})).rejects.toMatchObject({statusCode:422});
 for(const input of [{limit:0},{limit:101},{limit:'1e2'},{cursor:'invalid==='},{cursor:Buffer.from('{"v":1}').toString('base64url')}])await expect(service.dispatch(owner,'GET',path+'/invites',input)).rejects.toMatchObject({statusCode:422,message:'invalid_invitation_page'});
});
it('paginates only the recipient pending invitations and rechecks revoke/expiry/block filters',async()=>{
 const first=await service.dispatch(recipient,'GET','invitations',{limit:50});expect(first.items).toHaveLength(50);expect(first.nextCursor).toBeTruthy();
 expect(JSON.stringify(first)).not.toMatch(/token|hash|requestId|page_time/);
 await service.dispatch(owner,'DELETE',path+'/invites/page_001');
 await db.query("UPDATE rooms.membership_invites SET expires_at=clock_timestamp()-interval '1 minute' WHERE invite_id='page_003'");
 expect((await service.dispatch(recipient,'GET','invitations',{cursor:first.nextCursor})).items).toEqual([]);
 await db.exec("INSERT INTO talks.safety_preferences VALUES('t','bob','alice',true)");
 expect((await service.dispatch(recipient,'GET','invitations')).items).toEqual([]);
});
it('new arrivals do not duplicate/shift older pages, and joining removes all pending previews',async()=>{
 const first=await service.dispatch(recipient,'GET','invitations',{limit:7});
 await service.dispatch(owner,'POST',path+'/participants',{handle:'bob',requestId:'new-arrival'});
 const next=await service.dispatch(recipient,'GET','invitations',{limit:7,cursor:first.nextCursor});
 expect(next.items.some((v:any)=>first.items.some((old:any)=>old.inviteId===v.inviteId))).toBe(false);
 await service.dispatch(recipient,'POST',path+'/join');
 expect((await service.dispatch(recipient,'GET','invitations',{cursor:first.nextCursor})).items).toEqual([]);
});
