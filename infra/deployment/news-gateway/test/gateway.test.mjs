import test from 'node:test';
import assert from 'node:assert/strict';
import {DatabaseSync} from 'node:sqlite';
import {readFileSync} from 'node:fs';
import worker from '../src/worker.mjs';
import {parseFeed,PUBLISHERS,refreshIfDue,listNews,fetchFeed} from '../src/news.ts';
import {deploymentConfig} from '../config.mjs';
function database(){
 const sqlite=new DatabaseSync(':memory:');
 for(const path of ['0002_news.sql','0003_refresh_evidence.sql'])sqlite.exec(readFileSync(new URL('../migrations/'+path,import.meta.url),'utf8'));
 function prepare(sql){let values=[];return {bind(...v){values=v;return this;},async first(){return sqlite.prepare(sql).get(...values)??null;},
  async all(){return {results:sqlite.prepare(sql).all(...values)};},async run(){return {meta:sqlite.prepare(sql).run(...values)};}};}
 return {sqlite,prepare,async batch(statements){sqlite.exec('BEGIN');try{const r=[];for(const statement of statements)r.push(await statement.run());sqlite.exec('COMMIT');return r;}catch(e){sqlite.exec('ROLLBACK');throw e;}}};
}
const xml=(publisher,index=0)=>`<rss><channel><item><title>${publisher.name} headline ${index}</title><description>A short publisher summary for the new agreement.</description><link>https://${publisher.hosts[0]}/news/story-${index}</link><pubDate>${new Date().toUTCString()}</pubDate></item></channel></rss>`;
function fixtures(){return async url=>{const p=PUBLISHERS.find(p=>p.feed===String(url));assert(p);return new Response(xml(p));};}
const ctx=()=>({jobs:[],waitUntil(p){this.jobs.push(p);}});
const req=(path,method='GET')=>new Request('https://gateway.test'+path,{method});
test('RSS rejects entities, bad hosts and stale dates; strips markup and URL trackers',()=>{
 const p=PUBLISHERS[0];
 assert.equal(parseFeed(xml(p),p).length,1);
 assert.throws(()=>parseFeed('<!DOCTYPE x>'+xml(p),p));
 assert.equal(parseFeed(xml(p).replace('https://bbc.com','https://bbc.com.evil.test'),p).length,0);
 assert.equal(parseFeed(xml(p).replace(new Date().toUTCString(),'Tue, 01 Jan 2000 00:00:00 GMT'),p).length,0);
 assert.equal(parseFeed(xml(p).replace('</title>',' &amp; hello</title>'),p)[0].title, 'BBC News headline 0 & hello');
});
test('real SQLite migrations, ingestion, dedupe, lease, cron evidence, persistence and expiry',async t=>{
 const old=globalThis.fetch;globalThis.fetch=fixtures();t.after(()=>globalThis.fetch=old);
 const db=database();t.after(()=>db.sqlite.close());
 assert.equal((await refreshIfDue(db,'cron')).imported,7);
 assert.equal((await refreshIfDue(db)).skipped,true);
 db.sqlite.exec("UPDATE news_refresh_state SET checked_ms=0");
 assert.equal((await refreshIfDue(db)).imported,0);
 const runs=db.sqlite.prepare('SELECT * FROM news_refresh_runs').all();assert.equal(runs.length,2);assert(runs[0].completed_ms);
 // Request-time refresh must not starve scheduled ingestion/evidence.
 assert.equal((await refreshIfDue(db,'cron')).checked,7);
 const page=await listNews(db,new URL('https://gateway.test/v1/news'));assert.equal(page.items.length,7);
 const story=page.items[0];
 db.sqlite.prepare('UPDATE news_articles SET published_at=? WHERE id=?').run('2000-01-01T00:00:00.000Z',story.id);
 assert.equal((await listNews(db,new URL('https://gateway.test/v1/news'))).items.length,6);
 const c=ctx(),response=await worker.fetch(req('/readyz'),{DB:db},c);assert.equal(response.status,200);
 const status=await response.json();assert.equal(status.lastCron.checked,7);
 // Rows survive independent Worker invocations; state is never held in a module array.
 const response2=await worker.fetch(req('/v1/news'),{DB:db},ctx());assert.equal((await response2.json()).items.length,6);
});
test('public endpoints, anonymous reads, failure status, methods, CORS and HEAD',async t=>{
 const old=globalThis.fetch;globalThis.fetch=fixtures();t.after(()=>globalThis.fetch=old);
 const db=database();t.after(()=>db.sqlite.close());
 assert.equal((await worker.fetch(req('/healthz'),{},ctx())).status,200);
 assert.equal((await worker.fetch(req('/readyz'),{DB:db},ctx())).status,503);
 let r=await worker.fetch(req('/v1/news'),{DB:db},ctx());assert.equal(r.status,200);assert.equal(r.headers.get('Access-Control-Allow-Origin'),'*');
 assert.equal((await r.json()).items.length,7);
 for(const path of ['/v1/news?bad=1','/v1/news?cursor=bad','/v1/news?publisher=unknown','/v1/news?search=a','/v1/news?publisher=bbc&publisher=dw'])
  assert.equal((await worker.fetch(req(path),{DB:db},ctx())).status,422,path);
 assert.equal((await worker.fetch(req('/v1/news'),{},ctx())).status,503);
 assert.equal((await worker.fetch(req('/v1/news','OPTIONS'),{},ctx())).status,204);
 assert.equal((await worker.fetch(req('/v1/news','POST'),{},ctx())).status,405);
 r=await worker.fetch(req('/v1/news/publishers','HEAD'),{},ctx());assert.equal(await r.text(),'');
 assert.equal((await worker.fetch(req('/v1/news/publishers?bad=1'),{},ctx())).status,422);
});
test('keyset pages never overlap, filter before pagination, exact content dedupe',async t=>{
 const old=globalThis.fetch;t.after(()=>globalThis.fetch=old);
 const db=database();t.after(()=>db.sqlite.close());
 globalThis.fetch=async url=>{const p=PUBLISHERS.find(p=>p.feed===String(url));return new Response('<rss>'+Array.from({length:30},(_,i)=>xml(p,i)).join('')+'</rss>');};
 await refreshIfDue(db);
 const first=await listNews(db,new URL('https://gateway.test/v1/news?publisher=bbc'));
 assert.equal(first.items.length,20);assert(first.nextCursor);
 const second=await listNews(db,new URL('https://gateway.test/v1/news?publisher=bbc&cursor='+first.nextCursor));
 assert.equal(second.items.length,10);assert.equal(second.nextCursor,null);
 assert(!second.items.some(x=>first.items.some(y=>y.id===x.id)));
 assert.throws(()=>deploymentConfig('bad','bad'));
 const config=deploymentConfig('a'.repeat(32),'12345678-1234-1234-1234-123456789abc');
 assert.equal(config.workers_dev,true);assert.deepEqual(config.triggers.crons,['*/15 * * * *']);
});
test('bounded publisher retry and scheduled failures remain observable',async t=>{
 const old=globalThis.fetch;t.after(()=>globalThis.fetch=old);
 let calls=0;globalThis.fetch=async()=>{calls++;if(calls===1)throw Error('temporary');return new Response(xml(PUBLISHERS[0]));};
 assert.equal((await fetchFeed(PUBLISHERS[0])).length,1);assert.equal(calls,2);
 globalThis.fetch=async()=>{throw Error('offline');};
 const db=database();t.after(()=>db.sqlite.close());const c=ctx();await worker.scheduled({}, {DB:db},c);
 await assert.rejects(Promise.all(c.jobs),/all_publishers_failed/);
 assert.equal(db.sqlite.prepare('SELECT failed FROM news_refresh_runs').get().failed,7);
 assert.equal((await worker.fetch(req('/readyz'),{DB:db},ctx())).status,503);
});
test('syndicated exact content is deduplicated and corrected source metadata keeps its ID',async t=>{
 const old=globalThis.fetch;t.after(()=>globalThis.fetch=old);
 const db=database();t.after(()=>db.sqlite.close());
 globalThis.fetch=async url=>{const p=PUBLISHERS.find(p=>p.feed===String(url));return new Response(xml(p).replace(/<title>.*?<\/title>/,'<title>Shared syndicated headline</title>'));};
 assert.equal((await refreshIfDue(db)).imported,1);
 const before=db.sqlite.prepare('SELECT id FROM news_articles').get();
 db.sqlite.exec('UPDATE news_refresh_state SET checked_ms=0');
 globalThis.fetch=async url=>{
  const p=PUBLISHERS.find(p=>p.feed===String(url));
  return new Response(p.id==='bbc'?xml(p).replace(/<title>.*?<\/title>/,'<title>Corrected headline</title>'):'<rss/>');
 };
 assert.equal((await refreshIfDue(db)).imported,1);
 const after=db.sqlite.prepare('SELECT id,title FROM news_articles').get();
 assert.equal(after.id,before.id);assert.equal(after.title,'Corrected headline');
});
