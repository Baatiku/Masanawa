import {randomUUID} from 'node:crypto';
import type {PoolClient} from '@masanawa/postgres';
import type {RoomCommunityActor} from './index.js';

type Row=Record<string,any>;
type Sql=Pick<PoolClient,'query'>;
function fail(statusCode:number,message:string):never{throw Object.assign(new Error(message),{statusCode});}
function id(value:unknown){if(typeof value!=='string'||!value.trim()||value.length>160)fail(422,'invalid_ownership_transfer');return value.trim();}

// Called under the same Room lock as leave/remove/retire. Rejoining must never
// resurrect an offer whose participant previously lost membership.
export async function cancelRoomOwnershipTransfers(q:Sql,a:RoomCommunityActor,roomId:string,userId:string|null,reason:string){
 await q.query(`UPDATE rooms.ownership_transfers SET state='cancelled',decided_at=clock_timestamp(),decision_reason=$4
  WHERE tenant_id=$1 AND room_id=$2 AND state='pending' AND ($3::text IS NULL OR target_user_id=$3 OR from_user_id=$3)`,[a.tenantId,roomId,userId,reason]);
}

/// Caller holds the canonical Room row lock inside its existing transaction.
/// Every offer/decision uses that same lock as membership/removal/retirement.
export async function roomOwnershipTransfer(q:Sql,a:RoomCommunityActor,room:Row,method:string,parts:string[],input:Row,
 unblocked:(q:Sql,a:RoomCommunityActor,target:string)=>Promise<void>){
 const roomId=room.room_id;
 await q.query(`UPDATE rooms.ownership_transfers t SET state=CASE WHEN expires_at<=statement_timestamp() THEN 'expired' ELSE 'cancelled' END,decided_at=clock_timestamp(),
  decision_reason=CASE WHEN expires_at<=statement_timestamp() THEN 'expired' WHEN from_user_id<>$3 THEN 'owner_changed' ELSE 'participant_unavailable' END
  WHERE t.tenant_id=$1 AND t.room_id=$2 AND t.state='pending' AND
   (t.expires_at<=statement_timestamp() OR t.from_user_id<>$3
    OR NOT EXISTS(SELECT 1 FROM identity.users u WHERE u.tenant_id=t.tenant_id AND u.user_id=t.from_user_id AND u.state='active')
    OR NOT EXISTS(SELECT 1 FROM rooms.memberships m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active'
     WHERE m.tenant_id=t.tenant_id AND m.room_id=t.room_id AND m.user_id=t.target_user_id AND m.state='active'))`,[a.tenantId,roomId,room.owner_user_id]);
 async function view(row:Row|null){
  if(!row)return {ownershipVersion:1,canOffer:a.userId===room.owner_user_id,transfer:null};
  const names=await q.query(`SELECT p.user_id,p.display_name FROM talks.public_profiles p JOIN identity.users u ON u.tenant_id=p.tenant_id AND u.user_id=p.user_id AND u.state='active'
   WHERE p.tenant_id=$1 AND p.user_id IN ($2,$3)`,[a.tenantId,row.from_user_id,row.target_user_id]);
  const name=(userId:string)=>{const raw=names.rows.find(v=>v.user_id===userId)?.display_name;return typeof raw==='string'&&raw.trim()?raw.trim():null;};
  return {ownershipVersion:1,canOffer:a.userId===room.owner_user_id,transfer:{
   transferId:row.transfer_id,status:row.state,fromUserId:row.from_user_id,targetUserId:row.target_user_id,
   fromName:name(row.from_user_id),targetName:name(row.target_user_id),
   expiresAt:new Date(row.expires_at).toISOString(),createdAt:new Date(row.created_at).toISOString(),
   decidedAt:row.decided_at?new Date(row.decided_at).toISOString():null,decisionReason:row.decision_reason,decidedByUserId:row.decided_by_user_id,
   canAccept:row.state==='pending'&&a.userId===row.target_user_id,
   canDecline:row.state==='pending'&&a.userId===row.target_user_id,
   canCancel:row.state==='pending'&&a.userId===row.from_user_id&&a.userId===room.owner_user_id,
  }};
 }
 if(method==='GET'){
  const result=await q.query(`SELECT * FROM rooms.ownership_transfers WHERE tenant_id=$1 AND room_id=$2 AND (from_user_id=$3 OR target_user_id=$3)
   ORDER BY created_at DESC,transfer_id DESC LIMIT 1`,[a.tenantId,roomId,a.userId]);
  return view(result.rows[0]??null);
 }
 if(method!=='POST')fail(404,'not_found');
 if(!parts[3]){
  const target=id(input.targetUserId),key=id(input.requestId);
  const old=(await q.query('SELECT * FROM rooms.ownership_transfers WHERE tenant_id=$1 AND room_id=$2 AND from_user_id=$3 AND request_id=$4',[a.tenantId,roomId,a.userId,key])).rows[0];
  if(old){if(old.target_user_id!==target)fail(409,'idempotency_conflict');return view(old);}
  if(a.userId!==room.owner_user_id)fail(403,'room_owner_required');
  if(target===a.userId)fail(422,'ownership_target_must_differ');
  await unblocked(q,a,target);
  const eligible=await q.query(`SELECT m.user_id FROM rooms.memberships m JOIN identity.users u ON u.tenant_id=m.tenant_id AND u.user_id=m.user_id AND u.state='active'
   WHERE m.tenant_id=$1 AND m.room_id=$2 AND m.user_id=$3 AND m.state='active'`,[a.tenantId,roomId,target]);
  if(!eligible.rows.length)fail(409,'active_member_required');
  const pending=await q.query("SELECT 1 FROM rooms.ownership_transfers WHERE tenant_id=$1 AND room_id=$2 AND state='pending'",[a.tenantId,roomId]);
  if(pending.rows.length)fail(409,'ownership_transfer_pending');
  const created=await q.query(`INSERT INTO rooms.ownership_transfers(tenant_id,room_id,transfer_id,from_user_id,target_user_id,request_id,expires_at)
   VALUES($1,$2,$3,$4,$5,$6,clock_timestamp()+interval '24 hours') RETURNING *`,[a.tenantId,roomId,'room-transfer_'+randomUUID(),a.userId,target,key]);
  return view(created.rows[0]);
 }
 const transferId=id(parts[3]),action=parts[4];
 if(!['accept','decline','cancel'].includes(action??''))fail(404,'not_found');
 const transfer=(await q.query('SELECT * FROM rooms.ownership_transfers WHERE tenant_id=$1 AND room_id=$2 AND transfer_id=$3 AND (from_user_id=$4 OR target_user_id=$4)',[a.tenantId,roomId,transferId,a.userId])).rows[0];
 if(!transfer)fail(404,'ownership_transfer_not_found');
 if(action==='cancel'?a.userId!==transfer.from_user_id:a.userId!==transfer.target_user_id)fail(403,'ownership_transfer_actor_required');
 const desired=action==='accept'?'accepted':action==='decline'?'declined':'cancelled';
 if(transfer.state===desired)return view(transfer);
 if(transfer.state!=='pending'||room.owner_user_id!==transfer.from_user_id)fail(409,'ownership_transfer_unavailable');
 if(action==='accept'){
  await unblocked(q,a,transfer.from_user_id);
  const users=await q.query("SELECT user_id FROM identity.users WHERE tenant_id=$1 AND user_id IN ($2,$3) AND state='active' ORDER BY user_id FOR SHARE",[a.tenantId,transfer.from_user_id,transfer.target_user_id]);
  if(users.rows.length!==2)fail(409,'ownership_account_unavailable');
  const members=await q.query("SELECT user_id,role FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND state='active' AND user_id IN ($3,$4)",[a.tenantId,roomId,transfer.from_user_id,transfer.target_user_id]);
  const owners=await q.query("SELECT user_id FROM rooms.memberships WHERE tenant_id=$1 AND room_id=$2 AND state='active' AND role='owner'",[a.tenantId,roomId]);
  if(members.rows.length!==2||owners.rows.length!==1||owners.rows[0]?.user_id!==transfer.from_user_id)fail(409,'ownership_membership_changed');
  await q.query("UPDATE rooms.memberships SET role=CASE WHEN user_id=$3 THEN 'owner' ELSE 'admin' END,updated_at=clock_timestamp() WHERE tenant_id=$1 AND room_id=$2 AND user_id IN ($3,$4)",[a.tenantId,roomId,transfer.target_user_id,transfer.from_user_id]);
  await q.query('UPDATE rooms.rooms SET owner_user_id=$3,updated_at=clock_timestamp() WHERE tenant_id=$1 AND room_id=$2',[a.tenantId,roomId,transfer.target_user_id]);
  room.owner_user_id=transfer.target_user_id;
 }
 const reason=action==='accept'?'recipient_accepted':action==='decline'?'recipient_declined':'owner_cancelled';
 const decided=await q.query('UPDATE rooms.ownership_transfers SET state=$4,decided_at=clock_timestamp(),decided_by_user_id=$5,decision_reason=$6 WHERE tenant_id=$1 AND room_id=$2 AND transfer_id=$3 RETURNING *',[a.tenantId,roomId,transferId,desired,a.userId,reason]);
 return view(decided.rows[0]);
}
