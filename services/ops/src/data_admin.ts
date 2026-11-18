import {validateNgnDataApprovals,type ApprovedNgnDataBundle} from '@masanawa/contracts';
import type {FlutterwaveBillItem} from '@masanawa/providers';
import type {Pool} from '@masanawa/postgres';
import type {OpsAdminDashboardService} from './admin_dashboard.js';
import {PersonaAdminError} from './persona_admin.js';
export function createDataAdmin(input:{pool:Pick<Pool,'query'>;authorize:OpsAdminDashboardService['authorize'];initialApprovals?:string|undefined;listItems?:(billerCode:string)=>Promise<readonly FlutterwaveBillItem[]>}){
 const readCatalogue=async(tenantId:string)=>{const row=(await input.pool.query(`SELECT bundles,revision::text FROM gb_wallet.admin_data_catalogues WHERE tenant_id=$1`,[tenantId])).rows[0];try{return {bundles:validateNgnDataApprovals(row?.bundles??JSON.parse(input.initialApprovals??'[]')),revision:String(row?.revision??'0')};}catch{throw new PersonaAdminError(503,'existing_catalogue_needs_review');}};
 const amount=(value:string)=>{if(!/^(?:0|[1-9]\d{0,11})(?:\.\d{1,2})?$/.test(value))throw new PersonaAdminError(503,'provider_catalogue_invalid');const [whole,fraction='']=value.split('.');return BigInt(whole!)*100n+BigInt(fraction.padEnd(2,'0'));};
 const inspect=async(bundles:readonly ApprovedNgnDataBundle[])=>{
  if(!input.listItems)throw new PersonaAdminError(503,'flutterwave_credentials_missing');
  const live=new Map<string,FlutterwaveBillItem>();
  // Bounded, sequential, direct reads from the existing allowlisted host.
  const billers=new Set(bundles.map(b=>b.billerCode));if(billers.size>8)throw new PersonaAdminError(503,'provider_catalogue_too_many_billers');
  for(const biller of billers){let items:readonly FlutterwaveBillItem[];try{items=await input.listItems(biller);}catch{throw new PersonaAdminError(503,'flutterwave_catalogue_unavailable');}for(const item of items){const key=item.billerCode+':'+item.itemCode;if(item.billerCode!==biller||live.has(key))throw new PersonaAdminError(503,'provider_catalogue_ambiguous');live.set(key,item);}}
  return bundles.map(b=>{const item=live.get(b.billerCode+':'+b.itemCode);const status=!item?'unavailable':item.currency!=='NGN'?'currency_mismatch':amount(item.amount)!==amount(b.providerAmount)?'price_changed':'matching';return {id:b.billerCode+':'+b.itemCode,network:b.network,enabled:b.enabled,approvedAmount:b.providerAmount,providerAmount:item?.currency==='NGN'?item.amount:null,status,expired:Date.parse(b.expiresAt)<=Date.now(),renewable:b.enabled&&status==='matching'};});
 };
 const service={
 async preview(auth:string|undefined){const actor=await input.authorize({authorizationHeader:auth,capability:'data.read'});const catalogue=await readCatalogue(actor.tenantId);return {operatorId:actor.actorId,revision:catalogue.revision,observedAt:new Date().toISOString(),items:await inspect(catalogue.bundles)};},
 async renew(auth:string|undefined,p:{expectedRevision:number;ids:string[];reason:string}){
  const actor=await input.authorize({authorizationHeader:auth,capability:'data.write'});
  if(!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0||!Array.isArray(p.ids)||!p.ids.length||p.ids.length>100||new Set(p.ids).size!==p.ids.length||typeof p.reason!=='string'||p.reason.trim().length<10||p.reason.length>1000)throw new PersonaAdminError(422,'invalid_catalogue_review');
  const catalogue=await readCatalogue(actor.tenantId);if(Number(catalogue.revision)!==p.expectedRevision)throw new PersonaAdminError(409,'catalogue_revision_changed');
  const selected=catalogue.bundles.filter(b=>p.ids.includes(b.billerCode+':'+b.itemCode));if(selected.length!==p.ids.length||selected.some(b=>!b.enabled))throw new PersonaAdminError(422,'bundle_not_eligible_for_renewal');
  const observations=await inspect(selected);if(observations.some(b=>!b.renewable))throw new PersonaAdminError(409,'provider_bundle_changed');
  const now=new Date(),expiresAt=new Date(now.getTime()+7*86400000).toISOString();
  return service.publish(auth,{expectedRevision:p.expectedRevision,reason:p.reason,bundles:catalogue.bundles.map(b=>p.ids.includes(b.billerCode+':'+b.itemCode)?{...b,reviewedAt:now.toISOString(),expiresAt}:b)});
 },
 async read(auth:string|undefined){const actor=await input.authorize({authorizationHeader:auth,capability:'data.read'});const row=(await input.pool.query(`SELECT bundles,revision::text,actor_id AS "actorId",updated_at AS "updatedAt" FROM gb_wallet.admin_data_catalogues WHERE tenant_id=$1`,[actor.tenantId])).rows[0];if(row)return {...row,operatorId:actor.actorId};let bundles:unknown=[];try{bundles=validateNgnDataApprovals(JSON.parse(input.initialApprovals??'[]'));}catch{throw new PersonaAdminError(503,'existing_catalogue_needs_review');}return {operatorId:actor.actorId,bundles,revision:'0',source:'private_runtime_approvals'};},
 async publish(auth:string|undefined,p:{bundles:unknown;expectedRevision:number;reason:string}){const actor=await input.authorize({authorizationHeader:auth,capability:'data.write'});if(!Number.isSafeInteger(p.expectedRevision)||p.expectedRevision<0||typeof p.reason!=='string'||p.reason.trim().length<10||p.reason.length>1000)throw new PersonaAdminError(422,'invalid_catalogue_review');let bundles;try{bundles=validateNgnDataApprovals(p.bundles).map(b=>({...b,version:'admin-'+String(p.expectedRevision+1),reviewedBy:actor.actorId,reviewedAt:b.reviewedAt}));validateNgnDataApprovals(bundles);}catch{throw new PersonaAdminError(422,'invalid_bundle_approval');}const encoded=JSON.stringify(bundles);
  const first=await input.pool.query(`INSERT INTO gb_wallet.admin_data_catalogues(tenant_id,bundles,actor_id,reason) SELECT $1,$2::jsonb,$3,$4 WHERE $5=0 ON CONFLICT DO NOTHING RETURNING bundles,revision::text`,[actor.tenantId,encoded,actor.actorId,p.reason,p.expectedRevision]);if(first.rows[0])return first.rows[0];const changed=await input.pool.query(`UPDATE gb_wallet.admin_data_catalogues SET bundles=$2::jsonb,actor_id=$3,reason=$4,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND revision=$5 RETURNING bundles,revision::text`,[actor.tenantId,encoded,actor.actorId,p.reason,p.expectedRevision]);if(!changed.rows[0])throw new PersonaAdminError(409,'catalogue_revision_changed');return changed.rows[0];
 }
};return service;}
