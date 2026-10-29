import {createHash} from 'node:crypto';
import {readFile,stat} from 'node:fs/promises';
import {createPostgresPool} from '@masanawa/postgres';
import {validateOfficialDossierPacket,admitOfficialDossier} from './official_dossier_admission.js';
import {parseOfficialDossierCommand} from './official_dossier_command.js';

// Trusted server-operator command. Preview never reads credentials or connects.
try{
 const {file,apply,reviewer}=parseOfficialDossierCommand(process.argv.slice(2));
 if((await stat(file)).size>2*1024*1024)throw Error('invalid_arguments');
 const packet=validateOfficialDossierPacket(JSON.parse(await readFile(file,'utf8')));
 if(!apply){
  process.stdout.write(JSON.stringify({mode:'preview',characterId:packet.characterId,officialName:packet.officialName,
   evidenceCount:packet.evidence.length,reviewExpiresAt:packet.reviewExpiresAt,
   packetSha256:createHash('sha256').update(JSON.stringify(packet)).digest('hex'),
   ...(packet.socialSource?{socialSource:packet.socialSource}:{})})+'\n');
 }else{
  if(!reviewer)throw Error('reviewer_required');
  const connectionString=process.env.MASANAWA_DATABASE_URL??process.env.DATABASE_URL;
  if(!connectionString)throw Error('database_required');
  const pool=createPostgresPool({connectionString,applicationName:'masanawa-official-dossier-review',max:1});
  try{const result=await admitOfficialDossier(pool,packet,reviewer);process.stdout.write(JSON.stringify({mode:'applied',...result})+'\n');}
  finally{await pool.end();}
 }
}catch{
 process.stderr.write('Official dossier admission failed. Check the reviewed packet, exact canonical identity, operator access and migrations. No credentials or packet contents are logged.\n');
 process.exitCode=1;
}
