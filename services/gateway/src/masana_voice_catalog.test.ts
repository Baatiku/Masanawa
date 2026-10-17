import {describe,it,expect} from 'vitest';
import {APPROVED_MASANA_VOICES,MASANA_VOICE_ASSIGNMENTS} from './masana_voice_catalog.js';
import {PROFESSIONAL_MASANA_CATALOG} from './platform_agent_bootstrap.js';
describe('owner-approved persona voices',()=>{
 it('assigns 26 distinct exact approved names',()=>{
  const names=Object.values(MASANA_VOICE_ASSIGNMENTS);
  expect(names).toHaveLength(26);expect(new Set(names).size).toBe(26);
  expect(names.every(n=>(APPROVED_MASANA_VOICES as readonly string[]).includes(n))).toBe(true);
  expect(names).toEqual(expect.arrayContaining(['Algenib','Algieba','Charon','Sulafat']));
  expect(names).not.toContain('Aoede');expect(names).not.toContain('Puck');expect(names).not.toContain('Fora');
  expect(MASANA_VOICE_ASSIGNMENTS).toMatchObject({gwani:'Bodi',gwana:'Fola'});
 });
 it('wires each catalog entry to its selected voice',()=>{
  for(const persona of PROFESSIONAL_MASANA_CATALOG)expect(persona.voiceName).toBe(MASANA_VOICE_ASSIGNMENTS[persona.key]);
 });
});
