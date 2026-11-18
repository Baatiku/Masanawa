import type {Pool} from '@masanawa/postgres';
import {withTransaction} from '@masanawa/postgres';
import {parseCanonicalId} from '@masanawa/contracts';
import type {AgentConversationAuthorizer} from './agent_conversation_contract.js';
export class MessageControlError extends Error{constructor(readonly statusCode:number,readonly code:string){super(code);}}
export function createMessageControlService(input:{pool:Pool;authorize:AgentConversationAuthorizer;beforeWrite:(header:string|undefined)=>Promise<void>}){return {
 async pending(header:string|undefined,characterId:string){const a=(await input.authorize.authorize({authorizationHeader:header,characterId:parseCanonicalId('character',characterId)})).scope;return {items:(await input.pool.query(`SELECT request_id AS "requestId",kind,user_text AS text,created_at AS "createdAt" FROM agents.mobile_turn_commands WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 AND state='pending' ORDER BY created_at LIMIT 20`,[a.tenantId,a.userId,a.characterId,a.relationshipId])).rows};},
 async list(header:string|undefined,p:{characterId:string;requestIds:string[]}){
  const a=(await input.authorize.authorize({authorizationHeader:header,characterId:parseCanonicalId('character',p.characterId)})).scope;
  if(!Array.isArray(p.requestIds)||p.requestIds.length>200)throw new MessageControlError(422,'invalid_message_manifest');const ids=p.requestIds.map(id=>parseCanonicalId('request',id));
  const rows=await input.pool.query(`SELECT d.direction||':'||t.request_id AS key,COALESCE(c.hidden,false) AS hidden,c.reaction,COALESCE(c.revision,0)::text AS revision FROM agents.mobile_turn_commands t CROSS JOIN (VALUES('user'),('assistant')) d(direction) LEFT JOIN agents.customer_message_controls c ON c.tenant_id=t.tenant_id AND c.user_id=t.user_id AND c.character_id=t.character_id AND c.request_id=t.request_id AND c.direction=d.direction WHERE t.tenant_id=$1 AND t.user_id=$2 AND t.character_id=$3 AND t.relationship_id=$4 AND t.request_id=ANY($5::text[]) AND t.state='completed'`,[a.tenantId,a.userId,a.characterId,a.relationshipId,ids]);return {items:rows.rows};
 },
 async update(header:string|undefined,p:{characterId:string;requestId:string;direction:'user'|'assistant';expectedRevision:number;hidden?:boolean;reaction?:string|null}){
  const admission=await input.authorize.authorize({authorizationHeader:header,characterId:parseCanonicalId('character',p.characterId)});await input.beforeWrite(header);parseCanonicalId('request',p.requestId);
  if(!['user','assistant'].includes(p.direction)||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0||p.hidden!==undefined&&typeof p.hidden!=='boolean'||p.reaction!==undefined&&p.reaction!==null&&!['👍','❤️','😂','😮','😢','🙏'].includes(p.reaction)||(p.hidden===undefined&&p.reaction===undefined))throw new MessageControlError(422,'invalid_message_action');
  const a=admission.scope;return withTransaction(input.pool,async client=>{
   await client.query('SELECT pg_advisory_xact_lock(hashtext($1))',['message-control:'+a.tenantId+':'+a.userId+':'+p.requestId+':'+p.direction]);
   const proof=(await client.query(`SELECT 1 FROM agents.mobile_turn_commands WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND relationship_id=$4 AND request_id=$5 AND state='completed' FOR SHARE`,[a.tenantId,a.userId,a.characterId,a.relationshipId,p.requestId])).rows[0];if(!proof)throw new MessageControlError(404,'message_not_found');
   const current=(await client.query(`SELECT hidden,reaction,revision::text FROM agents.customer_message_controls WHERE tenant_id=$1 AND user_id=$2 AND character_id=$3 AND request_id=$4 AND direction=$5`,[a.tenantId,a.userId,a.characterId,p.requestId,p.direction])).rows[0];
   if(Number(current?.revision??0)!==p.expectedRevision){if((p.hidden===undefined||p.hidden===current?.hidden)&&(p.reaction===undefined||p.reaction===current?.reaction))return current;throw new MessageControlError(409,'message_changed');}
   const result=(await client.query(`INSERT INTO agents.customer_message_controls(tenant_id,user_id,character_id,request_id,direction,hidden,reaction) VALUES($1,$2,$3,$4,$5,$6,$7) ON CONFLICT(tenant_id,user_id,character_id,request_id,direction) DO UPDATE SET hidden=$6,reaction=$7,revision=agents.customer_message_controls.revision+1,updated_at=clock_timestamp() RETURNING hidden,reaction,revision::text`,[a.tenantId,a.userId,a.characterId,p.requestId,p.direction,p.hidden??current?.hidden??false,p.reaction===undefined?current?.reaction??null:p.reaction])).rows[0];
   await client.query(`INSERT INTO agents.mobile_shell_events(tenant_id,user_id,character_id,relationship_id,character_session_id,event_type,payload) VALUES($1,$2,$3,$4,NULL,'message.updated',$5::jsonb)`,[a.tenantId,a.userId,a.characterId,a.relationshipId,JSON.stringify({requestId:p.requestId,direction:p.direction,...result})]);return result;
  });
 }
};}
