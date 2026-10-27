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
});
