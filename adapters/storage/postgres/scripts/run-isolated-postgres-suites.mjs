/**
 * Run every integration suite that opts into MASANAWA_TEST_DATABASE_URL in its
 * own disposable PostgreSQL database. This prevents one test's DROP SCHEMA or
 * migration-proposal rehearsal from changing the next test's fixtures.
 *
 * Requires @masanawa/postgres to have been built in production conditions.
 * Never accepts a production URL: this is test-only and drops databases.
 */
import { readdir, readFile } from 'node:fs/promises';
import { resolve, relative } from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawn } from 'node:child_process';
import { randomBytes } from 'node:crypto';
import pg from 'pg';
import { runMigrations, platformProductMigrationRoots } from '../dist/index.js';

const root = fileURLToPath(new URL('../../../../', import.meta.url));
const testUrl = process.env.MASANAWA_TEST_DATABASE_URL;
if (!testUrl) throw new Error('A dedicated disposable PostgreSQL test URL is required');
const parsed = new URL(testUrl);
if (!['localhost', '127.0.0.1', '::1'].includes(parsed.hostname) ||
    !/test/i.test(parsed.pathname) || process.env.CI !== 'true') {
  throw new Error('Refusing to create/drop test databases outside CI localhost');
}
const parent = new pg.Client({ connectionString: testUrl });
const concurrency = 2;
const skip = new Set(['.git','node_modules','.next','.dart_tool','build','dist','.turbo','coverage']);
async function discover(folder){
  const files=[];
  for(const entry of await readdir(folder,{withFileTypes:true})){
    if(entry.isDirectory() && !skip.has(entry.name))files.push(...await discover(resolve(folder,entry.name)));
    else if(entry.isFile() && entry.name.endsWith('.test.ts')){
      const path=resolve(folder,entry.name);
      if((await readFile(path,'utf8')).includes('MASANAWA_TEST_DATABASE_URL'))files.push(path);
    }
  }
  return files;
}
function runOne(path,connectionString){
  return new Promise((resolveResult,reject)=>{
    const command=resolve(root,'node_modules/.bin/vitest');
    const child=spawn(command,['run',relative(root,path),'--no-file-parallelism','--reporter=dot'],{
      cwd:root,env:{...process.env,MASANAWA_TEST_DATABASE_URL:connectionString,CI:'true'},stdio:['ignore','pipe','pipe'],
    });
    let out='';
    const capture=x=>{out=(out+x.toString()).slice(-26000);};
    child.stdout.on('data',capture);child.stderr.on('data',capture);
    child.once('error',reject);
    child.once('close',code=>resolveResult({code,output:out}));
  });
}
async function suite(file,index){
  const sqlName='masanawa_test_s_'+String(index)+'_'+randomBytes(4).toString('hex');
  await parent.query(`CREATE DATABASE "${sqlName}"`);
  const url=new URL(testUrl);url.pathname='/'+sqlName;
  let report;
  try{
    const source=await readFile(file,'utf8');
    const customSchema=source.includes('DROP SCHEMA') ||
      file.endsWith('/home_feed/af00_migrations.integration.test.ts');
    if(!customSchema){
      const db=new pg.Pool({connectionString:url.toString(),max:2});
      try {
        await runMigrations(db,[...platformProductMigrationRoots(),
          {owner:'memory',directory:fileURLToPath(new URL('../../../../packages/memory/migrations/',import.meta.url))},
          {owner:'world',directory:fileURLToPath(new URL('../../../../packages/world/migrations/',import.meta.url))}]);
      } finally {await db.end();}
    }
    report=await runOne(file,url.toString());
  }catch(error){report={code:1,output:String(error?.stack??error)};}
  finally{
    await parent.query('SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname=$1 AND pid<>pg_backend_pid()',[sqlName]);
    await parent.query(`DROP DATABASE IF EXISTS "${sqlName}"`);
  }
  const name=relative(root,file);
  if(report.code===0) process.stdout.write(`PASS ${name}\n`);
  else process.stderr.write(`FAIL ${name}\n${report.output}\n`);
  return report.code===0;
}
await parent.connect();
try{
  const paths=(await discover(root)).sort();
  process.stdout.write(`Isolated PostgreSQL suites: ${paths.length}\n`);
  let next=0;let passed=0;let failed=0;
  await Promise.all(Array.from({length:concurrency},async()=>{
    while(next<paths.length){const i=next++;
      if(await suite(paths[i],i))passed++;else failed++;
    }
  }));
  process.stdout.write(`PostgreSQL suites: ${passed} passed, ${failed} failed\n`);
  if(failed>0)process.exitCode=1;
}finally{await parent.end();}
