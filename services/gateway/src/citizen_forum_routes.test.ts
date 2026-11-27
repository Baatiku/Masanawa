import {describe,it,expect} from 'vitest';
import {validForumTopic,FORUM_ROOMS} from './citizen_forum_routes.js';
describe('Citizen Forum topic admission',()=>{
 const valid={id:'12345678-1234-1234-1234-123456789012',room:'cac',title:'Business registration delays',body:'Applicants are asking how to check their registration status.',kind:'question',jurisdiction:'National'};
 it('accepts a structured topic inside a permanent room',()=>expect(validForumTopic(valid)).toBe(true));
 it('rejects unknown rooms, empty topics, injected principals and arbitrary topic kinds',()=>{for(const bad of [{...valid,room:'unlisted'},{...valid,title:' '},{...valid,userId:'victim'},{...valid,kind:'other'},{...valid,id:'invalid'}])expect(validForumTopic(bad)).toBe(false)});
 it('has distinct room identities',()=>expect(new Set(FORUM_ROOMS.map(r=>r.id)).size).toBe(FORUM_ROOMS.length));
});
