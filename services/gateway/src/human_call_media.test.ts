import { describe, it, expect, vi } from "vitest";
import { createHumanCallRoomTerminator } from "./human_call_media.js";
const room = 'human_11111111-1111-4111-8111-111111111111';
describe('human media teardown', () => {
  it('signs a short server grant and deletes only the human room', async () => {
    const send = vi.fn<typeof fetch>().mockResolvedValue(new Response('', {status: 200}));
    const close = createHumanCallRoomTerminator({serverUrl:'wss://voice.example.test',apiKey:'test',apiSecret:'test-secret-at-least-16',fetchImpl:send});
    await close(room);
    const [url,options] = send.mock.calls[0]!;
    expect(String(url)).toBe('https://voice.example.test/twirp/livekit.RoomService/DeleteRoom');
    expect(JSON.parse(String(options!.body))).toEqual({room});
    const token = (options!.headers as Record<string,string>).authorization!.slice(7);
    const grant = JSON.parse(Buffer.from(token.split('.')[1]!, 'base64url').toString());
    expect(grant.video).toEqual({roomCreate:true}); expect(grant.exp-grant.iat).toBe(30);
    await expect(close('other-room')).rejects.toThrow('Invalid'); expect(send).toHaveBeenCalledTimes(1);
  });
  it('retries provider failure while accepting already deleted rooms', async () => {
    const send = vi.fn<typeof fetch>().mockResolvedValueOnce(new Response('',{status:503})).mockResolvedValueOnce(new Response('',{status:404}));
    const close=createHumanCallRoomTerminator({serverUrl:'wss://voice.example.test',apiKey:'test',apiSecret:'test-secret-at-least-16',fetchImpl:send});
    await expect(close(room)).rejects.toThrow('teardown'); await close(room);
  });
});
