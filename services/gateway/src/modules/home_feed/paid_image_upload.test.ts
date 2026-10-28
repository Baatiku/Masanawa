import {describe,expect,it,vi} from 'vitest';
import sharp from 'sharp';
import {createHash} from 'node:crypto';
import {createPaidPromotionImageUploader,sanitizePaidPromotionImage} from './paid_image_upload.js';

describe('SPE-A07 paid uploaded image privacy',()=>{
 it('normalizes PNG to small static sRGB WebP without metadata or original media bytes',async()=>{
  const source=await sharp({create:{width:25,height:15,channels:4,
   background:{r:40,g:100,b:150,alpha:0.3}}}).png().toBuffer();
  const output=await sanitizePaidPromotionImage(source.toString('base64'));
  const meta=await sharp(output.bytes).metadata();
  expect(meta.format).toBe('webp');
  expect(meta.pages??1).toBe(1);
  expect(meta.exif).toBeUndefined();
  expect(output.bytes.equals(source)).toBe(false);
  expect(output.sha256).toMatch(/^[0-9a-f]{64}$/);
  expect(output.bytes.length).toBeLessThan(1048576);
 });
 it('never accepts deceptive/animated/unbounded images or forged base64',async()=>{
  await expect(sanitizePaidPromotionImage('not a base64 URI')).rejects.toMatchObject({code:'invalid_paid_image'});
  await expect(sanitizePaidPromotionImage(Buffer.from('<svg xmlns="http://www.w3.org/2000/svg"/>').toString('base64')))
   .rejects.toMatchObject({code:'unsupported_paid_image'});
  await expect(sanitizePaidPromotionImage('a'.repeat(8*1024*1024)))
   .rejects.toMatchObject({code:'invalid_paid_image'});
 });
 it('uses server-only object keys and verifies storage before recording a ready upload',async()=>{
  const img=(await sharp({create:{width:8,height:8,channels:3,background:'#123456'}})
   .png().toBuffer()).toString('base64');
  const normalized=await sanitizePaidPromotionImage(img);
  const key='status-paid/tenantdigest/opaque.webp';
  const prepareImageUpload=vi.fn(async()=>({mediaId:'media-uuid-private',objectKey:key,ready:false}));
  const completeImageUpload=vi.fn(async()=>({mediaId:'media-uuid-private',state:'ready'}));
  const putObject=vi.fn(async()=>({sha256:normalized.sha256,bytes:normalized.bytes.length}));
  const statObject=vi.fn(async()=>({contentType:'image/webp',bytes:normalized.bytes.length}));
  const upload=createPaidPromotionImageUploader({prepareImageUpload,completeImageUpload},
   {putObject,statObject});
  const result=await upload({tenantId:'tenant',ownerId:'owner',imageBase64:img,
   altText:'Approved event scene illustration',rightsConfirmed:true,
   idempotencyKey:'image-upload-original-001'});
  expect(result).toMatchObject({mediaId:'media-uuid-private',state:'ready'});
  expect(JSON.stringify(result)).not.toContain(key);
  expect(putObject).toHaveBeenCalledWith(key,expect.any(Buffer),'image/webp');
  expect(completeImageUpload).toHaveBeenCalledWith('tenant','owner','media-uuid-private',
   normalized.sha256,normalized.bytes.length);
  expect(prepareImageUpload).toHaveBeenCalledWith('tenant','owner',
   expect.objectContaining({rightsConfirmed:true,sha256:normalized.sha256}));
 });
});
