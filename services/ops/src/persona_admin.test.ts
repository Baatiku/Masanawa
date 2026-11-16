import {describe,it,expect} from 'vitest';
import {PGlite} from '@electric-sql/pglite';
import {readFileSync} from 'node:fs';
import {createPersonaAdmin} from './persona_admin.js';
import {createPublishedPersonaReader} from '../../gateway/src/persona_narrative.js';
import {personaInstructions,livePersonaInstruction} from '../../gateway/src/persona_continuity.js';
describe('canonical persona administration',()=>{
 it('publishes versioned context, gates all admission media and restores an audited revision',async()=>{
  const db=new PGlite();try{
   await db.exec(`CREATE SCHEMA agents;CREATE SCHEMA identity;
    CREATE TABLE agents.agent_presentations(tenant_id text,character_id text,visible_in_user_app boolean,revision bigint,PRIMARY KEY(tenant_id,character_id));
    INSERT INTO agents.agent_presentations VALUES('tenant_a','character_a',true,1);
    CREATE TABLE identity.characters(tenant_id text,character_id text,active_character_version_id text,state text);
    CREATE TABLE identity.character_versions(tenant_id text,character_id text,character_version_id text,state text,constitution jsonb);
    INSERT INTO identity.characters VALUES('tenant_a','character_a','version_a','active');
    INSERT INTO identity.character_versions VALUES('tenant_a','character_a','version_a','published','{"biography":"Original biography","personality":[],"languages":["en"]}');`);
   await db.exec(readFileSync(new URL('../../../packages/agents/migrations/0021_admin_persona_controls.sql',import.meta.url),'utf8'));
   const service=createPersonaAdmin({pool:db as any,authorize:async()=>({tenantId:'tenant_a',actorId:'user_admin',name:'Admin',capabilities:['*']})});
   const draft={characterId:'character_a',state:'active' as const,mainPrompt:'Welcome thoughtful questions',tone:'Warm and concise',biography:'Approved updated biography',context:'Discuss local history when relevant',expectedRevision:0};
   expect(await service.publish('Bearer token',draft)).toMatchObject({revision:'1',tone:draft.tone});
   await expect(service.publish('Bearer token',draft)).rejects.toMatchObject({statusCode:409});
   const reader=createPublishedPersonaReader(db as any);const scope={tenantId:'tenant_a',characterId:'character_a',characterVersionId:'version_a'} as any;
   const narrative=await reader.readPublished(scope);expect(narrative?.biography).toBe(draft.biography);
   const persona={displayName:'Persona',roleLabel:'Guide',about:'Guide',narrative:narrative!};
   for(const instructions of [personaInstructions(persona).join('\n'),livePersonaInstruction(persona,[])]){expect(instructions).toContain(draft.mainPrompt);expect(instructions).toContain(draft.tone);expect(instructions).toContain(draft.context);}
   await service.publish('Bearer token',{...draft,state:'paused',expectedRevision:1});
   await expect(reader.readPublished(scope)).rejects.toThrow('persona_paused_or_disabled');
   expect((await db.query('SELECT visible_in_user_app FROM agents.agent_presentations')).rows[0]).toEqual({visible_in_user_app:false});
   await service.restore('Bearer token',{characterId:'character_a',revision:1,expectedRevision:2});
   expect((await service.read('Bearer token','character_a')).versions).toHaveLength(3);
   expect((await reader.readPublished(scope))?.adminInstructions?.revision).toBe('3');
  }finally{await db.close();}
 },30000);
});
