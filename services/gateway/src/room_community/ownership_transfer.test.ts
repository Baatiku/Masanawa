import {PGlite} from '@electric-sql/pglite';
import {beforeEach,afterEach,it,expect} from 'vitest';
import {seedRoomCommunityTestDatabase} from '../../../../tests/support/room-community-database.js';
import {createRoomCommunityService} from './index.js';
let db:PGlite,service:ReturnType<typeof createRoomCommunityService>;
const owner={tenantId:'t',userId:'alice'},target={tenantId:'t',userId:'bob'},other={tenantId:'t',userId:'eve'};
beforeEach(async()=>{
 db=new PGlite();await seedRoomCommunityTestDatabase(sql=>db.exec(sql));
 const pool={query:(s:string,v?:unknown[])=>db.query(s,v),connect:async()=>({query:(s:string,v?:unknown[])=>db.query(s,v),release(){}})};
 service=createRoomCommunityService({pool:pool as any,authorize:async()=>owner});
},30000);
afterEach(async()=>{await db.close();});
async function setup(){
 const room=await service.dispatch(owner,'POST','',{name:'Consenting ownership',postingPolicy:'members',requestId:'room'}),path=room.id+'/community';
 await service.dispatch(target,'POST',path+'/join');await service.dispatch(other,'POST',path+'/join');
 return {room,path};
}
const offer=(path:string,key='offer',user='bob')=>service.dispatch(owner,'POST',path+'/ownership-transfer',{targetUserId:user,requestId:key});
const decision=(path:string,id:string,action:string,actor=target)=>service.dispatch(actor,'POST',path+'/ownership-transfer/'+id+'/'+action);
it('leave/removal permanently cancel the original offer even after rejoining',async()=>{
 const {path}=await setup();
 for(const removal of ['leave','remove']){
  const first=(await offer(path,removal)).transfer;
  if(removal==='leave')await service.dispatch(target,'POST',path+'/leave');
  else await service.dispatch(owner,'PATCH',path+'/members/bob',{state:'left'});
  await service.dispatch(target,'POST',path+'/join');
  await expect(decision(path,first.transferId,'accept')).rejects.toMatchObject({statusCode:409});
  expect((await offer(path,removal)).transfer.status).toBe('cancelled');
  expect((await service.dispatch(owner,'GET',path)).isOwner).toBe(true);
 }
});
it('offers once without transferring until the exact active recipient accepts, preserving history',async()=>{
 const {room,path}=await setup();
 await service.dispatch(owner,'POST',path+'/timeline',{body:'Preserved post',requestId:'post'});
 const first=await offer(path),id=first.transfer.transferId;
 expect(first).toMatchObject({ownershipVersion:1,canOffer:true,transfer:{status:'pending',canCancel:true,canAccept:false,fromName:'Alice',targetName:'Bob'}});
 expect((await offer(path)).transfer.transferId).toBe(id);
 await expect(offer(path,'offer','eve')).rejects.toMatchObject({statusCode:409});
 await expect(offer(path,'second','eve')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(owner,'GET',path)).isOwner).toBe(true);
 await expect(service.dispatch(owner,'POST',path+'/leave')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(target,'GET',path+'/ownership-transfer')).transfer).toMatchObject({transferId:id,canAccept:true,canDecline:true,canCancel:false});
 const accepted=await decision(path,id,'accept');
 expect(accepted.transfer).toMatchObject({status:'accepted',canAccept:false,decidedByUserId:'bob',decisionReason:'recipient_accepted',decidedAt:expect.any(String)});
 expect((await decision(path,id,'accept')).transfer.status).toBe('accepted');
 expect((await offer(path)).transfer.status).toBe('accepted');
 const roles=(await db.query<{user_id:string;role:string}>('SELECT user_id,role FROM rooms.memberships WHERE room_id=$1 ORDER BY user_id',[room.id])).rows;
 expect(roles).toEqual([{user_id:'alice',role:'admin'},{user_id:'bob',role:'owner'},{user_id:'eve',role:'member'}]);
 expect((await service.dispatch(target,'GET',path)).isOwner).toBe(true);
 await expect(service.dispatch(owner,'DELETE',path)).rejects.toMatchObject({statusCode:403});
 await service.dispatch(owner,'POST',path+'/leave');
 expect((await service.dispatch(target,'GET',path+'/timeline')).items[0].body).toBe('Preserved post');
});
it('supports actor-bound decline/cancel and replays with one durable terminal decision',async()=>{
 const {path}=await setup();
 const first=(await offer(path)).transfer;
 await expect(decision(path,first.transferId,'cancel')).rejects.toMatchObject({statusCode:403});
 await expect(decision(path,first.transferId,'decline',owner)).rejects.toMatchObject({statusCode:403});
 expect((await decision(path,first.transferId,'decline')).transfer).toMatchObject({status:'declined',decidedByUserId:'bob'});
 expect((await decision(path,first.transferId,'decline')).transfer.status).toBe('declined');
 await expect(decision(path,first.transferId,'accept')).rejects.toMatchObject({statusCode:409});
 const next=(await offer(path,'next')).transfer;
 expect((await decision(path,next.transferId,'cancel',owner)).transfer).toMatchObject({status:'cancelled',decidedByUserId:'alice',decisionReason:'owner_cancelled'});
 expect((await decision(path,next.transferId,'cancel',owner)).transfer.status).toBe('cancelled');
 await expect(decision(path,next.transferId,'accept')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(owner,'GET',path)).isOwner).toBe(true);
 expect((await db.query('SELECT * FROM rooms.ownership_transfers')).rows).toHaveLength(2);
});
it('rejects direct reassignment, self/foreign/disabled targets and nonparty access',async()=>{
 const {path}=await setup();
 await expect(service.dispatch(owner,'PATCH',path,{ownerId:'bob'})).rejects.toMatchObject({statusCode:409,message:'ownership_acceptance_required'});
 await expect(offer(path,'self','alice')).rejects.toMatchObject({statusCode:422});
 await expect(offer(path,'missing','user_missing')).rejects.toMatchObject({statusCode:409});
 await expect(service.dispatch(target,'POST',path+'/ownership-transfer',{targetUserId:'eve',requestId:'forged'})).rejects.toMatchObject({statusCode:403});
 await db.exec("UPDATE identity.users SET state='disabled' WHERE tenant_id='t' AND user_id='bob'");
 await expect(offer(path)).rejects.toMatchObject({statusCode:409});
 await db.exec("UPDATE identity.users SET state='active' WHERE tenant_id='t' AND user_id='bob'");
 const record=(await offer(path)).transfer;
 expect((await service.dispatch(other,'GET',path+'/ownership-transfer')).transfer).toBeNull();
 await expect(decision(path,record.transferId,'accept',other)).rejects.toMatchObject({statusCode:404});
 await expect(decision(path,record.transferId,'accept',{...target,tenantId:'other'})).rejects.toMatchObject({statusCode:404});
 const another=await service.dispatch(owner,'POST','',{name:'Another Room',requestId:'another'});
 await expect(decision(another.id+'/community',record.transferId,'cancel',owner)).rejects.toMatchObject({statusCode:404});
});
it('rechecks blocks and member/account eligibility before accepting and expires original offers',async()=>{
 const {path}=await setup();
 const record=(await offer(path)).transfer;
 await db.exec("INSERT INTO talks.safety_preferences VALUES('t','bob','alice',true)");
 await expect(decision(path,record.transferId,'accept')).rejects.toMatchObject({statusCode:403});
 await db.exec('DELETE FROM talks.safety_preferences');
 await service.dispatch(owner,'PATCH',path+'/members/bob',{state:'left'});
 expect((await service.dispatch(owner,'GET',path+'/ownership-transfer')).transfer).toMatchObject({status:'cancelled',decidedByUserId:null,decisionReason:'participant_removed'});
 const next=(await offer(path,'expire','eve')).transfer;
 await db.query("UPDATE rooms.ownership_transfers SET created_at=now()-interval '2 days',expires_at=now()-interval '1 day' WHERE transfer_id=$1",[next.transferId]);
 expect((await offer(path,'expire','eve')).transfer.status).toBe('expired');
 await expect(decision(path,next.transferId,'accept',other)).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(owner,'GET',path)).isOwner).toBe(true);
});
it('fails closed on an inconsistent owner roster without changing ownership or writing accepted audit',async()=>{
 const {path,room}=await setup();
 const record=(await offer(path)).transfer;
 await db.query("UPDATE rooms.memberships SET role='owner' WHERE room_id=$1 AND user_id='eve'",[room.id]);
 await expect(decision(path,record.transferId,'accept')).rejects.toMatchObject({statusCode:409});
 expect((await service.dispatch(owner,'GET',path)).ownerUserId).toBe('alice');
 expect((await service.dispatch(target,'GET',path+'/ownership-transfer')).transfer.status).toBe('pending');
});
