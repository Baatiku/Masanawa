import {createHash} from 'node:crypto';
import type {Pool} from '@masanawa/postgres';
import type {BinaryNode} from '@whiskeysockets/baileys';

const direct=/^[0-9]{5,32}(?:_\d+)?(?::\d+)?@(s\.whatsapp\.net|lid)$/;
const maxAgeMs=15_000;

export function callObservationRef(targetId:string,id:string){
  return createHash('sha256').update(`${targetId}|offer|${id}`).digest('hex');
}

export function readIncomingCallOffers(node:BinaryNode,now=Date.now()){
  if(node.tag!=='call'||node.attrs.offline||node.attrs.type==='group'||node.attrs['group-jid']||
    node.attrs['link-token']||!Array.isArray(node.content))return [];
  return node.content.slice(0,20).flatMap(child=>{
    const {attrs}=child;
    if((child.tag!=='offer'&&child.tag!=='offer_notice')||attrs.type==='group'||attrs['group-jid']||
      attrs['link-token']||child.attrs.offline)return [];
    const tags=Array.isArray(child.content)?child.content.map(item=>item.tag):[];
    if(tags.some(tag=>['video','group_info','link_info'].includes(tag)))return [];
    const id=attrs['call-id']||attrs.call_id||node.attrs['call-id']||node.attrs.call_id;
    const from=attrs['call-creator']||attrs.from||node.attrs.from;
    if(!id||id.length>128||!from||!direct.test(from))return [];
    const sentAt=Number(attrs.t??node.attrs.t)*1000;
    if(Number.isFinite(sentAt)&&Math.abs(now-sentAt)>maxAgeMs)return [];
    return [{id,from,sentAt,callerPn:attrs.caller_pn||node.attrs.caller_pn,fullVoiceOffer:child.tag==='offer'&&tags.includes('audio')}];
  });
}

export async function recordIncomingCallOffer(pool:Pick<Pool,'query'>,identity:{
  tenantId:string;channelId:string;owner:string;targetId:string|null},id:string){
  const targetId=identity.targetId??identity.channelId;
  await pool.query(`INSERT INTO security.whatsapp_call_offer_observations
    (tenant_id,channel_id,reference,messaging_at,call_device_at)
    SELECT $1,$2,$4,CASE WHEN c.call_target_channel_id IS NULL THEN clock_timestamp() END,
      CASE WHEN c.call_target_channel_id IS NOT NULL THEN clock_timestamp() END
    FROM security.whatsapp_channels c WHERE c.tenant_id=$1 AND c.channel_id=$3
      AND c.lease_owner=$5 AND c.lease_expires_at>clock_timestamp()
      AND c.state NOT IN ('disconnected','needs_pairing')
      AND (c.call_target_channel_id=$2 OR (c.channel_id=$2 AND EXISTS(
        SELECT 1 FROM security.whatsapp_channels d WHERE d.tenant_id=$1 AND d.call_target_channel_id=$2
          AND d.state<>'disconnected')))
    ON CONFLICT(tenant_id,channel_id,reference) DO UPDATE SET
      messaging_at=coalesce(security.whatsapp_call_offer_observations.messaging_at,EXCLUDED.messaging_at),
      call_device_at=coalesce(security.whatsapp_call_offer_observations.call_device_at,EXCLUDED.call_device_at)`,
  [identity.tenantId,targetId,identity.channelId,callObservationRef(targetId,id),identity.owner]);
}
