/** Executes the real packaged CLI, including its actual pg module resolution.
 * No provider can be contacted: the isolated child has only loopback DB access. */
import test from 'node:test';
import assert from 'node:assert/strict';
import {spawnSync} from 'node:child_process';
import {createServer} from 'node:net';
import {fileURLToPath} from 'node:url';
const root=fileURLToPath(new URL('../../../',import.meta.url));
test('qualification loads the real pg Pool and reports a failed connection without leaking secrets',async()=>{
 const server=createServer();await new Promise(resolve=>server.listen(0,'127.0.0.1',resolve));const port=server.address().port;await new Promise(resolve=>server.close(resolve));
 const secret='FLWSECK-private-regression-fixture',password='private-database-regression-fixture';
 const result=spawnSync(process.execPath,['--conditions=production','infra/deployment/digitalocean/qualify-payments.mjs'],{cwd:root,encoding:'utf8',timeout:15000,env:{...process.env,MASANAWA_DATABASE_URL:`postgres://fixture:${password}@127.0.0.1:${port}/fixture`,FLUTTERWAVE_SECRET_KEY:secret,FLUTTERWAVE_WEBHOOK_SECRET_HASH:'private-webhook-regression-fixture',MASANAWA_BILLSTACK_SECRET_KEY:'private-billstack-regression-fixture',MASANAWA_PLATFORM_TENANT_ID:'tenant_00000000-0000-7000-8000-000000000001',FLUTTERWAVE_WEBHOOK_URL:'https://api.masanawa.com/v1/webhooks/flutterwave'}});
 assert.equal(result.status,1,result.stderr);const marker=result.stderr.split('\n').find(line=>line.startsWith('MASANAWA_QUALIFICATION_RESULT '));assert(marker,result.stderr);const diagnostic=JSON.parse(marker.slice('MASANAWA_QUALIFICATION_RESULT '.length));assert.equal(diagnostic.stage,'database_connection');assert.equal(diagnostic.failureCode,'ECONNREFUSED');assert.equal(diagnostic.httpStatus,null);assert.deepEqual(diagnostic.missing,[]);
 for(const value of [secret,password,'private-webhook-regression-fixture','private-billstack-regression-fixture'])assert(!result.stderr.includes(value)&&!result.stdout.includes(value));
});
