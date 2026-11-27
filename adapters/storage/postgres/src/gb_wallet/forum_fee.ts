import type {Pool} from 'pg';
export type ForumFeePolicy={enabled:boolean;feeKobo:number;freeRooms:string[];freeKinds:string[];revision:number};
export async function readForumFeePolicy(db:Pick<Pool,'query'>,tenantId:string):Promise<ForumFeePolicy>{
 const r=(await db.query("SELECT enabled,fee_kobo,free_rooms,free_kinds,revision FROM agents.forum_fee_policy WHERE tenant_id=$1",[tenantId])).rows[0];
 if(!r)return {enabled:false,feeKobo:10000,freeRooms:['rights','police'],freeKinds:['question'],revision:0};
 return {enabled:r.enabled===true,feeKobo:Number(r.fee_kobo),freeRooms:r.free_rooms,freeKinds:r.free_kinds,revision:Number(r.revision)};
}
export function forumTopicFee(policy:ForumFeePolicy,room:string,kind:string):number{
 return policy.enabled&&!policy.freeRooms.includes(room)&&!policy.freeKinds.includes(kind)?policy.feeKobo:0;
}
