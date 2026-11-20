export type CallGreeting = "Hello" | "Assalamu alaikum";

export function callGreeting(greeting?:string|null):CallGreeting {
  // Honor an explicitly configured greeting. Names and locations do not
  // establish religious identity.
  return /^(?:as[ -]?sala{1,2}mu?[ -]+(?:al[ -]?)?a[’']?lai?kum|السلام عليكم)(?:\b|[!,.\s]|$)/iu.test(greeting?.trim()??"")
    ? "Assalamu alaikum" : "Hello";
}

export function callOpeningTurn(greeting:CallGreeting) {
  return {clientContent:{turns:[{role:"user",parts:[{text:
    `The call just connected. Speak first, out loud. Say “${greeting}” and pause to listen. Say only the greeting. Do not use a tool for this opening.`,
  }]}],turnComplete:true}};
}

export function audibleGreetingFrame(message:Record<string,unknown>):number {
  const content=(message.serverContent??message.server_content) as {modelTurn?:{parts?:unknown[]}}|undefined;
  if(!Array.isArray(content?.modelTurn?.parts))return 0;
  let bytes=0;
  for(const part of content.modelTurn.parts){
    const audio=(part as {inlineData?:{data?:unknown;mimeType?:unknown}}|null)?.inlineData;
    if(typeof audio?.data!=="string"||typeof audio.mimeType!=="string"||
       !/^audio\/(?:pcm|l16)(?:;\s*rate=24000)?$/i.test(audio.mimeType))continue;
    const pcm=Buffer.from(audio.data,"base64");
    if(pcm.length%2!==0||pcm.toString("base64")!==audio.data)continue;
    for(let i=0;i<pcm.length;i+=2){
      if(Math.abs(pcm.readInt16LE(i))>8){bytes+=pcm.length;break;}
    }
  }
  return bytes;
}
