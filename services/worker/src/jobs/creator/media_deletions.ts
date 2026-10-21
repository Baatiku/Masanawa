import type {Pool} from '@masanawa/postgres';
/** Catalogue permission is already revoked transactionally by the owner action.
 * Object deletes are idempotent and retry until a fresh HEAD proves absence. */
export function createCreatorMediaCleanup(input:{pool:Pick<Pool,'query'>;objects:{deleteObject(key:string):Promise<void>;statObject(key:string):Promise<unknown|null>}}){
 return {async runOnce(){
  const jobs=await input.pool.query<{tenant_id:string;media_id:string;object_key:string}>('SELECT tenant_id,media_id,object_key FROM creator.media_deletions WHERE completed_at IS NULL ORDER BY created_at LIMIT 25');
  let completed=0,retried=0;
  for(const j of jobs.rows)try{
   await input.objects.deleteObject(j.object_key);
   if(await input.objects.statObject(j.object_key)!==null)throw Error('creator_media_delete_unconfirmed');
   await input.pool.query('UPDATE creator.media_deletions SET completed_at=now() WHERE tenant_id=$1 AND media_id=$2 AND completed_at IS NULL',[j.tenant_id,j.media_id]);completed++;
  }catch{retried++;}
  return {completed,retried};
 }};
}
