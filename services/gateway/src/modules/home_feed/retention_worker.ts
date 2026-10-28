/** A bounded, recoverable sweep for server-owned paid-post retention.
 * Feed and owner read policies enforce the exact expiry timestamp; this
 * worker physically scrubs source text/media references after the deadline.
 * Private object cleanup runs from the durable deletion outbox when a
 * configured storage provider is present; no public CDN purge is assumed.
 */
import type {StatusMediaDeletionWorker} from './media_deletion_worker.js';
export interface StatusExpiryPort {
  purgeExpired(limit:number):Promise<{purged:number}>;
  pruneExpiredViewChallenges?(limit:number):Promise<{pruned:number}>;
}

export class StatusRetentionWorker {
  private timer:ReturnType<typeof setInterval>|undefined;
  private running:Promise<void>|null=null;
  private stopped=true;
  constructor(private readonly port:StatusExpiryPort,
    private readonly reportFailure:()=>void=()=>{},
    private readonly mediaDeletion?:StatusMediaDeletionWorker){}

  start(){
    if(this.timer||!this.stopped)throw new Error('status_retention_already_started');
    this.stopped=false;
    this.timer=setInterval(()=>{void this.sweep();},60_000);
    this.timer.unref();
    void this.sweep(); // catch up after process restarts, without a paid-view request
  }

  sweep():Promise<void>{
    if(this.stopped)return Promise.resolve();
    if(this.running)return this.running;
    const work=(async()=>{
      // One minute tick handles at most 500 records. Each DB batch uses
      // FOR UPDATE SKIP LOCKED, so multiple Gateway replicas are safe.
      for(let i=0;i<5&&!this.stopped;i++){
        const {purged}=await this.port.purgeExpired(100);
        if(!Number.isSafeInteger(purged)||purged<0||purged>100)
          throw new Error('status_retention_invalid_batch');
        if(purged<100)break;
      }
      // Detached unclaimed challenges never become charge/commission records.
      // Bound stale HMAC viewer proofs even if no further visitor arrives.
      if(!this.stopped&&this.port.pruneExpiredViewChallenges)
       for(let i=0;i<5&&!this.stopped;i++){
        const {pruned}=await this.port.pruneExpiredViewChallenges(100);
        if(!Number.isSafeInteger(pruned)||pruned<0||pruned>100)
         throw new Error('status_challenge_retention_invalid_batch');
        if(pruned<100)break;
       }
      if(!this.stopped)await this.mediaDeletion?.sweep();
    })();
    const settled=work.catch(()=>{this.reportFailure();})
      .finally(()=>{if(this.running===settled)this.running=null;});
    this.running=settled;
    return settled;
  }

  async stop(){
    this.stopped=true;
    if(this.timer)clearInterval(this.timer);
    this.timer=undefined;
    await this.running;
  }
}
