import test from "node:test";
import assert from "node:assert/strict";
import {readHistory,readProfile,validCharacterId,validRequestId,validSessionId} from "../src/lib/masana.ts";
const uuid="0199f0d0-0000-7000-8000-000000000003";
test("only canonical typed identifiers are accepted",()=>{
  assert.equal(validCharacterId("character_"+uuid),true);
  assert.equal(validSessionId("character-session_"+uuid),true);
  assert.equal(validRequestId("request_"+uuid),true);
  for(const attempt of ["../../../wallet","http://example.com","character_"+uuid+"/turn","other_"+uuid,"character_abc"])
    assert.equal(validCharacterId(attempt),false);
});
test("directory records use canonical profile semantics",()=>{
  const p=readProfile({characterId:"character_"+uuid,displayName:"Gwani",roleLabel:"Learning guide",
    about:"Questions and conversation",greeting:"Hello",presence:"unknown",
    conversationStarters:["What can I learn?","Explore the world"],creatorName:"Masanawa"});
  assert.ok(p);assert.equal(p.displayName,"Gwani");assert.equal(p.presence,"unknown");
  assert.equal(p.roleLabel,"Learning guide");assert.equal(p.conversationStarters.length,2);
});
test("invalid identity and unsafe portrait never reach profile UI",()=>{
  assert.equal(readProfile({characterId:"not-canonical"}),null);
  const p=readProfile({characterId:"character_"+uuid,avatarUrl:"javascript:alert(1)"});
  assert.ok(p);assert.equal(p.avatarUrl,null);
  const local=readProfile({characterId:"character_"+uuid,avatarUrl:"http://private.internal/portrait"});
  assert.equal(local?.avatarUrl,null);
});
test("history keeps direction and text without inventing messages",()=>{
  assert.equal(readHistory({messages:[{key:"one",direction:"user",text:"Hello",createdAt:"2026-01-01T12:00:00Z"},
    {key:"two",direction:"assistant",text:"Hi!",createdAt:"2026-01-01T12:00:01Z"},
    {key:"bad",direction:"system",text:"hidden"}]})?.length,2);
  assert.deepEqual(readHistory({messages:[]}),[]);
  assert.equal(readHistory({messages:"not-a-list"}),null);
});
