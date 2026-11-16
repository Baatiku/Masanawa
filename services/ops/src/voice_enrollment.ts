/** Strict intake format for owner-authorized Google voice enrollment. */
export function validateEnrollmentWav(base64: string, kind: "sample" | "consent") {
  if (typeof base64 !== "string" || base64.length > 4_000_000 || !/^[A-Za-z0-9+/]*={0,2}$/.test(base64)) throw new TypeError("Invalid audio encoding");
  const bytes=Buffer.from(base64,"base64");
  if(bytes.toString("base64")!==base64 || bytes.length<44 || bytes.toString("ascii",0,4)!=="RIFF" || bytes.toString("ascii",8,12)!=="WAVE" || bytes.readUInt32LE(4)+8!==bytes.length) throw new TypeError("Upload a complete WAV recording");
  let offset=12,format=false,dataBytes=0,dataFound=false;
  while(offset+8<=bytes.length){
    const name=bytes.toString("ascii",offset,offset+4),size=bytes.readUInt32LE(offset+4),start=offset+8;
    if(start+size>bytes.length)throw new TypeError("Truncated audio chunk");
    if(name==="fmt "){
      if(format || size<16 || bytes.readUInt16LE(start)!==1 || bytes.readUInt16LE(start+2)!==1 || bytes.readUInt32LE(start+4)!==24000 || bytes.readUInt32LE(start+8)!==48000 || bytes.readUInt16LE(start+12)!==2 || bytes.readUInt16LE(start+14)!==16)throw new TypeError("Use 24 kHz mono 16-bit PCM WAV");
      format=true;
    }
    if(name==="data"){
      if(dataFound || size%2)throw new TypeError("Invalid audio data");
      dataFound=true;dataBytes=size;
    }
    offset=start+size+(size%2);
  }
  const seconds=dataBytes/48000;
  if(!format || !dataFound || offset!==bytes.length || seconds<(kind==="sample"?10:1) || seconds>(kind==="sample"?30:60))throw new TypeError(kind==="sample"?"Sample must be 10–30 seconds":"Consent must be 1–60 seconds");
  return {mimeType:"audio/wav" as const,data:base64,seconds};
}

export function buildGoogleVoiceEnrollment(input:{displayName:string;sample:string;consent:string;adultSpeakerConfirmed:boolean}){
  if(input.adultSpeakerConfirmed!==true || typeof input.displayName!=="string" || !input.displayName.trim() || input.displayName.length>120)throw new TypeError("Confirm the adult speaker and provide a voice name");
  const sample=validateEnrollmentWav(input.sample,"sample"),consent=validateEnrollmentWav(input.consent,"consent");
  if(input.sample===input.consent)throw new TypeError("Upload separate sample and consent recordings");
  return {store:true,voice:{model:"gemini-3.8-flash-tts",type:"replicated",display_name:input.displayName.trim(),replicated:{source_audio:{mime_type:sample.mimeType,data:sample.data},consent_audio:{mime_type:consent.mimeType,data:consent.data}}}};
}
