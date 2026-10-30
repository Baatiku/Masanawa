import {OFFICIAL_PORTRAITS} from './official_portraits.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
import {OFFICIAL_PARTIES,partyEmblemUrl,publicOfficialMediaUrl} from './official_media.js';
import { validateMasanaBiographicalFacts, validateMasanaSocialChannels, type MasanaSocialChannel } from "@masanawa/masana";
import { MASANA_CHARACTER_DESIGNS } from "./masana_character_design.js";
import type { CharacterId } from "@masanawa/contracts";
/** Tenant and user-scoped approved identity and follow preferences. Identity
 * is looked up through the canonical server character ID, never by display name. */
export interface ApprovedMasanaDirectoryIdentity {
  readonly publicOfficialSimulation?:boolean;
  readonly avatarUrl?:string;
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
):AgentMasanaIdentityReader {
  return Object.freeze({
    async read({tenantId,userId,characterIds}:Parameters<AgentMasanaIdentityReader["read"]>[0]) {
      if(characterIds.length===0) return new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      const found=await db.query(`
        SELECT revision.character_id, media.media_id AS portrait_media_id,
          revision.profile->>'portraitMediaId' AS requested_portrait,
          revision.profile->'socialChannels' AS social_channels,
          revision.profile->'biographicalFacts' AS biographical_facts,
          revision.profile->>'lifeStory' AS public_biography,
          EXISTS(SELECT 1 FROM masana.follows following
            WHERE following.tenant_id=revision.tenant_id
              AND following.character_id=revision.character_id
              AND following.fan_user_id=$3) AS following
        FROM masana.character_revisions revision
        LEFT JOIN masana.character_media media
          ON media.tenant_id=revision.tenant_id
          AND media.character_id=revision.character_id
          AND media.media_id=revision.profile->>'portraitMediaId'
          AND media.kind='portrait'
          AND media.approved_by='masanawa-platform-catalog-v1'
        JOIN identity.characters character ON character.tenant_id=revision.tenant_id
          AND character.character_id=revision.character_id AND character.state='active'
        JOIN identity.character_ownership owner ON owner.tenant_id=revision.tenant_id
          AND owner.character_id=revision.character_id AND owner.kind='platform'
        WHERE revision.tenant_id=$1 AND revision.character_id=ANY($2::text[])
          AND revision.state='approved'`,[tenantId,characterIds,userId]);
      const publicRecords=await officials?.directory(tenantId,characterIds);
      const simulations=await officials?.simulations(tenantId,characterIds);
      const result=new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      for(const raw of found.rows) {
        const row=raw as {character_id?:unknown;portrait_media_id?:unknown;following?:unknown;social_channels?:unknown;biographical_facts?:unknown;public_biography?:unknown;requested_portrait?:unknown};
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
        const party=subject?{code:subject.party,name:OFFICIAL_PARTIES[subject.party].name,emblemUrl:partyEmblemUrl(subject.party),sourceUrl:subject.rosterSourceUrl,checkedAt:subject.rosterCheckedAt}:undefined;
        result.set(row.character_id as CharacterId,
          Object.freeze({...(portrait?{avatarUrl:portrait.url}:{}),...(simulations?.has(row.character_id)?{publicOfficialSimulation:true}:{}),...(publicRecords?.get(row.character_id)?{publicOfficial:{...publicRecords.get(row.character_id),...(portrait?{portrait}:{}),...(party?{party}:{}),...(typeof row.public_biography==='string'&&row.public_biography.length<=8000?{biography:row.public_biography}:{}),...(row.biographical_facts!=null?{biographicalFacts:validateMasanaBiographicalFacts(row.biographical_facts)}:{})}}:{}),portraitKey,following:row.following===true,
            socialChannels:validateMasanaSocialChannels(row.social_channels)}));
      }
      return result;
    },
  });
}
