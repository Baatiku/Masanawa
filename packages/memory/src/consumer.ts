/** Conservative opt-in/explicit Masana learning. Untrusted text never grants a capability. */
export interface ConsumerMemoryCandidate {
  readonly key: string;
  readonly content: string;
  readonly type: "fact" | "preference" | "plan";
  readonly explicit: boolean;
}
const sensitive = /\b(?:password|passcode|otp|secret key|private key|seed phrase|credit card|bank account|account number|passport|medical|diagnos|pregnan|sexual|religion|political party|ethnic|race|home address)\b/iu;
const negate = /\b(?:just joking|kidding|hypothetical|pretend|don't remember|do not remember)\b/iu;
const override = /\b(?:ignore\b.{0,70}\b(?:instructions|rules|policies)|override\b.{0,50}\b(?:system|safety|developer)|disable\b.{0,50}\b(?:verification|security|safety)|execute\b.{0,50}\b(?:tool|command)|transfer (?:funds|money)|reveal\b.{0,50}\b(?:secrets|keys|system prompt))\b/iu;
const directIdentifier = /\b(?:i live at|my (?:home )?address is|my phone (?:number )?is|my email (?:address )?is|my date of birth is|my social security|my card number|my pin is)\b/iu;
export function isConsumerMemorySafeText(value:string):boolean {
  return typeof value==="string" && value.trim().length>=3 &&
    value.length<=1200 && !sensitive.test(value) && !override.test(value) && !directIdentifier.test(value);
}
const normalize = (value: string) => value.replace(/\s+/gu," ").trim();
const keyPart = (value: string) => normalize(value).toLowerCase().replace(/[^a-z0-9 -]/gu,"").slice(0,60);
export function extractConsumerMemory(text: string, enabled: boolean): ConsumerMemoryCandidate | null {
  if(typeof text!=="string" || text.length>4000) return null;
  const value=normalize(text);
  if(!value || negate.test(value))return null;
  const explicit=/^(?:please\s+)?remember(?: that| this|:)\s+(.{3,1200})[.!]?$/iu.exec(value);
  if(explicit){
    const content=normalize(explicit[1]!);
    if(!isConsumerMemorySafeText(content))return null;
    return {key:"explicit:"+keyPart(content).slice(0,45),content,type:"fact",explicit:true};
  }
  if(!enabled || !isConsumerMemorySafeText(value) || value.length>350)return null;
  const preference=/^i (?:usually )?prefer\s+(.{3,180})[.!]?$/iu.exec(value);
  if(preference)return {key:"preference:general",content:value,type:"preference",explicit:false};
  const favorite=/^my favou?rite ([\w -]{2,50}) is (.{2,130})[.!]?$/iu.exec(value);
  if(favorite)return {key:"favorite:"+keyPart(favorite[1]!),content:value,type:"preference",explicit:false};
  const goal=/^my (?:current )?goal is (.{3,180})[.!]?$/iu.exec(value);
  if(goal)return {key:"goal:current",content:value,type:"plan",explicit:false};
  const learning=/^i(?: am|'m) learning (.{3,150})[.!]?$/iu.exec(value);
  if(learning)return {key:"learning:current",content:value,type:"plan",explicit:false};
  return null;
}
export function rankConsumerMemories<T extends {content:string;updatedAt:string}>(
  entries:readonly T[],query:string,limit=6,
):readonly T[] {
  const tokens=(s:string)=>new Set((s.toLowerCase().match(/[\p{L}\p{N}]{3,}/gu)??[])
    .filter(x=>!["the","and","you","are","for","that","what","can","with","this","have","about","would"].includes(x)));
  const sought=tokens(query);
  const generic=/\b(?:continue|last time|previous|earlier|pick up where|remember|our lessons|we discussed)\b/iu.test(query.trim()) && query.length<=120;
  const now=Date.now();
  return Object.freeze(entries.map((entry,index)=>{
    const words=tokens(entry.content);
    let matches=0;for(const token of sought)if(words.has(token))matches++;
    const age=Number.isFinite(Date.parse(entry.updatedAt))?Math.max(0,now-Date.parse(entry.updatedAt)):0;
    return {entry,index,matches,score:(generic||sought.size===0?1:matches)*10 + 1/(1+age/2592000000)};
  }).filter(x=>generic||sought.size===0||x.matches>0)
    .sort((a,b)=>b.score-a.score||a.index-b.index).slice(0,limit).map(x=>x.entry));
}
