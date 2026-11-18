import {describe,it,expect,vi} from 'vitest';
import {StatusMediaDeletionWorker} from './media_deletion_worker.js';
const job={tenantId:'tenant',postId:'post',mediaId:'media',objectKey:'private/paid/fixture.png'};
describe('paid-media private object erasure',()=>{
 it('acknowledges a delete only after HEAD confirms absence',async()=>{
  const settleMediaDeletion=vi.fn().mockResolvedValue(undefined);
  const deleteObject=vi.fn().mockResolvedValue(undefined);
  await new StatusMediaDeletionWorker({claimMediaDeletions:async()=>[job],settleMediaDeletion},
   {deleteObject,statObject:async()=>null}).sweep();
  expect(deleteObject).toHaveBeenCalledWith(job.objectKey);
  expect(settleMediaDeletion).toHaveBeenCalledWith(job,true);
 });
 it('leaves provider failures and still-readable keys retryable',async()=>{
  const settleMediaDeletion=vi.fn().mockResolvedValue(undefined);
  await new StatusMediaDeletionWorker({claimMediaDeletions:async()=>[job],settleMediaDeletion},
   {deleteObject:async()=>{},statObject:async()=>({contentType:'image/png',bytes:10})}).sweep();
  expect(settleMediaDeletion).toHaveBeenCalledWith(job,false);
  const failed=vi.fn().mockResolvedValue(undefined);
  await new StatusMediaDeletionWorker({claimMediaDeletions:async()=>[job],settleMediaDeletion:failed},
   {deleteObject:async()=>{throw Error('network');},statObject:async()=>null}).sweep();
  expect(failed).toHaveBeenCalledWith(job,false);
 });
});
