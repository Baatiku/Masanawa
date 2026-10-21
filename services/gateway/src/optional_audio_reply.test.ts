import {afterEach, describe, expect, it, vi} from 'vitest';
import {optionalAudioReply} from './optional_audio_reply.js';
afterEach(() => vi.useRealTimers());
describe('optional speech never loses a completed text turn', () => {
 it('returns valid audio without leaving a timeout', async () => {
  vi.useFakeTimers();
  expect(await optionalAudioReply(async () => 'audio')).toBe('audio');
  expect(vi.getTimerCount()).toBe(0);
 });
 it('bounds a hung renderer which ignores cancellation', async () => {
  vi.useFakeTimers(); let observed: AbortSignal | undefined;
  const reply = optionalAudioReply(signal => {observed=signal; return new Promise(() => {});}, undefined, 30000);
  await vi.advanceTimersByTimeAsync(30000);
  expect(await reply).toBeUndefined(); expect(observed?.aborted).toBe(true);
  expect(vi.getTimerCount()).toBe(0);
 });
 it('keeps provider failure optional and cancels caller-aborted work', async () => {
  expect(await optionalAudioReply(async () => {throw new Error('provider unavailable');})).toBeUndefined();
  const caller = new AbortController();
  const reply = optionalAudioReply(() => new Promise(() => {}), caller.signal);
  caller.abort(); expect(await reply).toBeUndefined();
 });
});
