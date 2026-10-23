import {PGlite} from '@electric-sql/pglite';
import {beforeEach,afterEach,it,expect} from 'vitest';
import {createHash} from 'node:crypto';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},member={tenantId:'t',userId:'bob'},outsider={tenantId:'t',userId:'eve'};
beforeEach(async()=>{
 db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));
 const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});
},30000);
afterEach(async()=>{await db.close();});
async function room(key='room'){
 const value=await service.dispatch(owner,'POST','',{name:'Invitation recovery',visibility:'private',requestId:key});
 return {id:value.id,path:value.id+'/community'};
}
it('issues exactly one grant for a keyed retry and never persists or recovers its raw code',async()=>{
 const r=await room(),input={requestId:'original-issuance'};
 const first=await service.dispatch(owner,'POST',r.path+'/invites/issue',input);
 expect(first).toMatchObject({replayed:false,status:'active'});expect(first.token).toMatch(/^[A-Za-z0-9_-]{43}$/);
 const replay=await service.dispatch(owner,'POST',r.path+'/invites/issue',input);
 expect(replay).toMatchObject({inviteId:first.inviteId,replayed:true,status:'active'});expect(replay).not.toHaveProperty('token');
 const stored=(await db.query<{token_hash:string}>('SELECT * FROM rooms.membership_invites')).rows;
 expect(stored).toHaveLength(1);
 expect(stored[0]?.token_hash).toBe(createHash('sha256').update(first.token).digest('hex'));
 expect(JSON.stringify(stored)).not.toContain(first.token);
 const listing=await service.dispatch(owner,'GET',r.path+'/invites');
 expect(listing.issuanceVersion).toBe(1);
 expect(listing.items).toMatchObject([{inviteId:first.inviteId,requestId:input.requestId,kind:'code',status:'active'}]);
 expect(JSON.stringify(listing)).not.toMatch(/token|token_hash|recipient_user_id|created_by/);
 await service.dispatch(member,'POST',r.path+'/join',{token:first.token});
 expect((await service.dispatch(owner,'POST',r.path+'/invites/issue',input)).status).toBe('accepted');
 expect((await service.dispatch(owner,'GET',r.path+'/invites')).items[0].status).toBe('accepted');
});
it('reconciles revoked/expired originals instead of replacing them, while allowing an explicit new key',async()=>{
 const r=await room(),first=await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'lost-code'});
 await service.dispatch(owner,'DELETE',r.path+'/invites/'+first.inviteId);
 expect(await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'lost-code'})).toMatchObject({inviteId:first.inviteId,status:'revoked',replayed:true});
 const replacement=await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'explicit-replacement'});
 expect(replacement.inviteId).not.toBe(first.inviteId);
 await expect(service.dispatch(member,'POST',r.path+'/join',{token:first.token})).rejects.toMatchObject({statusCode:403});
 await db.query("UPDATE rooms.membership_invites SET created_at=now()-interval '2 days',expires_at=now()-interval '1 day' WHERE invite_id=$1",[replacement.inviteId]);
 expect((await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'explicit-replacement'})).status).toBe('expired');
 expect((await db.query('SELECT * FROM rooms.membership_invites')).rows).toHaveLength(2);
});
it('recovers a keyed original even when it falls beyond the 100-row management page',async()=>{
 const r=await room(),first=await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'older-original'});
 await db.query("UPDATE rooms.membership_invites SET created_at=now()-interval '1 hour' WHERE invite_id=$1",[first.inviteId]);
 await db.query(`INSERT INTO rooms.membership_invites(tenant_id,room_id,invite_id,token_hash,created_by,request_id,expires_at)
  SELECT 't',$1,'newer-'||n,lpad(n::text,64,'0'),'alice','newer-request-'||n,now()+interval '24 hours' FROM generate_series(1,101) n`,[r.id]);
 const listed=(await service.dispatch(owner,'GET',r.path+'/invites')).items;
 expect(listed).toHaveLength(100);expect(listed.some((v:any)=>v.inviteId===first.inviteId)).toBe(false);
 expect(await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'older-original'})).toMatchObject({inviteId:first.inviteId,status:'active',replayed:true});
 expect((await db.query('SELECT * FROM rooms.membership_invites')).rows).toHaveLength(102);
});
it('revokes an issuer\'s outstanding grants on demotion or leave without removing existing members',async()=>{
 const r=await room(),bootstrap=await service.dispatch(owner,'POST',r.path+'/invites');
 await service.dispatch(member,'POST',r.path+'/join',{token:bootstrap.token});
 await service.dispatch(owner,'PATCH',r.path+'/members/bob',{role:'admin'});
 await service.dispatch(member,'POST',r.path+'/participants',{handle:'eve',requestId:'admin-target'});
 const code=await service.dispatch(member,'POST',r.path+'/invites/issue',{requestId:'admin-code'});
 await service.dispatch(owner,'PATCH',r.path+'/members/bob',{role:'member'});
 expect((await service.dispatch(outsider,'GET','invitations')).items).toEqual([]);
 await expect(service.dispatch(outsider,'POST',r.path+'/join',{token:code.token})).rejects.toMatchObject({statusCode:403});
 expect((await service.dispatch(member,'GET',r.path)).isMember).toBe(true);
 await service.dispatch(owner,'PATCH',r.path+'/members/bob',{role:'admin'});
 expect((await service.dispatch(member,'POST',r.path+'/invites/issue',{requestId:'admin-code'})).status).toBe('revoked');
 const fresh=await service.dispatch(member,'POST',r.path+'/invites/issue',{requestId:'fresh-after-promotion'});
 await service.dispatch(member,'POST',r.path+'/leave');
 await expect(service.dispatch(outsider,'POST',r.path+'/join',{token:fresh.token})).rejects.toMatchObject({statusCode:403});
 expect((await service.dispatch(owner,'GET',r.path)).isOwner).toBe(true);
});
it('requires a key on the recovery endpoint and fences nonmanagers, tenants, rooms and targeted-key reuse',async()=>{
 const r=await room();
 for(const input of [{},{requestId:''},{requestId:123},{requestId:'x'.repeat(161)}]){
  await expect(service.dispatch(owner,'POST',r.path+'/invites/issue',input)).rejects.toMatchObject({statusCode:422});
 }
 // Legacy unkeyed issuance remains supported for deployed older clients.
 const legacy=await service.dispatch(owner,'POST',r.path+'/invites');
 await service.dispatch(member,'POST',r.path+'/join',{token:legacy.token});
 await expect(service.dispatch(member,'POST',r.path+'/invites/issue',{requestId:'not-admin'})).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch(member,'GET',r.path+'/invites')).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch({...member,tenantId:'other'},'POST',r.path+'/invites/issue',{requestId:'other-tenant'})).rejects.toMatchObject({statusCode:404});
 await service.dispatch(owner,'POST',r.path+'/participants',{handle:'eve',requestId:'target-key'});
 await expect(service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:'target-key'})).rejects.toMatchObject({statusCode:409});
 await service.dispatch(owner,'PATCH',r.path+'/members/bob',{role:'admin'});
 const key='same-key';
 const own=await service.dispatch(owner,'POST',r.path+'/invites/issue',{requestId:key});
 const otherManager=await service.dispatch(member,'POST',r.path+'/invites/issue',{requestId:key});
 expect(otherManager.inviteId).not.toBe(own.inviteId);
 const adminRows=(await service.dispatch(member,'GET',r.path+'/invites')).items;
 expect(adminRows.find((v:any)=>v.inviteId===own.inviteId).requestId).toBeNull();
 expect(adminRows.find((v:any)=>v.inviteId===otherManager.inviteId).requestId).toBe(key);
 const second=await room('second');
 expect((await service.dispatch(owner,'POST',second.path+'/invites/issue',{requestId:key})).inviteId).not.toBe(own.inviteId);
 await expect(service.dispatch(outsider,'GET',r.path+'/invites')).rejects.toMatchObject({statusCode:404});
});
