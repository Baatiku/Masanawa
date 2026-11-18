import type {Pool} from '@masanawa/postgres';
import {admitOfficialDossier,validateOfficialDossierPacket,type OfficialDossierPacket} from './official_dossier_admission.js';
import {OFFICIAL_LAUNCH_BIOGRAPHIES} from './official_launch_biographies.js';
import {OFFICIAL_ROSTER_MANIFEST,type OfficialRosterSubject} from './official_roster_manifest.js';

// This is a fixed dated review, not a rolling approval renewed on every boot.
export const OFFICIAL_LAUNCH_REVIEW_EXPIRES='2026-11-28T23:59:59.000Z';
export function officialLaunchPackets(tenantId:string,roster:readonly OfficialRosterSubject[]=OFFICIAL_ROSTER_MANIFEST,now=new Date()):OfficialDossierPacket[]{
 if(+now>=Date.parse(OFFICIAL_LAUNCH_REVIEW_EXPIRES))return [];
 return OFFICIAL_LAUNCH_BIOGRAPHIES.flatMap(b=>{
  const subject=roster.find(s=>s.characterId===b.characterId);
  if(!subject)return [];
  if(subject.officialName!==b.officialName)throw Error('official_launch_identity_conflict');
  const sentences=b.summary.match(/[^.!?]+[.!?]+(?:\s|$)|[^.!?]+$/g)??[b.summary];
  const chunks:string[]=[];
  for(const sentence of sentences){const last=chunks.at(-1);if(last&&Buffer.byteLength(last+sentence)<950)chunks[chunks.length-1]=last+sentence;else chunks.push(sentence);}
  const short=sentences.reduce((text,sentence)=>text.length+sentence.length<=480?text+sentence:text,'').trim();
  const packet={tenantId,characterId:subject.characterId,characterVersionId:subject.characterVersionId,
   officialName:subject.officialName,office:[subject.office,subject.state,subject.party].filter(Boolean).join(' · '),countryCode:'NG',
   identitySourceUrl:b.sourceUrl,reviewExpiresAt:OFFICIAL_LAUNCH_REVIEW_EXPIRES,
   publicProfile:{biography:short,lifeStory:b.summary,...(b.biographicalFacts?{biographicalFacts:b.biographicalFacts}:{})},
   evidence:chunks.map((content,index)=>({sourceUrl:b.sourceUrl,kind:'biographical_reference',
    title:`${b.displayName}: attributed biography, reference checked ${b.checkedAt} (${index+1})`,content:content.trim(),
    sourceDate:b.checkedAt,validUntil:OFFICIAL_LAUNCH_REVIEW_EXPIRES,
    licenseBasis:'Original brief factual summary with source attribution; reference-check date is not publication date.'}))};
  return [validateOfficialDossierPacket(packet,now)];
 });
}
/** Admit the bundled review only once. A later withdrawal, edit or suspension
 * belongs to staff; restarting the gateway must never undo it. */
export async function admitBundledOfficialLaunch(pool:Pool,tenantId:string,roster:readonly OfficialRosterSubject[]){
 let admitted=0;
 for(const packet of officialLaunchPackets(tenantId,roster)){
  const prior=await pool.query(`SELECT 1 FROM masana.public_official_dossiers WHERE tenant_id=$1 AND character_id=$2
   UNION ALL SELECT 1 FROM masana.public_official_review_receipts WHERE tenant_id=$1 AND character_id=$2 LIMIT 1`,[tenantId,packet.characterId]);
  if(prior.rows.length)continue;
  await admitOfficialDossier(pool,packet,'masanawa-attributed-launch-20261029');admitted++;
 }
 return admitted;
}
