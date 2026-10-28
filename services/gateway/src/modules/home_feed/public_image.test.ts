import sharp from 'sharp';
import {describe,expect,it,vi} from 'vitest';
import {createApprovedPublicImageReader} from './public_image.js';
import type {StatusMediaConfiguration} from './media_runtime.js';

const postId='27c63eb3-0f5e-4849-8670-2eb62c8406bf';
const mediaId='public_verified_media';
const objectKey='private/approved/portrait.png';

describe('Status crawler images remain reviewed, bounded and anonymous',()=>{
 const make=async()=>{
  const png=await sharp({create:{width:80,height:60,channels:4,
   background:{r:30,g:100,b:70,alpha:1}}}).png().withMetadata({
    exif:{IFD0:{Copyright:'Internal-only metadata'}},
   }).toBuffer();
  const source={findApprovedImage:vi.fn(async()=>({objectKey}))};
  const objects={
   statObject:vi.fn(async()=>({contentType:'image/png',bytes:png.length})),
   presignGet:vi.fn(async()=>({url:'https://canonical-objects.example.test/signed/portrait',
    expiresAt:new Date(Date.now()+59_000).toISOString()})),
  };
  const config={objects,approvedDownloadOrigins:['https://canonical-objects.example.test']} as
   unknown as StatusMediaConfiguration;
  const fetcher=vi.fn(async()=>new Response(new Uint8Array(png),{
   headers:{'content-type':'image/png','content-length':String(png.length)},
  })) as unknown as typeof fetch;
  return {png,source,objects,config,fetcher};
 };

 it('uses the private object only server-side and emits a stripped WebP after reapproval',async()=>{
  const {source,objects,config,fetcher}=await make();
  const read=createApprovedPublicImageReader(source,config,fetcher);
  const result=await read(postId,mediaId);
  expect(result?.contentType).toBe('image/webp');
  expect((await sharp(result!.bytes).metadata())).toMatchObject({
   format:'webp',width:80,height:60,
  });
  expect((await sharp(result!.bytes).metadata()).exif).toBeUndefined();
  expect(objects.presignGet).toHaveBeenCalledWith(objectKey,60);
  expect(source.findApprovedImage).toHaveBeenCalledTimes(2);
  expect(fetcher).toHaveBeenCalledWith(
   'https://canonical-objects.example.test/signed/portrait',
   expect.objectContaining({redirect:'error'}));
  expect(result!.bytes.toString('utf8')).not.toContain('Internal-only metadata');
 });

 it('does not fetch from an unapproved origin or an expired grant',async()=>{
  const {source,objects,config,fetcher}=await make();
  objects.presignGet.mockResolvedValueOnce({
   url:'https://attacker.example.test/private',expiresAt:new Date(Date.now()+59_000).toISOString(),
  });
  expect(await createApprovedPublicImageReader(source,config,fetcher)(postId,mediaId)).toBeNull();
  objects.presignGet.mockResolvedValueOnce({
   url:'https://canonical-objects.example.test/private',
   expiresAt:new Date(Date.now()-5_000).toISOString(),
  });
  expect(await createApprovedPublicImageReader(source,config,fetcher)(postId,mediaId)).toBeNull();
  expect(fetcher).not.toHaveBeenCalled();
 });

 it('rejects oversize headers and bounded streamed bytes',async()=>{
  const {source,config}=await make();
  const tooLarge=vi.fn(async()=>new Response('x',{
   headers:{'content-type':'image/png','content-length':String(6*1024*1024)},
  })) as unknown as typeof fetch;
  expect(await createApprovedPublicImageReader(source,config,tooLarge)(postId,mediaId)).toBeNull();
  const chunks=new ReadableStream({start(controller){
   controller.enqueue(new Uint8Array(3*1024*1024));
   controller.enqueue(new Uint8Array(3*1024*1024));controller.close();
  }});
  const stream=vi.fn(async()=>new Response(chunks,{headers:{'content-type':'image/png'}})) as
   unknown as typeof fetch;
  expect(await createApprovedPublicImageReader(source,config,stream)(postId,mediaId)).toBeNull();
 });

 it('rejects untrusted formats and images revoked during a fetch',async()=>{
  const {source,objects,config,fetcher}=await make();
  objects.statObject.mockResolvedValueOnce({contentType:'image/svg+xml',bytes:100});
  expect(await createApprovedPublicImageReader(source,config,fetcher)(postId,mediaId)).toBeNull();
  expect(fetcher).not.toHaveBeenCalled();
  source.findApprovedImage.mockResolvedValueOnce({objectKey})
   .mockResolvedValueOnce(null as never);
  expect(await createApprovedPublicImageReader(source,config,fetcher)(postId,mediaId)).toBeNull();
 });
});
