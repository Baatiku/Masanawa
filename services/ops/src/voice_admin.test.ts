import {describe,it,expect,vi} from 'vitest';
import {createVoiceAdmin} from './voice_admin.js';
import type {Pool} from '@masanawa/postgres';
const actor={tenantId:'tenant_test',actorId:'user_admin',name:'Admin',capabilities:['agents.presentation.write']};
function fixture(){const query=vi.fn(async(_sql:string,_values:unknown[])=>({rows:[] as Record<string,unknown>[]}));const provider=vi.fn<typeof fetch>();const authorize=vi.fn(async()=>actor);return {query,provider,authorize,service:createVoiceAdmin({pool:{query} as unknown as Pick<Pool,'query'>,authorize,apiKey:'private-key',fetch:provider})};}
describe('real voice administration boundary',()=>{
 it('denies reads and writes before database or Google access',async()=>{const f=fixture();f.authorize.mockRejectedValue(new Error('denied'));await expect(f.service.list(undefined,'character_test')).rejects.toThrow('denied');await expect(f.service.assign(undefined,{characterId:'character_test',requestId:'request_123456789',expectedRevision:0})).rejects.toThrow('denied');expect(f.query).not.toHaveBeenCalled();expect(f.provider).not.toHaveBeenCalled();});
 it('lists only tenant and persona scoped metadata, never raw consent',async()=>{const f=fixture();const r=await f.service.list('Bearer token','character_test');expect(r).toMatchObject({items:[],assignment:null,customLiveCalls:false});for(const [,args] of f.query.mock.calls)expect(args).toEqual(['tenant_test','character_test']);expect(f.query.mock.calls.every(([sql])=>!sql.includes('source_audio'))).toBe(true);});
 it('rejects malformed enrollment before persistence or provider dispatch',async()=>{const f=fixture();await expect(f.service.enroll('Bearer token',{characterId:'character_test',requestId:'request_123456789',displayName:'Voice',sample:'AAAA',consent:'AAAA',adultSpeakerConfirmed:true})).rejects.toMatchObject({statusCode:422});expect(f.provider).not.toHaveBeenCalled();expect(f.query).not.toHaveBeenCalled();});
 it('cannot assign another tenant or unverified enrollment',async()=>{const f=fixture();await expect(f.service.assign('Bearer token',{characterId:'character_test',requestId:'request_123456789',expectedRevision:0})).rejects.toMatchObject({statusCode:409});expect(f.query.mock.calls[0]?.[1]).toEqual(['tenant_test','character_test','request_123456789','user_admin',0]);expect(f.query.mock.calls.every(([sql])=>sql.includes("state='ready'"))).toBe(true);});
 it('never auditions an unverified voice or forwards a caller voice identifier',async()=>{const f=fixture();await expect(f.service.audition('Bearer token',{characterId:'character_test',requestId:'request_123456789'})).rejects.toMatchObject({statusCode:404});expect(f.provider).not.toHaveBeenCalled();});
 it('recovers an uncertain enrollment by its exact provider marker without creating another voice',async()=>{
  const f=fixture();f.query.mockResolvedValueOnce({rows:[{request_id:'request_123456789',provider_display_name:'Masanawa-original'}]}).mockResolvedValueOnce({rows:[]}).mockResolvedValueOnce({rows:[{revision:'1'}]}).mockResolvedValueOnce({rows:[]}).mockResolvedValueOnce({rows:[{requestId:'request_123456789',state:'ready'}]});
  f.provider.mockResolvedValue(new Response(JSON.stringify({voices:[{id:'voice_recovered',type:'replicated',display_name:'Masanawa-original'}]}),{status:200}));
  expect(await f.service.list('Bearer token','character_test')).toMatchObject({items:[{state:'ready'}]});expect(f.provider).toHaveBeenCalledOnce();expect(f.provider.mock.calls[0]?.[0]).toContain('?type=replicated');expect(f.query.mock.calls[1]?.[1]).toEqual(['tenant_test','character_test','request_123456789','voice_recovered','Masanawa-original','user_admin']);
  expect(f.query.mock.calls[2]?.[0]).toContain('admin_voice_assignments');expect(f.query.mock.calls[2]?.[1]).toEqual(['tenant_test','character_test','request_123456789','user_admin']);
 });
 it('retains an uncertain deletion for an idempotent retry, then accepts provider 404',async()=>{
  const f=fixture();const p={characterId:'character_test',requestId:'request_123456789',confirmed:true};
  f.query.mockResolvedValueOnce({rows:[{state:'ready',voice_id:'voice_original'}]});f.provider.mockRejectedValueOnce(Error('network unavailable'));
  expect(await f.service.revoke('Bearer token',p)).toEqual({state:'revoking'});expect(f.query.mock.calls.some(([sql])=>sql.includes("state='revoked'"))).toBe(false);
  f.query.mockResolvedValueOnce({rows:[{state:'revoking',voice_id:'voice_original'}]});f.provider.mockResolvedValueOnce(new Response(null,{status:404}));expect(await f.service.revoke('Bearer token',p)).toEqual({state:'revoked'});expect(f.provider.mock.calls.every(([url,init])=>String(url).endsWith('/voice_original')&&init?.method==='DELETE')).toBe(true);
 });
 it('restores the default voice only at the current assignment revision',async()=>{const f=fixture();f.query.mockResolvedValueOnce({rows:[{revision:'3'}]});expect(await f.service.unassign('Bearer token',{characterId:'character_test',expectedRevision:2})).toEqual({revision:'3'});expect(f.query.mock.calls[0]?.[1]).toEqual(['tenant_test','character_test','user_admin',2]);await expect(f.service.unassign('Bearer token',{characterId:'character_test',expectedRevision:2})).rejects.toMatchObject({statusCode:409});});
 it('auto-assigns newly verified voice without replacing a manually active selection',async()=>{
  const wav=(seconds:number)=>{const b=Buffer.alloc(44+seconds*48000);b.write('RIFF');b.writeUInt32LE(b.length-8,4);b.write('WAVEfmt ',8);b.writeUInt32LE(16,16);b.writeUInt16LE(1,20);b.writeUInt16LE(1,22);b.writeUInt32LE(24000,24);b.writeUInt32LE(48000,28);b.writeUInt16LE(2,32);b.writeUInt16LE(16,34);b.write('data',36);b.writeUInt32LE(b.length-44,40);return b.toString('base64');};
  const f=fixture();let active=false;
  f.query.mockImplementation(async(sql:string)=>({rows:sql.includes('SELECT 1 FROM agents.agent_presentations')?[{exists:1}]:sql.includes('INSERT INTO agents.admin_voice_enrollments')?[{request_id:'request_123456789'}]:sql.includes('SELECT state,voice_id AS "voiceId"')?[{state:'ready',voiceId:'voice_test'}]:sql.includes('INSERT INTO agents.admin_voice_assignments')?(active?[]:[{revision:'1'}]):[]}));
  f.provider.mockResolvedValue(new Response(JSON.stringify({id:'voice_test'}),{status:200}));
  const command={characterId:'character_test',requestId:'request_123456789',displayName:'Authorized speaker',sample:wav(10),consent:wav(1),adultSpeakerConfirmed:true};
  expect(await f.service.enroll('Bearer token',command)).toMatchObject({state:'ready',autoAssigned:true,voiceId:'voice_test'});
  const call=f.query.mock.calls.find(([sql])=>sql.includes('INSERT INTO agents.admin_voice_assignments'));
  expect(call?.[0]).toContain('WHERE agents.admin_voice_assignments.active=false');expect(call?.[1]).toEqual(['tenant_test','character_test','request_123456789','user_admin']);
  active=true;
  const another=await f.service.enroll('Bearer token',{...command,requestId:'request_123456790'});
  expect(another).toMatchObject({state:'ready',autoAssigned:false});
  expect(f.provider).toHaveBeenCalledTimes(2);
 });
 it('plays the documented Google output_audio preview without exposing any sample recording',async()=>{
  const f=fixture();f.query.mockResolvedValueOnce({rows:[{voice_id:'voice_verified'}]});
  f.provider.mockResolvedValue(new Response(JSON.stringify({output_audio:{data:'UklGRg==',mime_type:'audio/wav'}}),{status:200}));
  expect(await f.service.audition('Bearer token',{characterId:'character_test',requestId:'request_123456789'})).toEqual({data:'UklGRg==',mimeType:'audio/wav'});
 });
});
