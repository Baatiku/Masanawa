import {readFile,stat} from 'node:fs/promises';
import {createHash} from 'node:crypto';
import {createCanonicalId} from '@masanawa/contracts';
import type {PublicOfficialPersona} from '@masanawa/agents';
import {validateOfficialDossierPacket} from './official_dossier_admission.js';
import {validateOfficialEvaluationCases,evaluateOfficialPersona} from './official_evaluation.js';
import {createProductionAgentStrategy} from './production_strategy.js';
import {createGeminiCredentialPoolInferenceProvider} from './production_inference.js';
// Preview is offline. --run explicitly uses the operator's configured model/API.
try{
 const [packetFile,casesFile,...args]=process.argv.slice(2);
 if(!packetFile||!casesFile||args.length>1||args.length===1&&args[0]!=='--run'||
  (await stat(packetFile)).size>2*1024*1024||(await stat(casesFile)).size>100000)throw Error('invalid_evaluation_arguments');
 const packet=validateOfficialDossierPacket(JSON.parse(await readFile(packetFile,'utf8')));
 const cases=validateOfficialEvaluationCases(JSON.parse(await readFile(casesFile,'utf8')));
 const packetSha256=createHash('sha256').update(JSON.stringify(packet)).digest('hex');
 if(!args.includes('--run'))process.stdout.write(JSON.stringify({mode:'preview',packetSha256,caseCount:cases.length,providerCalls:0})+'\n');
 else{
  const apiKey=process.env.MASANAWA_GEMINI_API_KEY,model=process.env.MASANAWA_GEMINI_MODEL;
  if(!apiKey||!model)throw Error('evaluation_provider_unavailable');
  const official:PublicOfficialPersona={officialName:packet.officialName,office:packet.office,countryCode:'NG',identitySourceUrl:packet.identitySourceUrl,
   reviewedAt:new Date().toISOString(),reviewExpiresAt:packet.reviewExpiresAt,evidence:packet.evidence.map((e,i)=>({id:'evidence-'+i,sourceUrl:e.sourceUrl,title:e.title,content:e.content,sourceDate:e.sourceDate,kind:e.kind}))};
  const read=async(query:string)=>{
   const terms=(query.toLowerCase().match(/[\p{L}\p{N}]+/gu)??[]).filter(t=>t.length>=4);
   const required=[official.evidence.find(e=>e.kind==='grokipedia')!];
   const remaining=official.evidence.filter(e=>!required.includes(e)).sort((a,b)=>terms.filter(t=>b.content.toLowerCase().includes(t)).length-terms.filter(t=>a.content.toLowerCase().includes(t)).length).slice(0,5);
   return {...official,evidence:[...required,...remaining]};
  };
  const strategy=createProductionAgentStrategy({inference:createGeminiCredentialPoolInferenceProvider({pool:{apiKeys:[apiKey],models:[model]}}),skills:{} as never,guides:{} as never});
  const report=await evaluateOfficialPersona(strategy,question=>({agentRunId:createCanonicalId('agent-run'),characterSessionId:createCanonicalId('character-session'),
   characterVersionId:packet.characterVersionId as import('@masanawa/contracts').CharacterVersionId,skillVersionIds:[],
   presentation:{displayName:packet.officialName,roleLabel:packet.office,about:'AI simulation',narrative:{biography:'',personality:[],languages:[],publicOfficial:official}},
   input:{kind:'text',text:question},readPublicEvidence:read}),cases);
  process.stdout.write(JSON.stringify({mode:'offline_packet_model_eval',packetSha256,model,...report})+'\n');if(!report.passed)process.exitCode=1;
 }
}catch{process.stderr.write('Official evaluation unavailable: check reviewed packet, gold cases and configured provider. No secret values or raw provider responses are logged.\n');process.exitCode=1;}
