import type {Pool} from "@masanawa/postgres";
import type {StatusMediaConfiguration} from "../home_feed/media_runtime.js";

type Kind="portrait"|"banner";
type ImageMedia={
 tenantId:string;characterId:string;mediaId:string;kind:Kind
};
const validImage=/^image\/(jpeg|png|webp)$/;
const control=/[\u0000-\u001f\u007f]/u;
function validName(value:string):boolean{
 return value.length>0&&value.length<=160&&!control.test(value);
}

/** Read only from the existing verified character_media catalogue and active
 * approved Masana revisions. Returns expiring private URLs, never S3 object
 * keys, untrusted external URLs or permanent public image links. */
export function createApprovedMasanaMediaPort(
  pool:Pick<Pool,"query">,
  configuration?:StatusMediaConfiguration,
){
 const origins=new Set(configuration?.approvedDownloadOrigins??[]);
 const allowed=async (objectKey:string):Promise<boolean>=>{
   if(!configuration||origins.size===0)return false;
   const meta=await configuration.objects.statObject(objectKey);
   return meta!==null && validImage.test(meta.contentType) &&
     Number.isSafeInteger(meta.bytes) && meta.bytes>0 && meta.bytes<=10*1024*1024;
 };
 const approved=async(input:ImageMedia):Promise<string|null>=>{
   if(!Object.values(input).every(v=>validName(v)))return null;
   const field=input.kind==="portrait"?"portraitMediaId":"bannerMediaId";
   const result=await pool.query(`
     SELECT m.object_key FROM masana.character_media m
       JOIN masana.character_revisions r
         ON r.tenant_id=m.tenant_id AND r.character_id=m.character_id
       JOIN identity.characters c
         ON c.tenant_id=m.tenant_id AND c.character_id=m.character_id
       JOIN identity.character_ownership o
         ON o.tenant_id=m.tenant_id AND o.character_id=m.character_id
       LEFT JOIN creator.agents ca
         ON ca.tenant_id=m.tenant_id AND ca.character_id=m.character_id
          AND ca.owner_user_id=o.owner_user_id
       LEFT JOIN identity.users u
         ON u.tenant_id=ca.tenant_id AND u.user_id=ca.owner_user_id
     WHERE m.tenant_id=$1 AND m.character_id=$2 AND m.media_id=$3
       AND m.kind=$4 AND r.state='approved'
       AND r.profile->>$5=m.media_id
       AND c.state='active' AND (o.kind='platform' OR
         (o.kind='creator-agent' AND ca.state='published' AND u.state='active'))
       AND length(btrim(m.rights_note))>4
       AND length(btrim(m.approved_by))>0
       AND length(btrim(m.object_key))>0
     LIMIT 1`,
     [input.tenantId,input.characterId,input.mediaId,input.kind,field]);
   const key=result.rows[0]?.object_key;
   return typeof key==="string"&&key.trim()?key:null;
 };
 return Object.freeze({
   async publicMediaUrl(input:ImageMedia):Promise<string|null>{
     if(!configuration||origins.size===0)return null;
     const objectKey=await approved(input);
     if(!objectKey||!await allowed(objectKey))return null;
     // A concurrent rights revoke or revision replacement invalidates grants.
     if(await approved(input)!==objectKey)return null;
     const grant=await configuration.objects.presignGet(objectKey,120);
     let signed:URL;
     try{signed=new URL(grant.url);}catch{return null;}
     const ttl=Date.parse(grant.expiresAt)-Date.now();
     if(signed.protocol!=="https:"||signed.username||signed.password||
       !origins.has(signed.origin)||!Number.isFinite(ttl)||ttl<=0||ttl>121000)
       return null;
     return grant.url;
   },
   /** Existing catalogue entry only: no client-supplied object key can be
    * introduced through an editorial request. Upload still requires its
    * separate authenticated, rights-checked storage admission path. */
   async verifyMedia(input:{
     tenantId:string;mediaId:string;kind:Kind;staffId:string
   }):Promise<{objectKey:string}>{
     if(!configuration||origins.size===0)throw Object.assign(
       new Error("masana_media_store_unavailable"),{statusCode:503});
     if(!validName(input.tenantId)||!validName(input.mediaId)||
        !validName(input.staffId))throw Object.assign(
       new Error("invalid_media_identity"),{statusCode:422});
     const row=await pool.query(`
       SELECT object_key FROM masana.character_media
       WHERE tenant_id=$1 AND media_id=$2 AND kind=$3
         AND length(btrim(rights_note))>4
         AND length(btrim(approved_by))>0
         AND length(btrim(object_key))>0 LIMIT 1`,
       [input.tenantId,input.mediaId,input.kind]);
     const key=row.rows[0]?.object_key;
     if(typeof key!=="string"||!await allowed(key))throw Object.assign(
       new Error("unverified_masana_media"),{statusCode:403});
     return {objectKey:key};
   },
 });
}
