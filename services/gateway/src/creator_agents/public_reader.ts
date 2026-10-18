import type {CharacterId, TenantId} from "@masanawa/contracts";

/** Never trust user-supplied discoverability; require published owner,
 * active canonical Character, approved profile and visible presentation. */
export interface CreatorPublicReader {
  listPublished(tenantId:TenantId):Promise<readonly CharacterId[]>;
  canChat(input:{tenantId:TenantId;characterId:CharacterId}):Promise<boolean>;
}
export function createPgCreatorPublicReader(db:{
  query(sql:string,params:unknown[]):Promise<{rows:Record<string,unknown>[]}>
}):CreatorPublicReader{
  const visible=`
    SELECT a.character_id FROM creator.agents a
      JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id
        AND o.character_id=a.character_id AND o.owner_user_id=a.owner_user_id
        AND o.kind='creator-agent'
      JOIN identity.characters c ON c.tenant_id=a.tenant_id
        AND c.character_id=a.character_id AND c.state='active'
      JOIN identity.users u ON u.tenant_id=a.tenant_id
        AND u.user_id=a.owner_user_id AND u.state='active'
      JOIN masana.character_revisions r ON r.tenant_id=a.tenant_id
        AND r.character_id=a.character_id AND r.state='approved'
      JOIN agents.agent_presentations p ON p.tenant_id=a.tenant_id
        AND p.character_id=a.character_id AND p.visible_in_user_app=true
    WHERE a.tenant_id=$1 AND a.state='published'`;
  return Object.freeze({
    async listPublished(tenantId){
      const result=await db.query(visible+" ORDER BY a.published_at DESC,a.character_id LIMIT 500",[tenantId]);
      return Object.freeze(result.rows.map(row=>{
        if(typeof row.character_id!=="string")throw new Error("creator.public_projection_invalid");
        return row.character_id as CharacterId;
      }));
    },
    async canChat({tenantId,characterId}){
      const result=await db.query(visible+" AND a.character_id=$2 LIMIT 1",[tenantId,characterId]);
      return result.rows.length===1;
    },
  });
}
