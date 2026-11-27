import {describe,it,expect} from 'vitest';
import {forumTopicFee} from '@masanawa/postgres';
import {validateForumMedia} from './forum_media.js';
import {validForumTopic,FORUM_ROOMS,normalizeForumText,forumChannelId} from './citizen_forum_routes.js';
describe('Citizen Forum topic admission',()=>{
 const valid={id:'12345678-1234-1234-1234-123456789012',room:'cac',title:'Business registration delays',body:'Applicants are asking how to check their registration status.',kind:'question',jurisdiction:'National'};
 it('accepts a structured topic inside a permanent room',()=>expect(validForumTopic(valid)).toBe(true));
 it('rejects unknown rooms, empty topics, injected principals and arbitrary topic kinds',()=>{for(const bad of [{...valid,room:'unlisted'},{...valid,title:' '},{...valid,userId:'victim'},{...valid,kind:'other'},{...valid,id:'invalid'}])expect(validForumTopic(bad)).toBe(false)});
 it('normalizes whitespace without changing literal backslashes',()=>{
  expect(normalizeForumText('  Business\t registration\n delays  ')).toBe('Business registration delays');
  expect(normalizeForumText(String.raw`Help with C:\software registration`)).toBe(String.raw`Help with C:\software registration`);
 });
 it('reserves a distinct deterministic general channel for every room',()=>{
  const ids=FORUM_ROOMS.map(r=>forumChannelId(r.id));expect(new Set(ids).size).toBe(FORUM_ROOMS.length);expect(forumChannelId('cac')).toBe(forumChannelId('cac'));expect(validForumTopic({...valid,id:forumChannelId('cac')})).toBe(false);expect(validForumTopic({...valid,id:forumChannelId('cac').toUpperCase()})).toBe(false);
 });
 it('has distinct room identities',()=>expect(new Set(FORUM_ROOMS.map(r=>r.id)).size).toBe(FORUM_ROOMS.length));
});

describe('Forum fee and media admission',()=>{
 it('quotes exact integer kobo and rejects incomplete or client-manipulated quote shapes',()=>{const input={id:'12345678-1234-1234-1234-123456789012',room:'cac',title:'Business registration delays',body:'Applicants are asking how to check their registration status.',kind:'complaint',jurisdiction:'National'};expect(validForumTopic({...input,feeKobo:10000,feeRevision:1})).toBe(true);expect(validForumTopic({...input,feeKobo:10000})).toBe(false);expect(validForumTopic({...input,feeKobo:-1,feeRevision:1})).toBe(false);expect(validForumTopic({...input,feeKobo:2.5,feeRevision:1})).toBe(false)});
 it('waives disabled fees, rights rooms and configured question types',()=>{const policy={enabled:true,feeKobo:10000,freeRooms:['rights','police'],freeKinds:['question'],revision:1};expect(forumTopicFee(policy,'cac','complaint')).toBe(10000);expect(forumTopicFee(policy,'rights','complaint')).toBe(0);expect(forumTopicFee(policy,'cac','question')).toBe(0);expect(forumTopicFee({...policy,enabled:false},'cac','complaint')).toBe(0)});
 it('rejects unsafe types, oversized payloads and false signatures',()=>{for(const media of [{mimeType:'text/html',dataBase64:Buffer.from('<html>test</html>').toString('base64')},{mimeType:'image/png',dataBase64:Buffer.from('<html>test</html>').toString('base64')},{mimeType:'image/svg+xml',dataBase64:Buffer.from('<svg>test</svg>').toString('base64')},{mimeType:'image/png',dataBase64:Buffer.alloc(1048577).toString('base64')}])expect(()=>validateForumMedia(media)).toThrow('invalid_media')});
 it('accepts a bounded canonical PNG payload and creates a checksum',()=>{const payload=Buffer.from('89504e470d0a1a0a0000000d','hex');expect(validateForumMedia({mimeType:'image/png',dataBase64:payload.toString('base64')})).toMatchObject({kind:'image',mimeType:'image/png',data:payload})});
});
