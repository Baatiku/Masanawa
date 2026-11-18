import sharp from 'sharp';
import type {StatusMediaConfiguration} from './media_runtime.js';

export type ApprovedPublicImage={objectKey:string};
export type PublicImageSource={
 findApprovedImage(postId:string,mediaId:string):Promise<ApprovedPublicImage|null>;
};

const MAX_INPUT=5*1024*1024;
const MAX_OUTPUT=1024*1024;
const allowedTypes=new Set(['image/jpeg','image/png','image/webp']);
const allowedFormats=new Set(['jpeg','png','webp']);

/**
 * Public thumbnails use reviewed canonical private media, never a browser-
 * visible S3 grant. A fresh read/approval check precedes AND follows the
 * bounded upstream fetch, so moderation or deletion cannot revive a source.
 * All metadata, animation, EXIF and location information are discarded.
 */
export function createApprovedPublicImageReader(
 source:PublicImageSource, configuration:StatusMediaConfiguration,
 fetchImpl:typeof fetch=fetch,
){
 const origins=new Set(configuration.approvedDownloadOrigins);
 for(const origin of origins){
  const u=new URL(origin);
  if(u.protocol!=='https:'||u.origin!==origin||u.username||u.password)
   throw new TypeError('public_image_https_origin_required');
 }
 return async(postId:string,mediaId:string):Promise<{bytes:Buffer;contentType:'image/webp'}|null>=>{
  const ref=await source.findApprovedImage(postId,mediaId);
  if(!ref||!origins.size)return null;
  const stat=await configuration.objects.statObject(ref.objectKey);
  if(!stat||!allowedTypes.has(stat.contentType)||!Number.isSafeInteger(stat.bytes)||
    stat.bytes<1||stat.bytes>MAX_INPUT)return null;
  const grant=await configuration.objects.presignGet(ref.objectKey,60);
  let url:URL;
  try{url=new URL(grant.url);}catch{return null;}
  const remaining=Date.parse(grant.expiresAt)-Date.now();
  if(url.protocol!=='https:'||!origins.has(url.origin)||url.username||url.password||
    url.hash||!Number.isFinite(remaining)||remaining<=0||remaining>61000)return null;
  let fetched:Response;
  try{fetched=await fetchImpl(url.toString(),{redirect:'error',
    signal:AbortSignal.timeout(10000)});}catch{return null;}
  if(!fetched.ok||!allowedTypes.has(fetched.headers.get('content-type')??'')||
    !fetched.body)return null;
  const length=fetched.headers.get('content-length');
  if(length!==null&&(!/^\d+$/.test(length)||Number(length)>MAX_INPUT))return null;
  const chunks:Buffer[]=[];let total=0;
  const reader=fetched.body.getReader();
  try{
   for(;;){
    const {done,value}=await reader.read();
    if(done)break;
    total+=value.byteLength;
    if(total>MAX_INPUT){await reader.cancel();return null;}
    chunks.push(Buffer.from(value));
   }
  }catch{return null;}
  if(total<1)return null;
  let output:Buffer;
  try{
   const decoder=sharp(Buffer.concat(chunks),{
    animated:false,failOn:'error',limitInputPixels:20_000_000,
   });
   const meta=await decoder.metadata();
   if(!meta.format||!allowedFormats.has(meta.format)||(meta.pages??1)!==1||
     !meta.width||!meta.height||meta.width>6000||meta.height>6000)return null;
   output=await decoder.rotate().resize(1200,1200,{
    fit:'inside',withoutEnlargement:true,
   }).flatten({background:'#ffffff'}).toColourspace('srgb')
    .webp({quality:76,effort:4}).toBuffer();
  }catch{return null;}
  if(!output.length||output.length>MAX_OUTPUT)return null;
  const current=await source.findApprovedImage(postId,mediaId);
  if(!current||current.objectKey!==ref.objectKey)return null;
  return {bytes:output,contentType:'image/webp'};
 };
}
