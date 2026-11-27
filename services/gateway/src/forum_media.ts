import {createHash} from 'node:crypto';
export const MAX_FORUM_MEDIA_BYTES=1048576;
export function validateForumMedia(value:unknown){
 if(!value||typeof value!=='object'||Array.isArray(value))throw new RangeError('invalid_media');
 const v=value as Record<string,unknown>;
 if(!Object.keys(v).every(k=>['mimeType','dataBase64'].includes(k))||typeof v.mimeType!=='string'||typeof v.dataBase64!=='string'||v.dataBase64.length>4*Math.ceil(MAX_FORUM_MEDIA_BYTES/3)||v.dataBase64.length%4!==0||!/^[A-Za-z0-9+/]+={0,2}$/.test(v.dataBase64))throw new RangeError('invalid_media');
 const data=Buffer.from(v.dataBase64,'base64');
 if(data.length<12||data.length>MAX_FORUM_MEDIA_BYTES||data.toString('base64')!==v.dataBase64)throw new RangeError('invalid_media');
 const ascii=(start:number,end:number)=>data.subarray(start,end).toString('ascii');
 const hex=(start:number,end:number)=>data.subarray(start,end).toString('hex');
 const mimeType=v.mimeType;
 const valid=mimeType==='image/jpeg'?hex(0,3)==='ffd8ff':mimeType==='image/png'?hex(0,8)==='89504e470d0a1a0a':mimeType==='image/webp'?ascii(0,4)==='RIFF'&&ascii(8,12)==='WEBP':mimeType==='audio/webm'?hex(0,4)==='1a45dfa3':mimeType==='audio/ogg'?ascii(0,4)==='OggS':mimeType==='audio/wav'?ascii(0,4)==='RIFF'&&ascii(8,12)==='WAVE':mimeType==='audio/mp4'?ascii(4,8)==='ftyp':mimeType==='audio/mpeg'?(ascii(0,3)==='ID3'||(data[0]===255&&((data[1]??0)&224)===224)):false;
 if(!valid)throw new RangeError('invalid_media');
 return {kind:mimeType.startsWith('image/')?'image':'audio',mimeType,data,sha256:createHash('sha256').update(data).digest('hex')};
}
