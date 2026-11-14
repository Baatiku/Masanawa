import {describe,it,expect} from 'vitest';
import {APPROVED_MASANA_VOICES,MASANA_VOICE_ASSIGNMENTS,MASANA_CONTACT_GENDERS,contactVoice,isCustomContactVoice} from './masana_voice_catalog.js';
import {PROFESSIONAL_MASANA_CATALOG} from './platform_agent_bootstrap.js';
import {CIVIC_AGENCY_CATALOG} from './civic_agency_bootstrap.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
describe('gendered synthetic contact voices',()=>{
 it('covers every professional, official and civic contact with exact provider names',()=>{
  expect(APPROVED_MASANA_VOICES).toEqual(['Sulafat','Algenib','Algieba']);
  expect(Object.keys(MASANA_CONTACT_GENDERS)).toHaveLength(26);
  const contacts=[...PROFESSIONAL_MASANA_CATALOG,...OFFICIAL_ROSTER_MANIFEST,...CIVIC_AGENCY_CATALOG];
  expect(contacts).toHaveLength(148);
  for(const [i,c] of contacts.entries()){
   expect(['female','male']).toContain(c.gender);
   expect(c.gender==='female'?contactVoice(c.gender,i)==='Sulafat':['Algenib','Algieba'].includes(contactVoice(c.gender,i))).toBe(true);
  }
  for(const p of PROFESSIONAL_MASANA_CATALOG){expect(p.voiceName).toBe(MASANA_VOICE_ASSIGNMENTS[p.key]);expect(p.gender==='female'?p.voiceName==='Sulafat':['Algenib','Algieba'].includes(p.voiceName)).toBe(true);}
 });
 it('preserves explicit custom IDs but does not mistake a stock name for one',()=>{
  expect(isCustomContactVoice('voice_verified_example')).toBe(true);
  expect(isCustomContactVoice('Sulafat')).toBe(false);
  expect(isCustomContactVoice('voice_')).toBe(false);
 });
});
