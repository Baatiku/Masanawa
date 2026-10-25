import { afterEach, test } from "node:test";
import assert from "node:assert/strict";
import { createRelay } from "./relay.mjs";
const secret="test-relay-token-abcdefghijklmnopqrstuvwxyz012345";
const headers={"x-masanawa-relay-token":secret,authorization:"Bearer FLWSECK_TEST_0123456789"};
const servers=[];
afterEach(async()=>Promise.all(servers.splice(0).map(s=>new Promise(r=>s.close(r)))));
async function start(fetchImpl) {
  const server=createRelay({token:secret,fetchImpl}); servers.push(server);
  await new Promise(resolve=>server.listen(0,"127.0.0.1",resolve));
  return "http://127.0.0.1:"+server.address().port;
}
test("requires separate relay token and rejects arbitrary paths",async()=>{
  let called=0;
  const base=await start(async()=>{called++;return new Response("{}");});
  assert.equal((await fetch(base+"/v3/billers/BIL001/items")).status,401);
  assert.equal((await fetch(base+"/v3/transfers",{headers})).status,404);
  assert.equal((await fetch(base+"/v3/billers/BIL001/items/AT001/payment",{headers})).status,404);
  assert.equal(called,0);
});
test("forwards provider bearer, not relay secret, to fixed official host",async()=>{
  let saved;
  const base=await start(async(url,init)=>{
    saved={url,init};return new Response(JSON.stringify({status:"success",data:[]}),{status:200});
  });
  const out=await fetch(base+"/v3/billers/BIL001/items",{headers});
  assert.equal(out.status,200);
  assert.equal(saved.url,"https://api.flutterwave.com/v3/billers/BIL001/items");
  assert.equal(saved.init.headers.authorization,headers.authorization);
  assert.equal(saved.init.headers["x-masanawa-relay-token"],undefined);
  assert.equal(saved.init.redirect,"error");
});
test("never retries unknown payment outcome",async()=>{
  let attempts=0;
  const base=await start(async()=>{attempts++;throw new Error("timeout");});
  const out=await fetch(base+"/v3/billers/BIL001/items/AT001/payment",{
    method:"POST",headers:{...headers,"content-type":"application/json"},
    body:JSON.stringify({country:"NG",customer_id:"08012345678",
      amount:"850",reference:"mb_original_ref_0001"}),
  });
  assert.equal(out.status,502);
  assert.equal((await out.json()).error,"upstream_unavailable_reconcile_original_reference");
  assert.equal(attempts,1);
});
test("blocks unauthorised bill payload and unsafe upstream control",async()=>{
  let calls=0;
  const base=await start(async()=>{calls++;return new Response("{}");});
  const result=await fetch(base+"/v3/billers/BIL001/items/AT001/payment",{
    method:"POST",headers:{...headers,"content-type":"application/json"},
    body:JSON.stringify({country:"US",reference:"abcabcabc",amount:"850",customer_id:"0"}),
  });
  assert.equal(result.status,422);
  assert.equal(calls,0);
  assert.throws(()=>createRelay({token:"short"}),/relay_secret_invalid/);
});
