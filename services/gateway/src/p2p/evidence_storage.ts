import { createHash, randomUUID } from "node:crypto";
import { createReplayObjectStore, type ReplayObjectStore } from "../talk_replay/playback/s3_object_store.js";
import { P2pError, type P2pActor, type P2pService } from "./service.js";

const accepted=new Set(["image/jpeg","image/png","image/webp","application/pdf"]);
const base64=/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/;
const maxBytes=2*1024*1024;
export interface P2pEvidenceStorage {
  upload(actor:P2pActor,orderId:string,request:unknown):Promise<{
    evidenceId:string;state:string;sha256:string;bytes:number;
  }>;
  download(actor:P2pActor,orderId:string,evidenceId:string,operator?:boolean):Promise<{
    url:string;expiresAt:string;sha256:string;
  }>;
}

/**
 * Uses canonical private S3 object signing. All bytes are accepted through an
 * authenticated Gateway endpoint: no client-generated storage keys, public
 * upload credentials, screenshots-as-settlement, or arbitrary remote URLs.
 */
export function createP2pEvidenceStorage(input:{
  readonly objects:ReplayObjectStore;
  readonly service:P2pService;
}):P2pEvidenceStorage {
  if(!input.objects.putObject)throw new P2pError("p2p.evidence_storage_unavailable",503);
  return Object.freeze<P2pEvidenceStorage>({
    async upload(actor,orderId,payload){
      if(!payload||typeof payload!=="object"||Array.isArray(payload))
        throw new P2pError("p2p.evidence_invalid",422);
      const body=payload as Record<string,unknown>;
      if(Object.keys(body).sort().join(",")!=="contentBase64,contentType" ||
        typeof body.contentType!=="string"||!accepted.has(body.contentType)||
        typeof body.contentBase64!=="string" || body.contentBase64.length===0 ||
        body.contentBase64.length>Math.ceil(maxBytes/3)*4+4 ||
        !base64.test(body.contentBase64)){
        throw new P2pError("p2p.evidence_invalid",422);
      }
      const bytes=Buffer.from(body.contentBase64,"base64");
      if(bytes.length===0||bytes.length>maxBytes ||
        bytes.toString("base64")!==body.contentBase64)
        throw new P2pError("p2p.evidence_too_large_or_invalid",422);
      // Reject mismatched file signatures, not just claimed MIME. The server
      // never trusts content type from a browser as proof of harmless content.
      const magic=bytes.subarray(0,16);
      const valid=body.contentType==="image/png"
        ? magic.subarray(0,8).equals(Buffer.from("89504e470d0a1a0a","hex"))
        :body.contentType==="image/jpeg" ? magic.subarray(0,3).equals(Buffer.from("ffd8ff","hex"))
        :body.contentType==="image/webp" ? magic.toString("ascii",0,4)==="RIFF" && magic.toString("ascii",8,12)==="WEBP"
        :magic.toString("ascii",0,5)==="%PDF-";
      if(!valid)throw new P2pError("p2p.evidence_signature_invalid",422);
      await input.service.assertEvidenceAllowed(actor,orderId);
      const digest=createHash("sha256").update(bytes).digest("hex");
      const scope=createHash("sha256").update(actor.tenantId).digest("hex").slice(0,24);
      const format=body.contentType==="application/pdf"?"pdf":
        body.contentType==="image/png"?"png":
        body.contentType==="image/webp"?"webp":"jpg";
      // Type and size live in the private immutable object key; existing DB
      // schema and previous evidence references remain compatible.
      const path=`p2p/${scope}/${orderId}/${randomUUID()}_${bytes.length}_${format}`;
      try {
        const object=await input.objects.putObject!(path,bytes,body.contentType);
        if(object.sha256!==digest||object.bytes!==bytes.length)
          throw new P2pError("p2p.evidence_checksum_mismatch",503);
        // Object is uploaded; re-check locked membership/order state before
        // persisting its immutable reference. No token movement happens here.
        const record=await input.service.recordEvidence(actor,orderId,{
          objectRef:path,sha256:digest,verifiedOwnerId:actor.userId,
        });
        return {...record,sha256:digest,bytes:bytes.length};
      }catch(error){
        await input.objects.deleteObject(path).catch(()=>undefined);
        throw error;
      }
    },
    async download(actor,orderId,evidenceId,operator=false){
      const item=await input.service.evidenceFor(actor,orderId,evidenceId,operator);
      const signed=await input.objects.presignGet(String(item.objectRef),60);
      return {...signed,sha256:String(item.sha256)};
    },
  });
}
export function configuredP2pEvidenceStorage(
  env:Readonly<Record<string,string|undefined>>, service:P2pService,
):P2pEvidenceStorage|undefined{
  const prefix="MASANAWA_P2P_EVIDENCE_S3_";
  const fields=["ENDPOINT","REGION","BUCKET","ACCESS_KEY","SECRET_KEY"] as const;
  const values=fields.map(k=>env[prefix+k]?.trim()??"");
  if(values.every(v=>v.length===0))return undefined;
  if(values.some(v=>v.length===0))throw new P2pError("p2p.evidence_config_incomplete",503);
  const [endpoint,region,bucket,accessKey,secret]=values;
  const objects=createReplayObjectStore({
    endpoint: endpoint!,region:region!,bucket:bucket!,
    accessKey:accessKey!,secret:secret!,maxObjectBytes:maxBytes,
    availabilityAttempts:2,availabilityDelayMs:200,
  });
  return createP2pEvidenceStorage({objects,service});
}
