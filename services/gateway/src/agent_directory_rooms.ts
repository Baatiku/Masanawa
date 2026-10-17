import { validateMasanaSocialChannels, type MasanaSocialChannel } from "@masanawa/masana";
import { MASANA_CHARACTER_DESIGNS } from "./masana_character_design.js";
import type {AgentRoomDirectoryReader} from "./agent_directory.js";
import type {CharacterId} from "@masanawa/contracts";
/** One tenant-scoped batch read. A room is only linked when published/free,
 * its teacher is an active platform Character and a profile is approved. */
export function createPgAgentRoomDirectory(db:{query(sql:string,params:unknown[]):Promise<{rows:unknown[]}>}):AgentRoomDirectoryReader{
 return Object.freeze({
  async readPublished({tenantId,characterIds}:Parameters<AgentRoomDirectoryReader["readPublished"]>[0]){
   if(characterIds.length===0)return new Map<CharacterId,string>();
   const found=await db.query(`
    SELECT room.teacher_character_id,room.room_id FROM rooms.rooms room
    JOIN identity.characters c ON c.tenant_id=room.tenant_id
      AND c.character_id=room.teacher_character_id AND c.state='active'
    JOIN identity.character_ownership owner ON owner.tenant_id=c.tenant_id
      AND owner.character_id=c.character_id AND owner.kind='platform'
    JOIN masana.character_revisions revision ON revision.tenant_id=c.tenant_id
      AND revision.character_id=c.character_id AND revision.state='approved'
    WHERE room.tenant_id=$1 AND room.teacher_character_id=ANY($2::text[])
      AND room.state='published' AND room.plan_mode='free'
    ORDER BY room.teacher_character_id,room.room_id`,[tenantId,characterIds]);
   const result=new Map<CharacterId,string>();
   for(const raw of found.rows){
    const row=raw as {teacher_character_id?:unknown;room_id?:unknown};
    if(typeof row.teacher_character_id!=="string" || typeof row.room_id!=="string")
      throw new Error("invalid_agent_room_projection");
    const id=row.teacher_character_id as CharacterId;
    if(!result.has(id))result.set(id,row.room_id);
   }
   return result;
  },
 });
}

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
    async read({tenantId,userId,characterIds}) {
      if(characterIds.length===0) return new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      const found=await db.query(`
        SELECT revision.character_id, revision.profile->>'handle' AS handle,
          revision.profile->'socialChannels' AS social_channels,
          EXISTS(SELECT 1 FROM masana.follows following
            WHERE following.tenant_id=revision.tenant_id
              AND following.character_id=revision.character_id
              AND following.fan_user_id=$3) AS following
        FROM masana.character_revisions revision
        JOIN identity.characters character ON character.tenant_id=revision.tenant_id
          AND character.character_id=revision.character_id AND character.state='active'
        JOIN identity.character_ownership owner ON owner.tenant_id=revision.tenant_id
          AND owner.character_id=revision.character_id AND owner.kind='platform'
        WHERE revision.tenant_id=$1 AND revision.character_id=ANY($2::text[])
          AND revision.state='approved'`,[tenantId,characterIds,userId]);
      const result=new Map<CharacterId,ApprovedMasanaDirectoryIdentity>();
      for(const raw of found.rows) {
        const row=raw as {character_id?:unknown;handle?:unknown;following?:unknown;social_channels?:unknown};
        if(typeof row.character_id!=="string" ||
           !characterIds.includes(row.character_id as CharacterId)) {
          throw new Error("invalid_masana_identity_projection");
        }
        const handle=typeof row.handle==="string"?row.handle:"";
        const key=handle.startsWith("masana.")?handle.slice(7):"";
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
