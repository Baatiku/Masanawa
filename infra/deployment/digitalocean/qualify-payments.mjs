/** Run inside the verified Gateway image AFTER forward migrations, while the
 * Gateway/Ops are stopped. Owner-authorized catalogue reads only: never a
 * purchase, synthetic balance, generated provider secret or test deposit. */
import {createRequire} from 'node:module';
import {readFile} from 'node:fs/promises';
import {renewMatchingNgnApprovals} from '../../../services/gateway/dist/ngn_data/renew_approvals.js';
import {createLiveFlutterwaveGbDataItems} from '../../../services/gateway/dist/gb_data/flutterwave_live_items.js';
const gateway=createRequire(new URL('../../../services/gateway/package.json',import.meta.url));
const postgres=createRequire(new URL('../../../adapters/storage/postgres/package.json',import.meta.url));
const {FlutterwaveBillsClient,FlutterwaveHttpTransport}=await import(gateway.resolve('@masanawa/providers'));
const {Pool}=await import(postgres.resolve('pg'));
const env=process.env;
let pool,stage='configuration',httpStatus=null,missingSettings=[];
try{
 const missing=['FLUTTERWAVE_SECRET_KEY','FLUTTERWAVE_WEBHOOK_SECRET_HASH','MASANAWA_PLATFORM_TENANT_ID'].filter(k=>!env[k]?.trim());
 if(!(env.MASANAWA_BILLSTACK_SECRET_KEY?.trim()||env.BILLSTACK_SECRET_KEY?.trim()))missing.push('MASANAWA_BILLSTACK_SECRET_KEY');
 missingSettings=missing;
 if(missing.length)throw Error('Missing private settings: '+missing.join(', '));
 const tenant=env.MASANAWA_PLATFORM_TENANT_ID;
 if(!/^tenant_[0-9a-f-]{36}$/i.test(tenant))throw Error('Canonical tenant needs inspection');
 const webhookUrl='https://api.masanawa.com/v1/webhooks/flutterwave';
 if(env.FLUTTERWAVE_WEBHOOK_URL&&env.FLUTTERWAVE_WEBHOOK_URL!==webhookUrl)throw Error('FLUTTERWAVE_WEBHOOK_URL differs from the canonical callback; inspect before activation');
 stage='database';
 pool=new Pool({connectionString:env.MASANAWA_DATABASE_URL||env.DATABASE_URL,max:1,connectionTimeoutMillis:10000,statement_timeout:20000});
 const client=await pool.connect();
 try{
  const row=(await client.query('SELECT bundles,revision::text FROM gb_wallet.admin_data_catalogues WHERE tenant_id=$1',[tenant])).rows[0];
  const raw=row?.bundles??(env.MASANAWA_NGN_DATA_APPROVALS_JSON?JSON.parse(env.MASANAWA_NGN_DATA_APPROVALS_JSON):JSON.parse(await readFile(new URL('../gateway/flutterwave-data-approved-20261027.json',import.meta.url),'utf8')));
  if(!Array.isArray(raw)||raw.length===0)throw Error('The existing approved catalogue is empty; an administrator must review it');
  const direct=new FlutterwaveHttpTransport({});
  const transport={async request(input){const response=await direct.request(input);httpStatus=response.status;return response;}};
  const provider=new FlutterwaveBillsClient({secretKey:env.FLUTTERWAVE_SECRET_KEY.trim(),country:'NG',transport});
  // Intentionally direct from the existing allowlisted Droplet, no retired relay.
  stage='categories';const categories=await provider.listCategories();
  if(categories.length===0)throw Error('The authenticated Flutterwave category catalogue is empty');
  stage='items';const live=await createLiveFlutterwaveGbDataItems(provider)(raw);
  stage='approval_matching';const observedAt=new Date();const qualified=renewMatchingNgnApprovals({approved:raw,liveItems:live,now:observedAt});
  if(!qualified.available)throw Error('No retained data bundle matches the current provider ID and approved NGN price; review catalogue in Admin');
  stage='catalogue_commit';await client.query('BEGIN');
  // Compare-and-swap prevents overwriting a concurrent administrator edit.
  const values=[tenant,JSON.stringify(qualified.approved),'owner-console-activation','Owner requested deposits, transfers and Flutterwave billing activation on 2026-11-16; retained selection renewed only at exact live provider identity and NGN price.',row?.revision??'0'];
  const result=row?await client.query(`UPDATE gb_wallet.admin_data_catalogues SET bundles=$2::jsonb,actor_id=$3,reason=$4,revision=revision+1,updated_at=clock_timestamp() WHERE tenant_id=$1 AND revision=$5 RETURNING revision::text`,values):await client.query(`INSERT INTO gb_wallet.admin_data_catalogues(tenant_id,bundles,actor_id,reason) VALUES($1,$2::jsonb,$3,$4) ON CONFLICT DO NOTHING RETURNING revision::text`,values.slice(0,4));
  if(!result.rows[0])throw Error('The administrator catalogue changed; rerun qualification');
  await client.query('COMMIT');
  const networks=Object.fromEntries(['MTN','AIRTEL','GLO','9MOBILE'].map(n=>[n,qualified.approved.filter(a=>a.enabled&&a.network===n&&a.version==='owner-renewal-'+observedAt.getTime()).length]));
  console.log(JSON.stringify({qualified:true,available:qualified.available,unavailable:qualified.unavailable,networks,revision:result.rows[0].revision,webhookUrl,approved:qualified.approved,billstack:'credentials_present_webhook_settlement_not_exercised'}));
 }catch(error){await client.query('ROLLBACK').catch(()=>{});throw error;}finally{client.release();}
}catch(error){
 // Provider exceptions may contain account data or credentials: print only our
 // own bounded operational diagnoses, otherwise a generic upstream failure.
 const message=error instanceof Error?error.message:'';
 const safe=/^(Missing private settings: |Canonical tenant |FLUTTERWAVE_WEBHOOK_URL differs|The existing approved catalogue |The authenticated Flutterwave category |No retained data bundle |The administrator catalogue changed)/.test(message);
 console.error(safe?message:'Payment qualification failed. Check provider credentials, the Droplet IP allowlist and catalogue availability privately. No purchase or balance credit was attempted.');
 const code=missingSettings.length?'missing_settings':message.startsWith('FLUTTERWAVE_WEBHOOK_URL differs')?'callback_mismatch':message.startsWith('Canonical tenant')?'tenant_invalid':message.startsWith('No retained data bundle')?'no_approved_matches':message.startsWith('The existing approved catalogue')?'approvals_empty':message.startsWith('The authenticated Flutterwave category')?'provider_catalogue_empty':message.startsWith('The administrator catalogue changed')?'catalogue_changed':'provider_or_catalogue_unavailable';
 console.error('MASANAWA_QUALIFICATION_RESULT '+JSON.stringify({event:'payments.qualification.failed',stage,code,httpStatus,missing:missingSettings}));
 process.exitCode=1;
}finally{await pool?.end();}
