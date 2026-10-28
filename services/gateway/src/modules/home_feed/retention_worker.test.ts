import {afterEach,describe,expect,it,vi} from 'vitest';
import {StatusRetentionWorker} from './retention_worker.js';

afterEach(()=>vi.useRealTimers());
describe('account-independent paid post expiry sweeper',()=>{
 it('sweeps on startup and minute ticks, stops cleanly and batches bounded work',async()=>{
  vi.useFakeTimers();
  const purgeExpired=vi.fn().mockResolvedValueOnce({purged:100})
    .mockResolvedValueOnce({purged:3}).mockResolvedValue({purged:0});
  const worker=new StatusRetentionWorker({purgeExpired});
  worker.start();
  await worker.sweep();
  expect(purgeExpired).toHaveBeenCalledTimes(2);
  expect(purgeExpired).toHaveBeenCalledWith(100);
  await vi.advanceTimersByTimeAsync(60_000);
  expect(purgeExpired).toHaveBeenCalledTimes(3);
  await worker.stop();
  await vi.advanceTimersByTimeAsync(120_000);
  expect(purgeExpired).toHaveBeenCalledTimes(3);
 });
 it('does not overlap a running transaction or retry a failed purge speculatively',async()=>{
  vi.useFakeTimers();
  let resolve!: (value:{purged:number})=>void;
  const purgeExpired=vi.fn()
    .mockImplementationOnce(()=>new Promise(r=>{resolve=r;}))
    .mockRejectedValueOnce(new Error('transient database outage'))
    .mockResolvedValue({purged:0});
  const report=vi.fn();
  const worker=new StatusRetentionWorker({purgeExpired},report);
  worker.start();
  expect(purgeExpired).toHaveBeenCalledTimes(1);
  await vi.advanceTimersByTimeAsync(180_000);
  expect(purgeExpired).toHaveBeenCalledTimes(1);
  resolve({purged:0});
  await worker.sweep();
  await vi.advanceTimersByTimeAsync(60_000);
  expect(report).toHaveBeenCalledTimes(1);
  expect(purgeExpired).toHaveBeenCalledTimes(2);
  await vi.advanceTimersByTimeAsync(60_000);
  expect(purgeExpired).toHaveBeenCalledTimes(3);
  await worker.stop();
 });

 it('runs independent bounded expired-proof pruning on startup/ticks',async()=>{
  vi.useFakeTimers();
  const purgeExpired=vi.fn().mockResolvedValue({purged:0});
  const pruneExpiredViewChallenges=vi.fn().mockResolvedValueOnce({pruned:100})
   .mockResolvedValueOnce({pruned:2}).mockResolvedValue({pruned:0});
  const worker=new StatusRetentionWorker({purgeExpired,pruneExpiredViewChallenges});
  worker.start();await worker.sweep();
  expect(pruneExpiredViewChallenges).toHaveBeenCalledTimes(2);
  expect(pruneExpiredViewChallenges).toHaveBeenCalledWith(100);
  await vi.advanceTimersByTimeAsync(60_000);
  expect(pruneExpiredViewChallenges).toHaveBeenCalledTimes(3);
  await worker.stop();
  await vi.advanceTimersByTimeAsync(60_000);
  expect(pruneExpiredViewChallenges).toHaveBeenCalledTimes(3);
 });
 it('purges nonpayable guest consent evidence in bounded replica-safe sweeps',async()=>{
  vi.useFakeTimers();
  const pruneExpiredGuestEvidence=vi.fn().mockResolvedValueOnce({pruned:100})
   .mockResolvedValueOnce({pruned:1}).mockResolvedValue({pruned:0});
  const worker=new StatusRetentionWorker({purgeExpired:async()=>({purged:0}),
   pruneExpiredGuestEvidence});
  worker.start();await worker.sweep();
  expect(pruneExpiredGuestEvidence).toHaveBeenCalledTimes(2);
  expect(pruneExpiredGuestEvidence).toHaveBeenCalledWith(100);
  await vi.advanceTimersByTimeAsync(60_000);
  expect(pruneExpiredGuestEvidence).toHaveBeenCalledTimes(3);
  await worker.stop();
 });

 it('expires purchases before paid-post purge and retries remaining campaign deadlines',async()=>{
  vi.useFakeTimers();
  const sequence:string[]=[];
  const expireCampaigns=vi.fn().mockImplementationOnce(async()=>{
   sequence.push('expire');return {expired:100,refundedMb:10};
  }).mockImplementation(async()=>{sequence.push('expire');return {expired:2,refundedMb:0};});
  const purgeExpired=vi.fn(async()=>{sequence.push('purge');return {purged:0};});
  const worker=new StatusRetentionWorker({expireCampaigns,purgeExpired});
  worker.start();await worker.sweep();
  expect(sequence).toEqual(['expire','expire','purge']);
  await worker.stop();
 });

});
