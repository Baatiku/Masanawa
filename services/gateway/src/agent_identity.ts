import { validateMasanaSocialChannels, type MasanaSocialChannel } from "@masanawa/masana";
import { MASANA_CHARACTER_DESIGNS } from "./masana_character_design.js";
import type { CharacterId } from "@masanawa/contracts";
/** Tenant and user-scoped approved identity and follow preferences. Identity
 * is looked up through the canonical server character ID, never by display name. */
export interface ApprovedMasanaDirectoryIdentity {
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
):AgentMasanaIdentityReader {
  return Object.freeze({
    async read({tenantId,userId,characterIds}:Parameters<AgentMasanaIdentityReader["read"]>[0]) {
      if(characterIds.length===0) return new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      const found=await db.query(`
        SELECT revision.character_id, media.media_id AS portrait_media_id,
          revision.profile->'socialChannels' AS social_channels,
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
      const result=new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      for(const raw of found.rows) {
        const row=raw as {character_id?:unknown;portrait_media_id?:unknown;following?:unknown;social_channels?:unknown};
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
        result.set(row.character_id as CharacterId,
          Object.freeze({portraitKey,following:row.following===true,
            socialChannels:validateMasanaSocialChannels(row.social_channels)}));
      }
      return result;
    },
  });
}
