import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
export class PersonaAdminError extends Error {constructor(readonly statusCode:number,readonly code:string){super(code);}}
export type PersonaConfiguration={characterId:string;state:'active'|'paused'|'disabled';mainPrompt:string;tone:string;biography:string;context:string;researchEnabled?:boolean;expectedRevision:number};
export function createPersonaAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize']}){
 const id=(s:unknown):s is string=>typeof s==='string'&&/^[a-zA-Z0-9_-]{1,128}$/.test(s);
 const projection=`state,main_prompt AS "mainPrompt",tone,biography,context,research_enabled AS "researchEnabled",revision::text,actor_id AS "actorId",updated_at AS "updatedAt"`;
 async function put(actor:{tenantId:string;actorId:string},p:PersonaConfiguration){
  if(!id(p.characterId)||!['active','paused','disabled'].includes(p.state)||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0||(p.researchEnabled!==undefined&&typeof p.researchEnabled!=='boolean')||![[p.mainPrompt,8000],[p.tone,2000],[p.biography,8000],[p.context,16000]].every(([value,max])=>typeof value==='string'&&value.length<=Number(max)))throw new PersonaAdminError(422,'invalid_persona_configuration');
  const r=await input.pool.query(`INSERT INTO agents.admin_persona_configs(tenant_id,character_id,state,main_prompt,tone,biography,context,actor_id,research_enabled)
   SELECT $1,$2,$3,$4,$5,$6,$7,$8,$10 WHERE $9=0 AND EXISTS(SELECT 1 FROM agents.agent_presentations WHERE tenant_id=$1 AND character_id=$2)
   ON CONFLICT(tenant_id,character_id) DO NOTHING RETURNING ${projection}`,[actor.tenantId,p.characterId,p.state,p.mainPrompt,p.tone,p.biography,p.context,actor.actorId,p.expectedRevision,p.researchEnabled??true]);
  if(r.rows[0])return r.rows[0];
  const changed=await input.pool.query(`UPDATE agents.admin_persona_configs SET state=$3,main_prompt=$4,tone=$5,biography=$6,context=$7,actor_id=$8,research_enabled=$10,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND revision=$9 RETURNING ${projection}`,[actor.tenantId,p.characterId,p.state,p.mainPrompt,p.tone,p.biography,p.context,actor.actorId,p.expectedRevision,p.researchEnabled??true]);
  if(!changed.rows[0])throw new PersonaAdminError(409,'persona_configuration_changed');return changed.rows[0];
 }
 return {
  async read(authorizationHeader:string|undefined,characterId:string){const actor=await input.authorize({authorizationHeader,capability:'agents.presentation.read'});if(!id(characterId))throw new PersonaAdminError(400,'invalid_persona');const rows=await input.pool.query(`SELECT ${projection} FROM agents.admin_persona_configs WHERE tenant_id=$1 AND character_id=$2`,[actor.tenantId,characterId]);const versions=await input.pool.query(`SELECT revision::text,actor_id AS "actorId",created_at AS "createdAt" FROM agents.admin_persona_config_events WHERE tenant_id=$1 AND character_id=$2 ORDER BY revision DESC LIMIT 50`,[actor.tenantId,characterId]);return {configuration:rows.rows[0]??null,versions:versions.rows};},
  async publish(authorizationHeader:string|undefined,p:PersonaConfiguration){const actor=await input.authorize({authorizationHeader,capability:'agents.presentation.write'});return put(actor,p);},
  async restore(authorizationHeader:string|undefined,p:{characterId:string;revision:number;expectedRevision:number}){const actor=await input.authorize({authorizationHeader,capability:'agents.presentation.write'});if(!id(p.characterId)||!Number.isSafeInteger(p.revision)||p.revision<1)throw new PersonaAdminError(400,'invalid_version');const history=(await input.pool.query(`SELECT configuration FROM agents.admin_persona_config_events WHERE tenant_id=$1 AND character_id=$2 AND revision=$3`,[actor.tenantId,p.characterId,p.revision])).rows[0]?.configuration as Record<string,unknown>|undefined;if(!history)throw new PersonaAdminError(404,'version_not_found');return put(actor,{characterId:p.characterId,expectedRevision:p.expectedRevision,state:history.state as PersonaConfiguration['state'],mainPrompt:String(history.main_prompt),tone:String(history.tone),biography:String(history.biography),context:String(history.context),researchEnabled:history.research_enabled!==false});},
 };
}
