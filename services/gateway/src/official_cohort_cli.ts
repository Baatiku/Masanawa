import {readFile,stat} from 'node:fs/promises';
import {createPostgresPool,createPostgresAgentPresentationRepository} from '@masanawa/postgres';
import {parseCanonicalId} from '@masanawa/contracts';
import {validateOfficialDossierPacket,admitOfficialDossier,type OfficialDossierPacket} from './official_dossier_admission.js';
import {parseOfficialDossierCommand} from './official_dossier_command.js';
import {activateAdmittedOfficialRoster} from './official_roster_bootstrap.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';

/** One batch, all packets validated before opening a database or publishing. */
export function validateOfficialCohortPackets(raw:unknown):readonly OfficialDossierPacket[]{
 if(!Array.isArray(raw)||!raw.length||raw.length>OFFICIAL_ROSTER_MANIFEST.length)throw Error('invalid_cohort');
 const packets=raw.map(p=>validateOfficialDossierPacket(p)),seen=new Set<string>();
 const tenant=packets[0]!.tenantId;
 for(const p of packets){
  const subject=OFFICIAL_ROSTER_MANIFEST.find(s=>s.characterId===p.characterId);
  if(!subject||subject.officialName!==p.officialName||subject.characterVersionId!==p.characterVersionId||
   p.tenantId!==tenant||!p.publicProfile||seen.has(p.characterId))throw Error('invalid_cohort');
  seen.add(p.characterId);
 }
 return Object.freeze(packets);
}
async function main(){
 let completed=0;
 try{
  const {file,apply,reviewer}=parseOfficialDossierCommand(process.argv.slice(2));
  if((await stat(file)).size>16*1024*1024)throw Error('invalid_cohort');
  const packets=validateOfficialCohortPackets(JSON.parse(await readFile(file,'utf8')));
  if(!apply){process.stdout.write(JSON.stringify({mode:'preview',subjects:packets.length,
   officials:packets.map(p=>p.officialName),evidenceChunks:packets.reduce((n,p)=>n+p.evidence.length,0),databaseWrites:0})+'\n');return;}
  const connectionString=process.env.MASANAWA_DATABASE_URL??process.env.DATABASE_URL;
  if(!connectionString||!reviewer)throw Error('operator_database_required');
  const pool=createPostgresPool({connectionString,applicationName:'masanawa-official-cohort',max:1});
  try{
   for(const p of packets){await admitOfficialDossier(pool,p,reviewer);completed++;}
   const activation=await activateAdmittedOfficialRoster({pool,tenantId:parseCanonicalId('tenant',packets[0]!.tenantId),
    presentations:createPostgresAgentPresentationRepository(pool)});
   process.stdout.write(JSON.stringify({mode:'applied',completed,...activation})+'\n');
  }finally{await pool.end();}
 }catch{
  process.stderr.write(`Official cohort stopped after ${completed} completed admissions. No biography contents or credentials are logged. Completed admissions are retained; retry the same reviewed packet file to resume.\n`);
  process.exitCode=1;
 }
}
// Importing validation in tests never starts an operator command.
if(process.argv[1]?.replaceAll('\\','/').endsWith('/official_cohort_cli.js'))void main();
