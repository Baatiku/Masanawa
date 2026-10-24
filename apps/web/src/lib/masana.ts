/** Shared browser-safe presentation and validation for canonical Masana records. */
export type MasanaProfile={
  characterId:string;displayName:string;roleLabel:string;about:string;
  greeting:string|null;presence:string;avatarUrl:string|null;
  creatorName:string|null;countryName:string|null;conversationStarters:string[];
  supportAgent:boolean;voiceName:string|null;
};
export type HistoryItem={key:string;direction:"user"|"assistant";text:string;requestId:string;createdAt:string};
export function validCharacterId(value:unknown):value is string {
  return typeof value==="string" && /^character_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);
}
export function validSessionId(value:unknown):value is string {
  return typeof value==="string" && /^character-session_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);
}
export function validRequestId(value:unknown):value is string {
  return typeof value==="string" && /^request_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);
}
function str(v:unknown,max=1000):string {return typeof v==="string"?v.trim().slice(0,max):"";}
export function readProfile(value:unknown):MasanaProfile|null{
  if(!value||typeof value!=="object"||Array.isArray(value))return null;
  const v=value as Record<string,unknown>;
  if(!validCharacterId(v.characterId))return null;
  let avatarUrl:null|string=null;
  const raw=str(v.avatarUrl,1024);
  if(raw){try{const url=new URL(raw);if(url.protocol==="https:")avatarUrl=url.href;}catch{}}
  const starters=Array.isArray(v.conversationStarters)?v.conversationStarters.filter((x):x is string=>typeof x==="string").map(x=>x.slice(0,180)).slice(0,8):[];
  return {
    characterId:v.characterId,displayName:str(v.displayName,160)||"Masana",
    roleLabel:str(v.roleLabel,160),about:str(v.about,2000),
    greeting:typeof v.greeting==="string"?str(v.greeting,2000):null,
    presence:str(v.presence,30)||"unknown",avatarUrl,
    creatorName:str(v.creatorName,160)||null,countryName:str(v.countryName,160)||null,
    conversationStarters:starters,supportAgent:v.supportAgent===true,
    voiceName:typeof v.voiceName==="string"?str(v.voiceName,100):null,
  };
}
export function readHistory(value:unknown):HistoryItem[]|null{
  if(!value||typeof value!=="object"||Array.isArray(value))return null;
  const raw=(value as Record<string,unknown>).messages;
  if(!Array.isArray(raw))return null;
  return raw.slice(0,100).flatMap((v):HistoryItem[]=>{
    if(!v||typeof v!=="object")return [];
    const a=v as Record<string,unknown>;
    if(a.direction!=="user"&&a.direction!=="assistant")return [];
    return [{key:str(a.key,128),direction:a.direction,text:str(a.text,32000),
      requestId:str(a.requestId,180),createdAt:str(a.createdAt,60)}];
  });
}
