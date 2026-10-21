import test from "node:test";
import assert from "node:assert/strict";
import {readFileSync} from "node:fs";
import {resolve} from "node:path";
const source=readFileSync(resolve("src/lib/paths.ts"),"utf8");
const fn=source.match(/export function safeReturnPath[\s\S]+?\n}\n/)[0].replace("export function safeReturnPath(value: string | null | undefined): string", "function safeReturnPath(value)")+"\nsafeReturnPath";
const safeReturnPath=Function("URL", fn+";return safeReturnPath;")(URL);
test("internal deep links survive",()=>assert.equal(safeReturnPath("/chats?view=unread"),"/chats?view=unread"));
test("untrusted redirects fail closed",()=>{
  for (const x of ["https://evil.example","//evil.example","/\\evil","/api/bridge/masana","/login?next=%2f%2fevil",null])
    assert.equal(safeReturnPath(x),"/chats");
});
test("canonical green parity tracked",()=>{
  const css=readFileSync(resolve("brand/masanawa-tokens.css"),"utf8");
  for(const hex of ["#25D366","#075E54","#00A884","#0B141A","#111B21"])assert.ok(css.includes(hex));
});
