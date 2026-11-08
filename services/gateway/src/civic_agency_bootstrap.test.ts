import {describe,it,expect} from 'vitest';
import {CIVIC_AGENCY_CATALOG,approvedCivicAgencyId,ensureCivicAgencyAgents} from './civic_agency_bootstrap.js';

describe('independently operated agency AI guides',()=>{
 it('requires an exact published agency key, not a lookalike or an arbitrary organisation',()=>{
  expect(approvedCivicAgencyId('nimc')).toBe('nimc');
  expect(approvedCivicAgencyId('NIMC')).toBeNull();
  expect(approvedCivicAgencyId('government')).toBeNull();
  expect(new Set(CIVIC_AGENCY_CATALOG.map(s=>s.id)).size).toBe(CIVIC_AGENCY_CATALOG.length);
  for(const item of CIVIC_AGENCY_CATALOG) expect(new URL(item.source).protocol).toBe('https:');
 });
 it('creates one canonical approved agent per agency and preserves it on restart',async()=>{
  const seeded=new Map<string,{characterId:string;constitution:Record<string,any>}>();
  const presentations=new Map<string,Record<string,any>>();
  const profiles=new Map<string,Record<string,any>>();
  const assignments=new Map<string,Record<string,any>>();
  let approvedRows=0;
  const pool={query:async(sql:string,params:unknown[])=>{
   if(sql.includes("v.constitution->'disclosurePolicy'"))return {rows:[...seeded.values()].map(item=>({character_id:item.characterId,civic_id:item.constitution.disclosurePolicy.civicAgencyId}))};
   if(sql.includes('INSERT INTO masana.character_revisions')){approvedRows++;return {rows:[]};}
   throw new Error(`Unexpected civic test SQL: ${sql}`);
  }};
  const identity={provision:async(value:Record<string,any>)=>{
   const id=value.constitution.disclosurePolicy.civicAgencyId;
   expect(seeded.has(id)).toBe(false);
   expect(value.constitution.boundaries.join(' ')).toContain('not a government account');
   expect(value.constitution.boundaries.join(' ')).toContain('Never ask for NIN');
   seeded.set(id,{characterId:value.characterId,constitution:value.constitution});
  }};
  const presentationRepo={listAll:async()=>[...presentations.values()],put:async({presentation}:any)=>{
   presentations.set(presentation.characterId,presentation);return presentation;
  }};
  const profileRepo={readForCharacter:async({characterId}:any)=>profiles.get(characterId)??null,put:async({profile}:any)=>{
   profiles.set(profile.characterId,profile);return profile;
  }};
  const assignmentsRepo={readForCharacter:async({characterId}:any)=>assignments.get(characterId)??null,put:async({assignment}:any)=>{
   assignments.set(assignment.characterId,assignment);return assignment;
  }};
  const args={tenantId:'tenant-civic',pool,identity,presentations:presentationRepo,profiles:profileRepo,
   skillAssignments:assignmentsRepo,skillDistribution:{listForAudience:async()=>[]}} as never;
  const first=await ensureCivicAgencyAgents(args);
  expect(first).toEqual({prepared:CIVIC_AGENCY_CATALOG.length,created:CIVIC_AGENCY_CATALOG.length});
  expect(presentations.size).toBe(CIVIC_AGENCY_CATALOG.length);
  expect([...presentations.values()].every(p=>p.visibleInUserApp&&p.displayName.endsWith('AI Guide'))).toBe(true);
  const second=await ensureCivicAgencyAgents(args);
  expect(second).toEqual({prepared:CIVIC_AGENCY_CATALOG.length,created:0});
  expect(approvedRows).toBe(CIVIC_AGENCY_CATALOG.length*2); // conditional insert is safe on restart
  expect(seeded.size).toBe(CIVIC_AGENCY_CATALOG.length);
 });
});
