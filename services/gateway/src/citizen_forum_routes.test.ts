import {describe,it,expect} from 'vitest';
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
