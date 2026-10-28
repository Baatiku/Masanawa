import sharp from 'sharp';
import {createHash} from 'node:crypto';

type Registration={
 prepareImageUpload(t:string,owner:string,input:{sha256:string;bytes:number;
  altText:string;idempotencyKey:string;rightsConfirmed:boolean}):
  Promise<{mediaId:string;objectKey:string;ready:boolean}>;
 completeImageUpload(t:string,owner:string,id:string,sha256:string,bytes:number):
  Promise<{mediaId:string;state:string}>;
};
type PrivateStore={
 putObject(objectKey:string,body:Buffer,contentType:string):Promise<{sha256:string;bytes:number}>;
 statObject(objectKey:string):Promise<{contentType:string;bytes:number}|null>;
};
const fail=(code:string)=>{throw Object.assign(new Error(code),{status:422,code});};

/** No original bytes, EXIF, GPS, animation or user-supplied MIME survive.
 * The provider object key is always constructed in the server/ledger layer. */
export async function sanitizePaidPromotionImage(base64:string){
 if(typeof base64!=='string'||base64.length>7*1024*1024||
  !/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/.test(base64))
  fail('invalid_paid_image');
 const raw=Buffer.from(base64,'base64');
 if(raw.length<1||raw.length>5*1024*1024||raw.toString('base64')!==base64)
  fail('paid_image_too_large');
 let bytes:Buffer;
 try{
  const decoder=sharp(raw,{animated:false,failOn:'error',limitInputPixels:20_000_000});
  const meta=await decoder.metadata();
  if(!['jpeg','png','webp'].includes(meta.format??'')||(meta.pages??1)!==1||
   !meta.width||!meta.height||meta.width>6000||meta.height>6000)
   fail('unsupported_paid_image');
  bytes=await decoder.rotate().resize(1200,1200,{fit:'inside',withoutEnlargement:true})
   .flatten({background:'#ffffff'}).toColourspace('srgb')
   .webp({quality:76,effort:4}).toBuffer();
 }catch(e){if((e as {code?:unknown}).code==='unsupported_paid_image')throw e;
  fail('unsupported_paid_image');}
 if(!bytes.length||bytes.length>1024*1024)fail('paid_image_too_large');
 return {bytes,sha256:createHash('sha256').update(bytes).digest('hex'),
  contentType:'image/webp' as const};
}

export function createPaidPromotionImageUploader(port:Registration,objects:PrivateStore){
 return async(input:{tenantId:string;ownerId:string;imageBase64:string;
  altText:string;rightsConfirmed:boolean;idempotencyKey:string})=>{
  if(input.rightsConfirmed!==true||typeof input.altText!=='string'||
   input.altText.trim().length<5||input.altText.trim().length>280)
   fail('paid_image_rights_or_alt_required');
  const normalized=await sanitizePaidPromotionImage(input.imageBase64);
  const reserved=await port.prepareImageUpload(input.tenantId,input.ownerId,{
   sha256:normalized.sha256,bytes:normalized.bytes.length,altText:input.altText.trim(),
   idempotencyKey:input.idempotencyKey,rightsConfirmed:true});
  if(!reserved.ready){
   const result=await objects.putObject(reserved.objectKey,normalized.bytes,normalized.contentType);
   if(result.sha256!==normalized.sha256||result.bytes!==normalized.bytes.length)
    throw Error('paid_image_object_integrity_failed');
   const stat=await objects.statObject(reserved.objectKey);
   if(!stat||stat.contentType!=='image/webp'||stat.bytes!==normalized.bytes.length)
    throw Error('paid_image_object_not_verified');
   await port.completeImageUpload(input.tenantId,input.ownerId,reserved.mediaId,
    normalized.sha256,normalized.bytes.length);
  }
  return {mediaId:reserved.mediaId,state:'ready',contentType:'image/webp',
   bytes:normalized.bytes.length};
 };
}
