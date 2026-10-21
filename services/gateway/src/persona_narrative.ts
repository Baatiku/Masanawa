import type { Pool } from '@masanawa/postgres';
import type { AgentPersonaNarrative } from '@masanawa/agents';
import type { CharacterId, CharacterVersionId, TenantId } from '@masanawa/contracts';

/** Read only the exact admitted published identity, never a draft or another tenant. */
export function createPublishedPersonaReader(pool: Pick<Pool, 'query'>) {
  return Object.freeze({
    async readPublished(input: {tenantId: TenantId; characterId: CharacterId; characterVersionId: CharacterVersionId}): Promise<AgentPersonaNarrative | null> {
      const result = await pool.query(`SELECT v.constitution FROM identity.character_versions v
        JOIN identity.characters c ON c.tenant_id=v.tenant_id AND c.character_id=v.character_id
          AND c.active_character_version_id=v.character_version_id
        WHERE v.tenant_id=$1 AND v.character_id=$2 AND v.character_version_id=$3
          AND v.state='published' AND c.state='active'`,
      [input.tenantId, input.characterId, input.characterVersionId]);
      const raw: unknown = result.rows[0]?.constitution;
      if (!raw || typeof raw !== 'object' || Array.isArray(raw)) return null;
      const value = raw as Record<string, unknown>;
      if (typeof value.biography !== 'string') return null;
      const list = (key: string, max: number, length: number) => Object.freeze(Array.isArray(value[key])
        ? (value[key] as unknown[]).filter((v): v is string => typeof v === 'string').slice(0, max).map(v => v.slice(0, length)) : []);
      return Object.freeze({biography: value.biography.slice(0, 8000), personality: list('personality', 8, 300), languages: list('languages', 12, 32)});
    },
  });
}
