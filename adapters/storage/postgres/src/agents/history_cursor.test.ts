import {describe,expect,it} from "vitest";
import {createCanonicalId} from "@masanawa/contracts";
import {encodeMobileHistoryCursor,decodeMobileHistoryCursor} from "./history_cursor.js";
describe("keyset Masana history cursor",()=>{
  it("roundtrips timestamp and exact request tie-break safely",()=>{
    const id=createCanonicalId("request");
    const cursor=encodeMobileHistoryCursor("2026-10-19T12:00:00.000Z",id);
    expect(decodeMobileHistoryCursor(cursor)).toEqual({at:"2026-10-19T12:00:00.000Z",requestId:id});
    expect(decodeMobileHistoryCursor("2026-10-19T12:00:00.000Z")).toEqual({at:"2026-10-19T12:00:00.000Z",requestId:null});
  });
  it("rejects forged, malformed, too long, or wrong-kind cursors",()=>{
    expect(()=>decodeMobileHistoryCursor("v1.abc!")).toThrow();
    expect(()=>decodeMobileHistoryCursor("a".repeat(350))).toThrow();
    expect(()=>decodeMobileHistoryCursor("v1."+Buffer.from(JSON.stringify(["2026-10-19T12:00:00.000Z",createCanonicalId("user")])).toString("base64url"))).toThrow();
  });
});
