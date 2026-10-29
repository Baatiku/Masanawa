import {expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {officialLaunchPackets,OFFICIAL_LAUNCH_REVIEW_EXPIRES} from './official_launch_admission.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
it('binds every reviewed biography to its stable subject and uses a fixed review expiry',()=>{
 const tenant=createCanonicalId('tenant'),now=new Date('2026-10-29T12:00:00Z');
 const packets=officialLaunchPackets(tenant,undefined,now);
 expect(packets).toHaveLength(62);
 expect(new Set(packets.map(p=>p.characterId)).size).toBe(62);
 for(const p of packets){
  expect(OFFICIAL_ROSTER_MANIFEST.find(s=>s.characterId===p.characterId)?.officialName).toBe(p.officialName);
  expect(p.publicProfile!.biography.length).toBeGreaterThan(20);
  expect(p.publicProfile!.biography.length).toBeLessThanOrEqual(500);
  expect(p.evidence.every(e=>e.kind==='biographical_reference'&&Buffer.byteLength(e.content)<1000)).toBe(true);
  expect(p.reviewExpiresAt).toBe(OFFICIAL_LAUNCH_REVIEW_EXPIRES);
 }
 expect(packets.slice(0,4).map(p=>p.officialName)).toEqual(OFFICIAL_ROSTER_MANIFEST.slice(0,4).map(s=>s.officialName));
 expect(officialLaunchPackets(tenant,[],now)).toEqual([]);
 expect(officialLaunchPackets(tenant,undefined,new Date('2026-11-29'))).toEqual([]);
 expect(()=>officialLaunchPackets(tenant,[{...OFFICIAL_ROSTER_MANIFEST[0]!,officialName:'Other person'}],now)).toThrow('identity_conflict');
});
