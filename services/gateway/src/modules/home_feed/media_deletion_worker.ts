/** Provider failures never erase durable cleanup jobs or expose storage keys. */
export interface PaidMediaDeletionJob {
 tenantId:string;postId:string;mediaId:string;objectKey:string;
}
export interface PaidMediaDeletionPort {
 claimMediaDeletions(limit:number):Promise<readonly PaidMediaDeletionJob[]>;
 settleMediaDeletion(job:PaidMediaDeletionJob,success:boolean):Promise<unknown>;
}
export interface PaidMediaObjectStore {
 deleteObject(objectKey:string):Promise<void>;
 statObject(objectKey:string):Promise<{contentType:string;bytes:number}|null>;
}
export class StatusMediaDeletionWorker {
 constructor(private readonly port:PaidMediaDeletionPort,
  private readonly objects:PaidMediaObjectStore){}
 async sweep(){
  const jobs=await this.port.claimMediaDeletions(20);
  if(jobs.length>20)throw Error('status_media_deletion_batch_invalid');
  for(const job of jobs){
   let success=false;
   try{
    await this.objects.deleteObject(job.objectKey);
    success=(await this.objects.statObject(job.objectKey))===null;
   }catch{/* Persisted job retries on the next due sweep. */}
   await this.port.settleMediaDeletion(job,success);
  }
 }
}
