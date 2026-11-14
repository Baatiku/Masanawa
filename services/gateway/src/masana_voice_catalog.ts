/** Owner-selected synthetic voice policy. Exact Google API names, checked
 * against https://ai.google.dev/gemini-api/docs/speech-generation .
 * Gender here is the editorial voice assignment for an AI contact, not an
 * inferred demographic attribute of a user or an institution. */
export type ContactVoiceGender='female'|'male';
export const APPROVED_MASANA_VOICES=Object.freeze(['Sulafat','Algenib','Algieba'] as const);
export function contactVoice(gender:ContactVoiceGender,index=0):string {
 return gender==='female'?'Sulafat':index%2===0?'Algenib':'Algieba';
}
/** Future verified custom IDs survive stock-policy reconciliation. */
export function isCustomContactVoice(name:string):boolean{return /^voice_[A-Za-z0-9_-]+$/.test(name);}
export const MASANA_CONTACT_GENDERS:Readonly<Record<string,ContactVoiceGender>>=Object.freeze({
 'gwani':'male',
 'gwana':'female',
 'amina':'female',
 'fatima':'female',
 'salim':'male',
 'zainab':'female',
 'sadiq':'male',
 'musa':'male',
 'bello':'male',
 'umar':'male',
 'safiya':'female',
 'ruqayya':'female',
 'idris':'male',
 'maryam':'female',
 'kabir':'male',
 'hauwa':'female',
 'yusuf':'male',
 'haruna':'male',
 'bilkisu':'female',
 'nura':'male',
 'aisha':'female',
 'abdulrahman':'male',
 'layla':'female',
 'grace':'female',
 'asha':'female',
 'mei':'female',
 });
export const MASANA_VOICE_ASSIGNMENTS:Readonly<Record<string,string>>=Object.freeze(
 Object.fromEntries(Object.entries(MASANA_CONTACT_GENDERS).map(([key,gender],index)=>[key,contactVoice(gender,index)])));
