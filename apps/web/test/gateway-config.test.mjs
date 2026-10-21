import test from "node:test";
import assert from "node:assert/strict";
import {resolveGatewayOrigin, MASANAWA_GATEWAY_DEFAULT_ORIGIN} from "../src/lib/gateway-origin.ts";

test("unconfigured web worker uses the existing mobile Railway Gateway", () => {
  assert.equal(resolveGatewayOrigin(undefined,true),MASANAWA_GATEWAY_DEFAULT_ORIGIN);
  assert.equal(resolveGatewayOrigin("  ",true),MASANAWA_GATEWAY_DEFAULT_ORIGIN);
});
test("explicit HTTPS Gateway runtime origin overrides safe default", () => {
  assert.equal(resolveGatewayOrigin("https://gateway.masanawa.example/",true),"https://gateway.masanawa.example");
});
test("rejects credential, path, query, fragment and insecure Gateway origins", () => {
  for(const value of ["http://gateway.example","https://person:pass@gateway.example",
    "https://gateway.example/proxy","https://gateway.example?x=1",
    "https://gateway.example#frag","not a url","javascript:alert(1)"])
    assert.equal(resolveGatewayOrigin(value,true),null,value);
});
test("local HTTP fixture requires non-production mode",()=>{
  assert.equal(resolveGatewayOrigin("http://127.0.0.1:3011",false),"http://127.0.0.1:3011");
  assert.equal(resolveGatewayOrigin("http://127.0.0.1:3011",true),null);
});
