import {PGlite} from '@electric-sql/pglite';
import {beforeEach,afterEach,it,expect} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const a={tenantId:'t',userId:'alice'},b={tenantId:'t',userId:'bob'},c={tenantId:'t',userId:'eve'};
beforeEach(async()=>{
 db=new PGlite();
 await seedRoomCommunityTestDatabase(sql=>db.exec(sql));
 const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async()=>a});
},30000);
afterEach(async()=>{await db.close()});
it('declines targeted invitations without joining, hides secrets and fences accept/replay/foreign actors',async()=>{
 const r=await service.dispatch(a,'POST','',{name:'Invitation consent',visibility:'private',requestId:'consent'}),p=r.id+'/community';
 await service.dispatch(a,'POST',p+'/participants',{handle:'bob',requestId:'invite-consent'});
 const invitation=(await service.dispatch(b,'GET','invitations')).items[0];
 expect(invitation).toMatchObject({roomId:r.id,name:'Invitation consent',expiresAt:expect.any(String)});
 expect(JSON.stringify(invitation)).not.toMatch(/token|created_by|recipient_user_id/);
 const decline=p+'/invitations/'+invitation.inviteId+'/decline';
 await expect(service.dispatch(c,'POST',decline)).rejects.toMatchObject({statusCode:404});
 await expect(service.dispatch({...b,tenantId:'other'},'POST',decline)).rejects.toMatchObject({statusCode:404});
 expect(await service.dispatch(b,'POST',decline)).toEqual({declined:true});
 expect(await service.dispatch(b,'POST',decline)).toEqual({declined:true});
 expect((await service.dispatch(b,'GET','invitations')).items).toEqual([]);
 await expect(service.dispatch(b,'POST',p+'/join',{inviteId:invitation.inviteId})).rejects.toMatchObject({statusCode:403});
 await expect(service.dispatch(b,'GET',p)).rejects.toMatchObject({statusCode:404});
 expect((await service.dispatch(a,'GET',p)).memberCount).toBe(1);
 // A new explicit invitation can be accepted, but a late Decline cannot undo it.
 await service.dispatch(a,'POST',p+'/participants',{handle:'bob',requestId:'new-invite'});
 const next=(await service.dispatch(b,'GET','invitations')).items[0];
 await service.dispatch(b,'POST',p+'/join',{inviteId:next.inviteId});
 await expect(service.dispatch(b,'POST',p+'/invitations/'+next.inviteId+'/decline')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(b,'GET',p)).isMember).toBe(true);
});
it('does not disclose invitations or discover blocked owners and rechecks policy at join',async()=>{
 const r=await service.dispatch(a,'POST','',{name:'Blocked invitation',requestId:'blocked-invitation'}),p=r.id+'/community';
 await service.dispatch(a,'POST',p+'/participants',{handle:'bob',requestId:'blocked-target'});
 expect((await service.dispatch(b,'GET','invitations')).items).toHaveLength(1);
 const generic=await service.dispatch(a,'POST',p+'/invites');
 for(const [viewer,subject] of [['bob','alice'],['alice','bob']]){
  await db.query('INSERT INTO talks.safety_preferences VALUES($1,$2,$3,true)',['t',viewer,subject]);
  expect((await service.dispatch(b,'GET','invitations')).items).toEqual([]);
  expect((await service.dispatch(b,'GET','discover')).items).toEqual([]);
  await expect(service.dispatch(b,'POST',p+'/join',{})).rejects.toMatchObject({statusCode:403});
  await expect(service.dispatch(b,'POST',p+'/join',{token:generic.token})).rejects.toMatchObject({statusCode:403});
  await db.exec('DELETE FROM talks.safety_preferences');
 }
 await db.exec("UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='alice'");
 expect((await service.dispatch(b,'GET','invitations')).items).toEqual([]);
 await expect(service.dispatch(b,'POST',p+'/join',{token:generic.token})).rejects.toMatchObject({statusCode:403});
});
it('hides expired, banned and already-joined invitation rows',async()=>{
 const r=await service.dispatch(a,'POST','',{name:'Eligible members',requestId:'eligible-members'}),p=r.id+'/community';
 await service.dispatch(a,'POST',p+'/participants',{handle:'bob',requestId:'eligible-bob'});
 const invite=(await service.dispatch(b,'GET','invitations')).items[0];
 await db.query("UPDATE rooms.membership_invites SET created_at=now()-interval '2 days',expires_at=now()-interval '1 day' WHERE invite_id=$1",[invite.inviteId]);
 expect((await service.dispatch(b,'GET','invitations')).items).toEqual([]);
 await expect(service.dispatch(b,'POST',p+'/join',{inviteId:invite.inviteId})).rejects.toMatchObject({statusCode:403});
 await service.dispatch(b,'POST',p+'/join');
 await service.dispatch(a,'POST',p+'/participants',{handle:'eve',requestId:'eligible-eve'});
 await service.dispatch(c,'POST',p+'/join');
 expect((await service.dispatch(c,'GET','invitations')).items).toEqual([]);
 await db.exec("UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='bob'");
 await service.dispatch(a,'PATCH',p+'/members/eve',{state:'banned'});
 expect((await service.dispatch(c,'GET','invitations')).items).toEqual([]);
 expect((await db.query<{revoked_at:Date|null}>('SELECT revoked_at FROM rooms.membership_invites WHERE recipient_user_id=$1',['eve'])).rows[0]?.revoked_at).not.toBeNull();
});
it('never revives private membership using an already-consumed invitation after leave or removal',async()=>{
 const r=await service.dispatch(a,'POST','',{name:'One use private invitation',visibility:'private',requestId:'one-use'}),p=r.id+'/community';
 for(const exit of ['leave','remove']){
  const invite=await service.dispatch(a,'POST',p+'/invites');
  await service.dispatch(b,'POST',p+'/join',{token:invite.token});
  // Repeated acceptance while still joined is safe and does not demote roles.
  await service.dispatch(a,'PATCH',p+'/members/bob',{role:'admin'});
  expect((await service.dispatch(b,'POST',p+'/join',{token:invite.token})).role).toBe('admin');
  if(exit==='leave')await service.dispatch(b,'POST',p+'/leave');
  else await service.dispatch(a,'PATCH',p+'/members/bob',{state:'left'});
  await expect(service.dispatch(b,'POST',p+'/join',{token:invite.token})).rejects.toMatchObject({statusCode:403});
  await expect(service.dispatch(b,'GET',p+'/timeline')).rejects.toMatchObject({statusCode:404});
 }
 // Pending targeted invites are revoked by removal; a new explicit invite is required.
 await service.dispatch(a,'POST',p+'/participants',{handle:'bob',requestId:'pending-target'});
 const targeted=(await service.dispatch(b,'GET','invitations')).items[0];
 const link=await service.dispatch(a,'POST',p+'/invites');
 await service.dispatch(b,'POST',p+'/join',{token:link.token});
 await service.dispatch(a,'PATCH',p+'/members/bob',{state:'left'});
 await expect(service.dispatch(b,'POST',p+'/join',{inviteId:targeted.inviteId})).rejects.toMatchObject({statusCode:403});
});
