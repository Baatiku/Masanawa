import {parseCanonicalId, toInstant, type RequestId} from "@masanawa/contracts";
export type MobileHistoryCursor = Readonly<{at:string;requestId:RequestId|null}>;
export function encodeMobileHistoryCursor(at:string,requestId:string):string{
  const date=toInstant(at), id=parseCanonicalId("request",requestId);
  return "v1."+Buffer.from(JSON.stringify([date,id]),"utf8").toString("base64url");
}
export function decodeMobileHistoryCursor(value:string):MobileHistoryCursor {
  if(typeof value!=="string" || value.length<10 || value.length>256)
    throw new TypeError("Invalid history cursor");
  if(!value.startsWith("v1."))return {at:toInstant(value),requestId:null};
  const encoded=value.slice(3);
  if(!/^[a-zA-Z0-9_-]{5,240}$/u.test(encoded))throw new TypeError("Invalid history cursor");
  const decoded=Buffer.from(encoded,"base64url");
  if(decoded.toString("base64url")!==encoded)throw new TypeError("Invalid history cursor");
  const data:unknown=JSON.parse(decoded.toString("utf8"));
  if(!Array.isArray(data) || data.length!==2 || typeof data[0]!=="string" || typeof data[1]!=="string")
    throw new TypeError("Invalid history cursor payload");
  return {at:toInstant(data[0]),requestId:parseCanonicalId("request",data[1])};
}
