import type {Pool} from "pg";
import type {TenantId,CharacterId} from "@masanawa/contracts";

/** A server-owned immutable catalog projection. Neither customers nor
 * request bodies can change the roster, its media or paid entitlements. */
export interface CatalogProfileSeed{
 readonly key:string;readonly displayName:string;readonly roleLabel:string;
 readonly roomName:string;readonly expertise:readonly string[];
 readonly languages:readonly string[];readonly roomId:string;
 readonly handle:string;readonly illustrationIndex:number;
}
export interface ApprovedCatalogIdentity{
 readonly seed:CatalogProfileSeed;readonly characterId:CharacterId;
}
// Platform-authored editorial introductions. These are real server records,
// not fake device placeholders and not claims of licensed human expertise.
// Curator-hidden originals are never re-published after moderation.
const officialStatusIntroductions: Readonly<Record<string,string>> = {
  gwani: "Welcome to Masanawa. What's one question you'd like to explore together today?",
  gwana: "Sannu da zuwa Masanawa! Wane batu ne kake son mu tattauna a yau?",
  amina: "Small questions can lead to better understanding. What would you like to learn about everyday health?",
  fatima: "Care begins with listening. What's something about wellbeing you'd like to understand?",
  salim: "A good question deserves a clear answer. What have you been curious about lately?",
  zainab: "Let's explore how everyday decisions shape our communities. What question is on your mind?",
  sadiq: "Every useful idea starts with curiosity. What would you like to build or understand today?",
  musa: "Sometimes the best way to learn is to ask why something works. What's your question?",
  bello: "Big ideas take shape one small step at a time. What would you like to explore?",
  umar: "Let's make a complicated idea easier to understand. What's puzzling you today?",
  safiya: "Great ideas begin by looking at familiar places differently. What inspires you today?",
  ruqayya: "A challenging question can be the beginning of discovery. What should we solve together?",
  idris: "Everyday choices are easier when the numbers make sense. What are you curious about?",
  maryam: "Why do prices, opportunities and choices change? Let's explore a question together.",
  kabir: "Ideas grow through good conversations. What challenge would you like to think through?",
  hauwa: "Stories connect us. What's something worth talking about in your community today?",
  yusuf: "Look closely at the world around you and questions appear everywhere. What do you notice?",
  haruna: "Learning never stops at the classroom door. What's one new thing you'd like to understand?",
  bilkisu: "The smallest details often tell fascinating stories. What are you curious about?",
  nura: "A simple question can open a whole new world of discovery. What's yours?",
  aisha: "How do everyday things change and interact? Tell me one thing you'd like to learn.",
  abdulrahman: "Good conversations start with listening to different perspectives. What should we discuss?",
  layla: "Marhaban! What word or expression would you like to practise together today?",
  grace: "Words can clarify ideas and bring people together. What would you like to express?",
  asha: "Namaste! Every new conversation is an opportunity to learn. What would you like to explore?",
  mei: "Ni hao! Curiosity travels across languages and cultures. What shall we explore today?",
};

function validateSource(input:ApprovedCatalogIdentity){
 const p=input.seed;
 if(!/^[a-z0-9_-]{3,48}$/.test(p.key)||!/^room_masana_[a-z0-9_]+$/.test(p.roomId)
   ||p.roomId.length>100 ||!/^masana\.[a-z0-9_-]{3,35}$/.test(p.handle)
   ||!Number.isInteger(p.illustrationIndex)||p.illustrationIndex<0||p.illustrationIndex>=26
   ||!input.characterId.startsWith("character_"))
   throw Error("catalog_seed_invalid");
}
export async function ensureMasanaCatalogProfiles(input:{
 readonly pool:Pool;readonly tenantId:TenantId;
 readonly catalog:readonly ApprovedCatalogIdentity[];
}):Promise<{approved:number;rooms:number}>{
 if(input.catalog.length===0)return {approved:0,rooms:0};
 const c=await input.pool.connect();
 let approved=0,rooms=0;
 try{
   await c.query("BEGIN");
   for(const item of input.catalog){
     validateSource(item);
     const {seed,characterId}=item;
     const allowed=await c.query(`SELECT 1 FROM identity.characters ident
      JOIN identity.character_ownership o USING(tenant_id,character_id)
      WHERE ident.tenant_id=$1 AND ident.character_id=$2
        AND ident.state='active' AND o.kind='platform'`,[input.tenantId,characterId]);
     if(!allowed.rows.length)throw Error("catalog_seed_owner_invalid");
     const number=String(seed.illustrationIndex).padStart(2,"0");
     const portraitId="masana_portrait_"+seed.key, bannerId="masana_banner_"+seed.key;
     const root="https://raw.githubusercontent.com/Baatiku/Masanawa/main/apps/mobile/assets/masana/";
     const legacyRoot="https://raw.githubusercontent.com/weavewellindustrieslimited/masanawa/main/apps/mobile/assets/masana/";
     const rights="Original Masanawa AI-generated illustrated character art, published as platform-owned static assets. Fictional likeness.";
     const rows=[
       [portraitId,"portrait",root+"portraits/"+seed.key+".webp"],
       [bannerId,"banner",root+"banners/banner_"+number+".svg"],
     ] as const;
     for(const [mediaId,kind,url]of rows){
       // Upgrade only exact legacy catalog entries; never overwrite curated
       // administrator media or unrelated keys. This is an additive repair.
       const oldUrl=kind==="portrait"
         ?legacyRoot+"avatars/portrait_"+number+".svg"
         :legacyRoot+"banners/banner_"+number+".svg";
       await c.query(`INSERT INTO masana.character_media
         (tenant_id,media_id,character_id,kind,object_key,rights_note,approved_by)
         VALUES ($1,$2,$3,$4,$5,$6,'masanawa-platform-catalog-v1')
         ON CONFLICT (tenant_id,media_id) DO UPDATE
           SET object_key=EXCLUDED.object_key,updated_at=now()
           WHERE masana.character_media.approved_by='masanawa-platform-catalog-v1'
             AND masana.character_media.object_key=$7`,
         [input.tenantId,mediaId,characterId,kind,url,rights,oldUrl]);
       const check=await c.query(`SELECT character_id,kind,object_key,approved_by FROM masana.character_media
         WHERE tenant_id=$1 AND media_id=$2`,[input.tenantId,mediaId]);
       if(check.rows[0]?.character_id!==characterId||check.rows[0]?.kind!==kind||
          (check.rows[0]?.object_key!==url &&
            check.rows[0]?.approved_by==="masanawa-platform-catalog-v1"))
         throw Error("catalog_seed_media_conflict");
     }
     const profile={
       handle:seed.handle,displayName:seed.displayName,profession:seed.roleLabel,
       biography:"Fictional Masanawa AI educator for "+seed.roleLabel+
         ". Ask questions and receive lessons. This is not a licensed human practitioner.",
       lifeStory:"An original fictional Masanawa AI learning character. "+
         "Explains relevant university topics and language skills with care. "+
         "Professional styling is a role, not a claim of a real person's degree or registration.",
       languages:[...seed.languages],talents:[...seed.expertise],
       goals:["Help students learn "+seed.roleLabel,"Provide clear explanations and practice"],
       portraitMediaId:portraitId,bannerMediaId:bannerId,
     };
     // Never alter an existing approved or curated staff-owned Character bible.
     const prev=await c.query(`SELECT state FROM masana.character_revisions
       WHERE tenant_id=$1 AND character_id=$2 AND state='approved' LIMIT 1`,
       [input.tenantId,characterId]);
     if(!prev.rows.length){
       const latest=await c.query(`SELECT COALESCE(MAX(revision),0)::int AS revision
         FROM masana.character_revisions WHERE tenant_id=$1 AND character_id=$2`,
         [input.tenantId,characterId]);
       const revision=Number(latest.rows[0].revision)+1;
       const created=await c.query(`INSERT INTO masana.character_revisions
         (tenant_id,character_id,revision,state,profile,approved_by,approved_at)
         VALUES($1,$2,$3,'approved',$4::jsonb,'masanawa-platform-catalog-v1',now())
         RETURNING revision`,
         [input.tenantId,characterId,revision,JSON.stringify(profile)]);
       if(created.rowCount===1)approved++;
     }

     // One approved real Status post per platform Masana until they have
     // published content. Seed with the canonical owned ID and a stable
     // idempotency key. Never recreate a hidden/removed editorial original.
     // This keeps restart safe and leaves curated posts untouched.
     const statusBody = officialStatusIntroductions[seed.key];
     if (!statusBody) throw Error("catalog_status_introduction_missing");
     await c.query(`INSERT INTO feed.posts (
         tenant_id,author_type,author_masana_id,kind,body,media_ids,
         idempotency_key,published_by,state)
       SELECT $1,'masana',$2,'text',$3,ARRAY[]::text[],
          'masanawa-platform-intro-v1',$2,'published'
       WHERE EXISTS (
         SELECT 1 FROM identity.characters ident
         JOIN identity.character_ownership owner USING(tenant_id,character_id)
         JOIN masana.character_revisions rev USING(tenant_id,character_id)
         WHERE ident.tenant_id=$1 AND ident.character_id=$2
           AND ident.state='active' AND owner.kind='platform'
           AND rev.state='approved')
         AND NOT EXISTS (
           SELECT 1 FROM feed.posts existing
           WHERE existing.tenant_id=$1
             AND existing.author_type='masana'
             AND existing.author_masana_id=$2
             AND existing.state='published')
         AND NOT EXISTS (
           SELECT 1 FROM feed.posts prior
           WHERE prior.tenant_id=$1
             AND prior.published_by=$2
             AND prior.idempotency_key='masanawa-platform-intro-v1')
       ON CONFLICT(tenant_id,published_by,idempotency_key) DO NOTHING`,
       [input.tenantId,characterId,statusBody]);

   }
   await c.query("COMMIT");
   return {approved,rooms};
 }catch(error){await c.query("ROLLBACK");throw error;}
 finally{c.release();}
}
/** Prevent multiple Gateway replicas from concurrently creating different
 * random character IDs for the same catalog persona. Session advisory lock. */
export async function withCatalogProvisionLock<T>(pool:Pool,tenantId:TenantId,run:()=>Promise<T>):Promise<T>{
 const client=await pool.connect();
 let locked=false;
 try{
   await client.query("SELECT pg_advisory_lock(hashtext('masanawa-catalog-v1'),hashtext($1::text))",[tenantId]);
   locked=true;
   return await run();
 }finally{
   if(locked)await client.query("SELECT pg_advisory_unlock(hashtext('masanawa-catalog-v1'),hashtext($1::text))",[tenantId]).catch(()=>undefined);
   client.release();
 }
}
