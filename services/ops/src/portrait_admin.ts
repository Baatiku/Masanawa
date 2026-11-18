import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {PersonaAdminError} from './persona_admin.js';
export function checkedPortraitPng(data:string){
 if(typeof data!=='string'||data.length>700000||!/^[A-Za-z0-9+/]*={0,2}$/.test(data))throw new PersonaAdminError(422,'invalid_portrait');
 const bytes=Buffer.from(data,'base64');if(bytes.toString('base64')!==data||bytes.length<100||bytes.length>524288||bytes.subarray(0,8).toString('hex')!=='89504e470d0a1a0a')throw new PersonaAdminError(422,'invalid_portrait');
 let offset=8,ihdr=false,idat=false,ended=false;
 function crc32(buffer:Buffer){let crc=0xffffffff;for(const byte of buffer){crc^=byte;for(let bit=0;bit<8;bit++)crc=(crc>>>1)^((crc&1)?0xedb88320:0);}return (crc^0xffffffff)>>>0;}
 while(offset+12<=bytes.length){const size=bytes.readUInt32BE(offset),start=offset+4,end=offset+8+size;if(end+4>bytes.length)throw new PersonaAdminError(422,'truncated_portrait');const kind=bytes.toString('ascii',start,start+4);if(crc32(bytes.subarray(start,end))!==bytes.readUInt32BE(end))throw new PersonaAdminError(422,'corrupt_portrait');if(!ihdr){if(kind!=='IHDR'||size!==13)throw new PersonaAdminError(422,'invalid_portrait_header');const width=bytes.readUInt32BE(offset+8),height=bytes.readUInt32BE(offset+12);if(width<48||height<48||width>1024||height>1024||bytes[offset+16]!==8||![2,6].includes(bytes[offset+17]!)||bytes[offset+18]!==0||bytes[offset+19]!==0||bytes[offset+20]!==0)throw new PersonaAdminError(422,'invalid_portrait_dimensions');ihdr=true;}else if(kind==='IHDR')throw new PersonaAdminError(422,'duplicate_portrait_header');if(kind==='IDAT')idat=true;offset=end+4;if(kind==='IEND'){if(size!==0||!idat||offset!==bytes.length)throw new PersonaAdminError(422,'invalid_portrait_end');ended=true;break;}}
 if(!ended)throw new PersonaAdminError(422,'incomplete_portrait');return bytes;
}
export function createPortraitAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize'];publicBaseUrl?:string|undefined}){
 return {
  async read(auth:string|undefined,characterId:string){const actor=await input.authorize({authorizationHeader:auth,capability:'agents.presentation.read'});return {portrait:(await input.pool.query(`SELECT credit,source_url AS "sourceUrl",revision::text,updated_at AS "updatedAt" FROM agents.admin_persona_portraits WHERE tenant_id=$1 AND character_id=$2`,[actor.tenantId,characterId])).rows[0]??null};},
  async put(auth:string|undefined,p:{characterId:string;imageBase64:string;credit:string;sourceUrl:string;rightsConfirmed:boolean;expectedRevision:number}){
   const actor=await input.authorize({authorizationHeader:auth,capability:'agents.presentation.write'});
   if(!/^[a-zA-Z0-9_-]{1,128}$/.test(p.characterId)||p.rightsConfirmed!==true||typeof p.credit!=='string'||p.credit.trim().length<3||p.credit.length>200||!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0)throw new PersonaAdminError(422,'invalid_portrait_metadata');
   let source;try{source=new URL(p.sourceUrl||new URL('/v1/personas/'+encodeURIComponent(p.characterId)+'/portrait',input.publicBaseUrl).href);}catch{throw new PersonaAdminError(422,'provide_source_url_or_configure_public_gateway_origin');}if(source.protocol!=='https:'||source.username||source.password||source.search||source.hash||source.port||source.href.length>2048)throw new PersonaAdminError(422,'invalid_portrait_source');
   const bytes=checkedPortraitPng(p.imageBase64);
   const r=await input.pool.query(`INSERT INTO agents.admin_persona_portraits(tenant_id,character_id,image_png,credit,source_url,actor_id) SELECT $1,$2,$3,$4,$5,$6 WHERE $7=0 AND EXISTS(SELECT 1 FROM agents.agent_presentations WHERE tenant_id=$1 AND character_id=$2) ON CONFLICT DO NOTHING RETURNING revision::text`,[actor.tenantId,p.characterId,bytes,p.credit.trim(),source.href,actor.actorId,p.expectedRevision]);
   if(r.rows[0])return r.rows[0];const changed=await input.pool.query(`UPDATE agents.admin_persona_portraits SET image_png=$3,credit=$4,source_url=$5,actor_id=$6,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND character_id=$2 AND revision=$7 RETURNING revision::text`,[actor.tenantId,p.characterId,bytes,p.credit.trim(),source.href,actor.actorId,p.expectedRevision]);if(!changed.rows[0])throw new PersonaAdminError(409,'portrait_changed');return changed.rows[0];
  },
 };
}
