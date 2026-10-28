import { transliterate } from 'transliteration';

const reserved=new Set(['admin','administrator','masanawa','support','system','security','official','help']);
export function normalizeUsername(raw:string):string {
  const value=raw.trim().replace(/^@/u,'').toLowerCase();
  if(value.length<2||value.length>40||!/^[a-z][a-z0-9]*(?:[._][a-z0-9]+)*$/u.test(value)||
    reserved.has(value)||value.startsWith('deleted_'))throw new TypeError('username.invalid');
  return value;
}
/** No arbitrary/random suffix. A collision beyond the approved phone suffixes
 * requires a deliberate username choice, never publishing the whole phone. */
export function usernameCandidates(input:Readonly<{
  name:string;firstName?:string|null;lastName?:string|null;contactPhone?:string|null;
}>):readonly string[]{
  const words=input.name.trim().split(/\s+/u);
  const slug=(value:string)=>transliterate(value).toLowerCase().replace(/[^a-z0-9]/gu,'');
  const first=slug(input.firstName||words[0]||'');
  const last=slug(input.lastName||words.slice(1).join(' '));
  const full=last?`${first.slice(0,19)}.${last.slice(0,20)}`:first.slice(0,40);
  const candidates=[first.slice(0,40),full];
  const digits=(input.contactPhone??'').replace(/\D/gu,'');
  for(let size=2;size<=Math.min(4,digits.length-3);size++)
    candidates.push(`${full.slice(0,40-size).replace(/[._]+$/u,'')}${digits.slice(-size)}`);
  return [...new Set(candidates)].filter(candidate=>{
    try{return normalizeUsername(candidate)===candidate;}catch{return false;}
  });
}
