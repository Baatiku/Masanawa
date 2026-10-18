import { createHash,generateKeyPairSync,sign } from "node:crypto";
import { describe,expect,it } from "vitest";
import type { Pool } from "@masanawa/postgres";
import {
  createMsnwIssuanceAdmission,msnwAdmissionMessage,
} from "./issuance_admission.js";

const reserveKeys=generateKeyPairSync("ed25519");
const mintKeys=generateKeyPairSync("ed25519");
const publicDer=(key:typeof reserveKeys.publicKey)=>
  key.export({type:"spki",format:"der"}).toString("base64");
const terms = {
  reference:"PSK-1234",
  amountMicro:"5000000",
  rateKoboPerMsnw:"10000",
  chainId:"8453",
  contract:"0x"+"a".repeat(40),
  reserveProofSha256:"b".repeat(64),
  settlementId:"222",
  quoteExpiresAt:"2026-10-20T08:00:00.000Z",
} as const;
function signed(stage:"backing_qualified"|"mint_authorized"|"chain_submitted",
  change:Record<string,string>={}) {
  const value={stage,...terms,...(stage==="chain_submitted"
    ?{txHash:"0x"+"c".repeat(64)}:{}),...change};
  const signature=sign(null,msnwAdmissionMessage(value),
    stage==="backing_qualified"?reserveKeys.privateKey:mintKeys.privateKey)
    .toString("base64");
  return {...value,signature};
}
function setup() {
  const events=new Map<string,Record<string,string>>();
  const signatures=new Map<string,Record<string,string>>();
  const statements:string[]=[];
  const query=async(sql:string,args:unknown[]=[])=>{
    statements.push(sql);
    if(sql.startsWith("SELECT o.reference,o.tenant_id")) {
      return {rowCount:1,rows:[{
        reference:terms.reference,tenant_id:"tenant-A",user_id:"user-A",
        amount_kobo:"50000",provider_evidence_sha256:"e".repeat(64),
        settlement_id:"222",original_amount_kobo:"50000",
        effective_paid_kobo:"48000",
      }]};
    }
    if(sql.startsWith("SELECT reserve_proof_sha256,quote_sha256")) {
      const row=events.get(String(args[1]));
      return {rowCount:row?1:0,rows:row?[row]:[]};
    }
    if(sql.startsWith("SELECT stage FROM commerce.msnw_settlement_events"))
      return {rowCount:0,rows:[]};
    if(sql.startsWith("SELECT reference FROM commerce.msnw_settlement_events"))
      return {rowCount:0,rows:[]};
    if(sql.startsWith("SELECT event_sha256 FROM commerce.msnw_settlement_events")) {
      const row=events.get(String(args[1]));
      return {rowCount:row?1:0,rows:row?[row]:[]};
    }
    if(sql.startsWith("SELECT signed_payload_sha256,detached_signature_base64")) {
      const row=signatures.get(String(args[0]));
      return {rowCount:row?1:0,rows:row?[row]:[]};
    }
    if(sql.startsWith("INSERT INTO commerce.msnw_settlement_events")) {
      const [event_sha256,reference,stage,reserve_proof_sha256,quote_sha256,
        amount_micro,chain_id,contract_address]=args as string[];
      events.set(stage,{event_sha256,reference,stage,reserve_proof_sha256,
        quote_sha256,amount_micro,chain_id,contract_address});
      return {rowCount:1,rows:[{reference}]};
    }
    if(sql.startsWith("INSERT INTO commerce.msnw_signed_admissions")) {
      const [event_sha256,,stage,signed_payload_sha256,,
        detached_signature_base64]=args as string[];
      signatures.set(event_sha256,{signed_payload_sha256,detached_signature_base64});
      return {rowCount:1,rows:[{event_sha256}]};
    }
    return {rowCount:0,rows:[]};
  };
  const db={query,release(){}};
  const pool={async connect(){return db;}} as unknown as Pool;
  const runtime=createMsnwIssuanceAdmission({
    pool,chainId:terms.chainId,contract:terms.contract,
    rateKoboPerMsnw:terms.rateKoboPerMsnw,
    reserveApproverPublicKey:publicDer(reserveKeys.publicKey),
    mintApproverPublicKey:publicDer(mintKeys.publicKey),
    now:()=>new Date("2026-10-18T10:00:00.000Z"),
  });
  return {runtime,events,signatures,statements};
}
describe("MSNW cryptographically authorized and journaled issuance admission",()=>{
  it("admits bank reserve, distinct mint authorization and chain TX exactly once",async()=>{
    const fixture=setup();
    const back=signed("backing_qualified");
    expect(await fixture.runtime.admit(back)).toMatchObject({
      stage:"backing_qualified",state:"recorded",
    });
    expect(await fixture.runtime.admit(signed("mint_authorized")))
      .toMatchObject({stage:"mint_authorized",state:"recorded"});
    expect(await fixture.runtime.admit(signed("chain_submitted")))
      .toMatchObject({stage:"chain_submitted",state:"recorded"});
    expect(await fixture.runtime.admit(signed("chain_submitted")))
      .toMatchObject({stage:"chain_submitted",state:"already_recorded"});
    expect(fixture.events.size).toBe(3);
    expect(fixture.signatures.size).toBe(3);
    expect(fixture.statements.some(q=>q.includes("UPDATE commerce.msnw_custody_accounts")))
      .toBe(false);
  });
  it("rejects an unsigned, tampered or out-of-sequence mint",async()=>{
    const f=setup();
    await expect(f.runtime.admit({...signed("backing_qualified"),
      amountMicro:"9000000"})).rejects.toMatchObject({
      code:"msnw.admission.signature_invalid",
    });
    await expect(f.runtime.admit(signed("mint_authorized")))
      .rejects.toMatchObject({code:"msnw.admission.previous_stage_mismatch"});
    await expect(f.runtime.admit(signed("backing_qualified",{
      reserveProofSha256:"bad",
    }))).rejects.toMatchObject({code:"msnw.admission.invalid"});
    expect(f.events.size).toBe(0);
  });
  it("requires distinct signing authorities and rejects expired executable quotes",async()=>{
    expect(()=>createMsnwIssuanceAdmission({
      pool:{} as Pool,chainId:terms.chainId,contract:terms.contract,
      rateKoboPerMsnw:terms.rateKoboPerMsnw,
      reserveApproverPublicKey:publicDer(reserveKeys.publicKey),
      mintApproverPublicKey:publicDer(reserveKeys.publicKey),
    })).toThrow("msnw.admission.configuration_invalid");
    const f=setup();
    const expired=signed("backing_qualified",{
      quoteExpiresAt:"2026-10-17T00:00:00Z",
    });
    await expect(f.runtime.admit(expired)).rejects.toMatchObject({
      code:"msnw.admission.quote_expired",
    });
    expect(f.statements).toHaveLength(0);
  });
});
