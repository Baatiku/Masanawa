import type {CharacterId,TenantId} from '@masanawa/contracts';
export interface PublicMasanaCreator { readonly handle:string;readonly displayName:string }
export interface MasanaCreatorDirectory {
  read(input:{tenantId:TenantId;characterIds:readonly CharacterId[]}):Promise<ReadonlyMap<CharacterId,PublicMasanaCreator>>;
}
/** Only published characters belonging to an active creator with a public profile. */
export function createPgMasanaCreatorDirectory(db:{query(sql:string,params:unknown[]):Promise<{rows:unknown[]}>}):MasanaCreatorDirectory {
  return {async read({tenantId,characterIds}) {
    if(!characterIds.length)return new Map();
    const result=await db.query(`SELECT a.character_id,p.handle,p.display_name
      FROM creator.agents a
      JOIN identity.characters c ON c.tenant_id=a.tenant_id AND c.character_id=a.character_id AND c.state='active'
      JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id AND o.character_id=a.character_id
        AND o.owner_user_id=a.owner_user_id AND o.kind='creator-agent'
      JOIN identity.users u ON u.tenant_id=a.tenant_id AND u.user_id=a.owner_user_id AND u.state='active'
      JOIN talks.public_profiles p ON p.tenant_id=a.tenant_id AND p.user_id=a.owner_user_id
      WHERE a.tenant_id=$1 AND a.character_id=ANY($2::text[]) AND a.state='published'`,[tenantId,characterIds]);
    const creators=new Map<CharacterId,PublicMasanaCreator>();
    for(const raw of result.rows){
      const row=raw as {character_id?:unknown;handle?:unknown;display_name?:unknown};
      if(typeof row.character_id!=='string'||!characterIds.includes(row.character_id as CharacterId)||
        typeof row.handle!=='string'||!/^[a-z0-9_][a-z0-9_.-]{1,39}$/.test(row.handle)||
        typeof row.display_name!=='string'||!row.display_name.trim())throw Error('invalid_public_creator_projection');
      creators.set(row.character_id as CharacterId,{handle:row.handle,displayName:row.display_name});
    }
    return creators;
  }};
}
