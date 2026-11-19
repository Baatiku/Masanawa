import type { Pool } from '@masanawa/postgres';
import type { AgentPersonaNarrative } from '@masanawa/agents';
import type { CharacterId, CharacterVersionId, TenantId } from '@masanawa/contracts';
import {approvedCivicAgencyId,CIVIC_AGENCY_CATALOG} from './civic_agency_bootstrap.js';

/** Read only the exact admitted published identity, never a draft or another tenant. */
export function createPublishedPersonaReader(pool: Pick<Pool, 'query'>,officials?:ReturnType<typeof import('./public_official_knowledge.js').createOfficialKnowledgeReader>,agencies?:ReturnType<typeof import('./civic_agency_evidence.js').createCivicAgencyEvidenceReader>) {
  return Object.freeze({
    async readPublished(input: {tenantId: TenantId; characterId: CharacterId; characterVersionId: CharacterVersionId;query?:string}): Promise<AgentPersonaNarrative | null> {
      const result = await pool.query(`SELECT v.constitution FROM identity.character_versions v
        JOIN identity.characters c ON c.tenant_id=v.tenant_id AND c.character_id=v.character_id
          AND c.active_character_version_id=v.character_version_id
        WHERE v.tenant_id=$1 AND v.character_id=$2 AND v.character_version_id=$3
          AND v.state='published' AND c.state='active'`,
      [input.tenantId, input.characterId, input.characterVersionId]);
      const raw: unknown = result.rows[0]?.constitution;
      if (!raw || typeof raw !== 'object' || Array.isArray(raw)) return null;
      const value = raw as Record<string, unknown>;
      const config=(await pool.query(`SELECT state,main_prompt,tone,biography,context,research_enabled,revision::text FROM agents.admin_persona_configs WHERE tenant_id=$1 AND character_id=$2`,[input.tenantId,input.characterId])).rows[0];
      if(config&&config.state!=='active')throw Object.assign(new Error('persona_paused_or_disabled'),{statusCode:403});
      if (typeof value.biography !== 'string') return null;
      const list = (key: string, max: number, length: number) => Object.freeze(Array.isArray(value[key])
        ? (value[key] as unknown[]).filter((v): v is string => typeof v === 'string').slice(0, max).map(v => v.slice(0, length)) : []);
      const policy=value.disclosurePolicy;
      const disclosed=policy&&typeof policy==='object'&&!Array.isArray(policy)?policy as Record<string,unknown>:null;
      const agencyId=disclosed?.representation==='independent_civic_ai_guide'?approvedCivicAgencyId(disclosed.civicAgencyId):null;
      const civicAgency=agencyId?CIVIC_AGENCY_CATALOG.find(item=>item.id===agencyId):undefined;
      const official=await officials?.read(input.tenantId,input.characterId,input.characterVersionId,input.query,config?.research_enabled!==false);
      if(value.publicOfficial&&!official)throw Object.assign(new Error('official_dossier_review_required'),{statusCode:409});
      const evidence=civicAgency&&agencies?await agencies.read(civicAgency.id,input.query??''):undefined;
      return Object.freeze({...(config?{adminInstructions:{mainPrompt:String(config.main_prompt),tone:String(config.tone),context:String(config.context),revision:String(config.revision)}}:{}),...(official?{publicOfficial:official}:{}),...(civicAgency?{civicAgency:{id:civicAgency.id,name:civicAgency.name,short:civicAgency.short,topic:civicAgency.topic,sourceUrl:civicAgency.source,...('kind' in civicAgency?{kind:civicAgency.kind,jurisdiction:civicAgency.jurisdiction,...('parentName' in civicAgency?{parentName:civicAgency.parentName}:{})}:{}),...(evidence?{evidence}:{})}}:{}),biography:config?.biography?String(config.biography):value.biography.slice(0,8000),personality:list('personality',8,300),languages:list('languages',12,32)});
    },
  });
}
