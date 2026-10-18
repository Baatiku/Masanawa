import type {CreatorSeed} from "@masanawa/masana";
import type {CharacterId,TenantId} from "@masanawa/contracts";
import {APPROVED_MASANA_VOICES} from "../masana_voice_catalog.js";

/** Platform-curated initial voice STYLE, not a claim about a speaker's real
 * gender/age. Final availability belongs to the current Google TTS provider. */
const suggested:Readonly<Record<CreatorSeed["gender"],Readonly<Record<CreatorSeed["ageRange"],string>>>>={
 male:{"18-24":"Finn","25-39":"Bodi","40-59":"Rami","60+":"Gero"},
 female:{"18-24":"Lumi","25-39":"Fola","40-59":"Lora","60+":"Tova"},
 neutral:{"18-24":"Puck","25-39":"Charon","40-59":"Elio","60+":"Olin"},
};
export function suggestedCreatorVoice(seed:CreatorSeed):string{
 const name=suggested[seed.gender]?.[seed.ageRange];
 if(!name||!(APPROVED_MASANA_VOICES as readonly string[]).includes(name))
  throw new TypeError("creator.voice_not_approved");
 return name;
}

export function createPgCreatorVoiceReader(db:{
 query(sql:string,params:unknown[]):Promise<{rows:Record<string,unknown>[]}>
}){
 return Object.freeze({
  async readPublished(input:{tenantId:TenantId;characterId:CharacterId}):Promise<string|null>{
   const result=await db.query(`
    SELECT a.voice_profile_id, a.seed
      FROM creator.agents a
      JOIN identity.characters c ON c.tenant_id=a.tenant_id
        AND c.character_id=a.character_id AND c.state='active'
      JOIN identity.character_ownership o ON o.tenant_id=a.tenant_id
        AND o.character_id=a.character_id AND o.kind='creator-agent'
        AND o.owner_user_id=a.owner_user_id
      JOIN identity.users u ON u.tenant_id=a.tenant_id
        AND u.user_id=a.owner_user_id AND u.state='active'
      JOIN masana.character_revisions r ON r.tenant_id=a.tenant_id
        AND r.character_id=a.character_id AND r.state='approved'
      WHERE a.tenant_id=$1 AND a.character_id=$2 AND a.state='published' LIMIT 1`,
     [input.tenantId,input.characterId]);
   const row=result.rows[0];
   if(!row)return null;
   let name=row.voice_profile_id;
   if(name===null){
    const seed=row.seed as CreatorSeed;
    name=suggestedCreatorVoice(seed);
   }
   if(typeof name!=="string"||
      !(APPROVED_MASANA_VOICES as readonly string[]).includes(name))
     throw new Error("creator.voice_invalid");
   return name;
  },
 });
}
