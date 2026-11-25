import {OFFICIAL_PORTRAITS} from './official_portraits.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
import {OFFICIAL_PARTIES,partyEmblemUrl,publicOfficialMediaUrl} from './official_media.js';
import { validateMasanaBiographicalFacts, validateMasanaSocialChannels, type MasanaSocialChannel } from "@masanawa/masana";
import { MASANA_CHARACTER_DESIGNS } from "./masana_character_design.js";
import type { CharacterId } from "@masanawa/contracts";
import {approvedCivicAgencyId} from './civic_agency_bootstrap.js';
import {civicPersonBinding,type CivicPersonBinding} from './civic_person_registry.js';
/** Tenant and user-scoped approved identity and follow preferences. Identity
 * is looked up through the canonical server character ID, never by display name. */
export interface ApprovedMasanaDirectoryIdentity {
  readonly civicAgencyId?:string;
  readonly civicPerson?:CivicPersonBinding;
  readonly publicOfficialSimulation?:boolean;
  readonly avatarUrl?:string;
  readonly biography?:string;
  readonly publicOfficial?:{portrait?:{url:string;sourceUrl:string;credit:string;licenseLabel:string;licenseUrl?:string};party?:{code:string;name:string;emblemUrl:string;sourceUrl:string;checkedAt:string};officialName:string;office:string;identitySourceUrl:string;reviewedAt:string;reviewExpiresAt:string;verification:'source_reviewed';representation:'ai_simulation';biography?:string;biographicalFacts?:import('@masanawa/masana').MasanaBiographicalFacts};
  readonly portraitKey: string | null;
  readonly following: boolean;
  readonly socialChannels: readonly MasanaSocialChannel[];
}
export interface AgentMasanaIdentityReader {
  read(input: {
    tenantId: import("@masanawa/contracts").TenantId;
    userId: import("@masanawa/contracts").UserId;
    characterIds: readonly CharacterId[];
  }): Promise<ReadonlyMap<CharacterId, ApprovedMasanaDirectoryIdentity>>;
}
export function createPgAgentMasanaIdentityReader(
  db:{query(sql:string,params:unknown[]):Promise<{rows:unknown[]}>},
  officials?:ReturnType<typeof import('./public_official_knowledge.js').createOfficialKnowledgeReader>,
  portraitBaseUrl?:string,
):AgentMasanaIdentityReader {
  return Object.freeze({
    async read({tenantId,userId,characterIds}:Parameters<AgentMasanaIdentityReader["read"]>[0]) {
      if(characterIds.length===0) return new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      // Always project the latest published state (not a draft or a superseded
      // approved revision). Retiring a civic persona must not resurrect an old
      // approved record. The signed character constitution, rather than the
      // mutable profile's 'approved_by', owns the agency/character association.
      const found=await db.query(`
        SELECT revision.character_id, media.media_id AS portrait_media_id,
          revision.profile->>'portraitMediaId' AS requested_portrait,
          revision.profile->'socialChannels' AS social_channels,
          revision.profile->'biographicalFacts' AS biographical_facts,
          revision.profile->>'lifeStory' AS public_biography,
          revision.profile->>'civicAgencyId' AS civic_agency_id,
          revision.approved_by AS profile_approved_by,
          active_version.constitution->'disclosurePolicy'->>'representation' AS civic_representation,
          active_version.constitution->'disclosurePolicy'->>'civicAgencyId' AS constitutional_civic_id,
          active_version.constitution->'disclosurePolicy' AS civic_person_policy,
          active_version.constitution->'publicOfficial'->>'officialName' AS civic_person_subject,
          EXISTS(SELECT 1 FROM masana.follows following
            WHERE following.tenant_id=revision.tenant_id
              AND following.character_id=revision.character_id
              AND following.fan_user_id=$3) AS following
        FROM identity.characters character
        JOIN identity.character_ownership owner ON owner.tenant_id=character.tenant_id
          AND owner.character_id=character.character_id AND owner.kind='platform'
        JOIN identity.character_versions active_version ON active_version.tenant_id=character.tenant_id
          AND active_version.character_version_id=character.active_character_version_id
        JOIN LATERAL (
          SELECT *
          FROM masana.character_revisions published
          WHERE published.tenant_id=character.tenant_id
            AND published.character_id=character.character_id
            AND published.state IN ('approved','retired')
          ORDER BY published.revision DESC
          LIMIT 1
        ) revision ON revision.state='approved'
        LEFT JOIN masana.character_media media
          ON media.tenant_id=revision.tenant_id
          AND media.character_id=revision.character_id
          AND media.media_id=revision.profile->>'portraitMediaId'
          AND media.kind='portrait'
          AND media.approved_by='masanawa-platform-catalog-v1'
        WHERE character.tenant_id=$1 AND character.character_id=ANY($2::text[])
          AND character.state='active'`,[tenantId,characterIds,userId]);
      const publicRecords=await officials?.directory(tenantId,characterIds);
      const simulations=await officials?.simulations(tenantId,characterIds);
      const result=new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      for(const raw of found.rows) {
        const row=raw as {character_id?:unknown;portrait_media_id?:unknown;following?:unknown;social_channels?:unknown;biographical_facts?:unknown;public_biography?:unknown;requested_portrait?:unknown;civic_agency_id?:unknown;profile_approved_by?:unknown;civic_representation?:unknown;constitutional_civic_id?:unknown;civic_person_policy?:unknown;civic_person_subject?:unknown};
        if(typeof row.character_id!=="string" ||
           !characterIds.includes(row.character_id as CharacterId)) {
          throw new Error("invalid_masana_identity_projection");
        }
        // Exact approved stock media is the immutable canonical binding;
        // mutable titles and public handles cannot grant a different portrait.
        const mediaId=typeof row.portrait_media_id==="string"?row.portrait_media_id:"";
        const key=mediaId.startsWith("masana_portrait_")?mediaId.slice(16):"";
        const portraitKey=/^[a-z][a-z0-9_-]{1,39}$/.test(key) &&
          Object.hasOwn(MASANA_CHARACTER_DESIGNS,key)?key:null;
        const reviewed=publicRecords?.get(row.character_id);
        const photo=reviewed&&row.requested_portrait==null?OFFICIAL_PORTRAITS.find(p=>p.characterId===row.character_id&&p.officialName===reviewed.officialName):undefined;
        const subject=reviewed?OFFICIAL_ROSTER_MANIFEST.find(p=>p.characterId===row.character_id&&p.officialName===reviewed.officialName):undefined;
        const portrait=photo?{url:publicOfficialMediaUrl(photo.assetKey),sourceUrl:photo.sourceUrl,credit:photo.credit,licenseLabel:photo.licenseLabel,...(photo.licenseUrl?{licenseUrl:photo.licenseUrl}:{})}:undefined;
        const party=subject?.party?{code:subject.party,name:OFFICIAL_PARTIES[subject.party].name,emblemUrl:partyEmblemUrl(subject.party),sourceUrl:subject.rosterSourceUrl,checkedAt:subject.rosterCheckedAt}:undefined;
        const constitutionalId=row.civic_representation==='independent_civic_ai_guide'
          ? approvedCivicAgencyId(row.constitutional_civic_id) : null;
        const previouslySeededId=row.profile_approved_by==='masanawa-civic-seed-v1'
          ? approvedCivicAgencyId(row.civic_agency_id) : null;
        // Do not let later administrator edits erase a legitimate civic guide,
        // but fail closed if a modified profile attempts to rebind it to another
        // institution. Display names, handles and editable biographies are
        // never sufficient to confer this identity.
        const conflictingProfileId=constitutionalId&&typeof row.civic_agency_id==='string'
          &&row.civic_agency_id!==constitutionalId;
        const civicAgencyId=conflictingProfileId?null:(constitutionalId??previouslySeededId);
        const civicPerson=civicPersonBinding(row.civic_person_policy,row.civic_person_subject);
        result.set(row.character_id as CharacterId,
          Object.freeze({...(civicPerson?{civicPerson}:{}),...(civicAgencyId?{civicAgencyId}:{}),...(portrait?{avatarUrl:portrait.url}:{}),...(simulations?.has(row.character_id)?{publicOfficialSimulation:true}:{}),...(publicRecords?.get(row.character_id)?{publicOfficial:{...publicRecords.get(row.character_id),...(portrait?{portrait}:{}),...(party?{party}:{}),...(typeof row.public_biography==='string'&&row.public_biography.length<=8000?{biography:row.public_biography}:{}),...(row.biographical_facts!=null?{biographicalFacts:validateMasanaBiographicalFacts(row.biographical_facts)}:{})}}:{}),portraitKey,following:row.following===true,
            socialChannels:validateMasanaSocialChannels(row.social_channels)}));
      }
      if(portraitBaseUrl){
        const portraits=await db.query(`SELECT character_id,revision::text,credit,source_url FROM agents.admin_persona_portraits WHERE tenant_id=$1 AND character_id=ANY($2::text[])`,[tenantId,characterIds]);
        for(const raw of portraits.rows){const row=raw as {character_id:string;revision:string;credit:string;source_url:string};if(!characterIds.includes(row.character_id as CharacterId))continue;const prior=result.get(row.character_id as CharacterId);result.set(row.character_id as CharacterId,Object.freeze({...prior,...(prior?.publicOfficial?{publicOfficial:{...prior.publicOfficial,portrait:{url:new URL('/v1/personas/'+encodeURIComponent(row.character_id)+'/portrait?revision='+encodeURIComponent(row.revision),portraitBaseUrl).href,sourceUrl:row.source_url,credit:row.credit,licenseLabel:'Administrator-confirmed rights'}}}:{}),avatarUrl:new URL('/v1/personas/'+encodeURIComponent(row.character_id)+'/portrait?revision='+encodeURIComponent(row.revision),portraitBaseUrl).href,portraitKey:prior?.portraitKey??null,following:prior?.following??false,socialChannels:prior?.socialChannels??[]}));}
      }
      const configurations=await db.query(`SELECT character_id,biography FROM agents.admin_persona_configs WHERE tenant_id=$1 AND character_id=ANY($2::text[]) AND state='active' AND biography<>''`,[tenantId,characterIds]);
      for(const raw of configurations.rows){const row=raw as {character_id:string;biography:string};if(!characterIds.includes(row.character_id as CharacterId)||typeof row.biography!=='string')continue;const prior=result.get(row.character_id as CharacterId);result.set(row.character_id as CharacterId,Object.freeze({...prior,biography:row.biography,...(prior?.publicOfficial?{publicOfficial:{...prior.publicOfficial,biography:row.biography}}:{}),portraitKey:prior?.portraitKey??null,following:prior?.following??false,socialChannels:prior?.socialChannels??[]}));}
      return result;
    },
  });
}
