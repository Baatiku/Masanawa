import { describe,expect,it,vi } from "vitest";
import { createP2pEvidenceStorage } from "./evidence_storage.js";
import type { ReplayObjectStore } from "../talk_replay/playback/s3_object_store.js";
import type { P2pService } from "./service.js";

const actor={tenantId:"tenant-A",userId:"buyer-1"};
const orderId="12bb3351-3a68-40e9-89d3-b9fe3b6e5bb1";
const evidenceId="2432556d-8c3e-489a-bde2-620b13d529b6";
const pdf=Buffer.from("%PDF-1.7\nEvidence only\n");
function fixtures() {
  const service={
    assertEvidenceAllowed:vi.fn(async()=>undefined),
    recordEvidence:vi.fn(async()=>({evidenceId,state:"disputed"})),
    evidenceFor:vi.fn(async()=>({objectRef:
      "p2p/safe/"+orderId+"/"+evidenceId,sha256:"1".repeat(64)})),
  } as unknown as P2pService;
  const objects={
    putObject:vi.fn(async (_key:string,bytes:Buffer)=>({
      sha256:await import("node:crypto").then(m=>m.createHash("sha256")
        .update(bytes).digest("hex")),
      bytes:bytes.length,
    })),
    deleteObject:vi.fn(async()=>undefined),
    presignGet:vi.fn(async()=>({url:"https://s3.example/private",expiresAt:"soon"})),
  } as unknown as ReplayObjectStore;
  return {service,objects,storage:createP2pEvidenceStorage({service,objects})};
}
describe("P2P private evidence",()=>{
  it("accepts owner-scoped PDF only after order authorization and stores digest",async()=>{
    const t=fixtures();
    const r=await t.storage.upload(actor,orderId,{
      contentType:"application/pdf",contentBase64:pdf.toString("base64"),
    });
    expect(r.state).toBe("disputed");
    expect(t.service.assertEvidenceAllowed).toHaveBeenCalledWith(actor,orderId);
    expect(t.service.recordEvidence).toHaveBeenCalledOnce();
    expect(t.objects.putObject).toHaveBeenCalledOnce();
    const objectKey=vi.mocked(t.objects.putObject!).mock.calls[0]![0];
    expect(objectKey).toMatch(new RegExp('_'+pdf.length+'_pdf$'));
    expect(t.objects.deleteObject).not.toHaveBeenCalled();
  });
  it("rejects MIME spoof, extra fields and malformed bytes before upload",async()=>{
    const t=fixtures();
    const base={contentType:"image/png",contentBase64:pdf.toString("base64")};
    for(const x of [base,{...base,objectRef:"p2p/other"},
      {...base,contentBase64:"@"},{...base,contentType:"image/svg+xml"}]){
      await expect(t.storage.upload(actor,orderId,x)).rejects.toThrow();
    }
    expect(t.objects.putObject).not.toHaveBeenCalled();
  });
  it("deletes an orphan upload when the order closes during DB commit",async()=>{
    const t=fixtures();
    vi.mocked(t.service.recordEvidence).mockRejectedValueOnce(new Error("order closed"));
    await expect(t.storage.upload(actor,orderId,{
      contentType:"application/pdf",contentBase64:pdf.toString("base64"),
    })).rejects.toThrow("order closed");
    expect(t.objects.deleteObject).toHaveBeenCalledOnce();
  });
  it("reads private short-lived link only through participant-scoped service",async()=>{
    const t=fixtures();
    const d=await t.storage.download(actor,orderId,evidenceId);
    expect(d.url).toBe("https://s3.example/private");
    expect(t.service.evidenceFor).toHaveBeenCalledWith(actor,orderId,evidenceId,false);
  });
});