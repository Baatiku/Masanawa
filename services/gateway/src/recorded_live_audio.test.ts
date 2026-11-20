import { expect, it, vi } from "vitest";
import {
  createGeminiRecordedLiveAudioRenderer,
  type RecordedLiveSocket,
} from "./recorded_live_audio.js";
it('routes assigned custom voices to real TTS without opening a Live socket',async()=>{
 const socketFactory=vi.fn();const provider=vi.fn<typeof fetch>(async(url,init)=>{
  expect(String(url)).toBe('https://generativelanguage.googleapis.com/v1beta/interactions');
  const body=JSON.parse(String(init?.body));expect(body.model).toBe('gemini-3.8-flash-tts');expect(body.generation_config.speech_config).toEqual([{voice:'voice_authorized_sample'}]);
  return Response.json({steps:[{type:'model_output',content:[{type:'audio',mime_type:'audio/l16',data:Buffer.from([0,0,1,0,2,0,3,0]).toString('base64')}]}]});
 });
 vi.stubGlobal('fetch',provider);
 try{const renderer=createGeminiRecordedLiveAudioRenderer({apiKey:'server-key',model:'gemini-3.8-live',voiceName:'Sulafat',socketFactory});const audio=await renderer.render('Hello there',undefined,undefined,{voiceName:'voice_authorized_sample'});expect(audio.dataBase64).toBeTruthy();expect(provider).toHaveBeenCalledOnce();expect(socketFactory).not.toHaveBeenCalled();}finally{vi.unstubAllGlobals();}
});
class Socket extends EventTarget {
  binaryType: RecordedLiveSocket["binaryType"] = "blob";
  sent: Record<string, any>[] = [];
  close = vi.fn();
  send(data: string) {
    this.sent.push(JSON.parse(data));
  }
  open() {
    this.dispatchEvent(new Event("open"));
  }
  receive(value: unknown) {
    this.receiveRaw(JSON.stringify(value));
  }
  receiveRaw(data: unknown) {
    this.dispatchEvent(new MessageEvent("message", { data }));
  }
}
function fixture(voiceName = "Bodi") {
  const socket = new Socket();
  const socketFactory = vi.fn(() => socket as RecordedLiveSocket);
  return {
    socket,
    socketFactory,
    renderer: createGeminiRecordedLiveAudioRenderer({
      apiKey: "private-key",
      model: "gemini-3.8-live",
      voiceName,
      socketFactory,
    }),
  };
}
const audio = Buffer.from([1, 0, 2, 0, 3, 0, 4, 0]);
function audioTurn(socket: Socket, data = audio.toString("base64")) {
  socket.receive({
    serverContent: {
      modelTurn: {
        parts: [{ inlineData: { mimeType: "audio/pcm;rate=24000", data } }],
      },
      turnComplete: true,
    },
  });
}
it.each(["Bodi", "Fora"])(
  "returns a completed single recorded reply using exact %s voice",
  async (voiceName) => {
    const f = fixture();
    const chunk = vi.fn();
    const result = f.renderer.render("2 plus 3 is 5.", undefined, chunk, {
      voiceName,
    });
    f.socket.open();
    expect(f.socket.sent[0]?.setup.generationConfig.speechConfig.voiceConfig
      .prebuiltVoiceConfig.voiceName).toBe(voiceName);
    expect(f.socket.sent).toHaveLength(1);
    f.socket.receive({ setupComplete: {} });
    await vi.waitFor(()=>expect(f.socket.sent[1]?.clientContent.turns[0].parts[0].text)
      .toContain("2 plus 3 is 5."));
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            {
              inlineData: {
                mimeType: "audio/pcm;rate=24000",
                data: audio.toString("base64"),
              },
            },
          ],
        },
      },
    });
    expect(chunk).not.toHaveBeenCalled();
    f.socket.receive({ serverContent: { turnComplete: true } });
    expect(await result).toMatchObject({
      dataBase64: audio.toString("base64"),
      mimeType: "audio/l16;rate=24000",
    });
    expect(chunk).toHaveBeenCalledOnce();
    expect(f.socket.close).toHaveBeenCalledOnce();
    f.socket.receive({ setupComplete: {} });
    expect(f.socket.sent).toHaveLength(2);
  },
);
it("closes on cancellation without emitting partial audio", async () => {
  const f = fixture();
  const controller = new AbortController();
  const chunk = vi.fn();
  const promise = f.renderer.render("Hello", controller.signal, chunk);
  f.socket.open();
  controller.abort();
  await expect(promise).rejects.toThrow();
  expect(f.socket.close).toHaveBeenCalledOnce();
  expect(chunk).not.toHaveBeenCalled();
});
it.each(["error", "close"])(
  "rejects %s without exposing transport credentials",
  async (event) => {
    const f = fixture();
    const promise = f.renderer.render("Hello");
    f.socket.dispatchEvent(new Event(event));
    await expect(promise).rejects.toThrow("Recorded speech connection failed");
    expect(f.socket.close).toHaveBeenCalledOnce();
  },
);
it.each([
  "missing",
  "truncated",
  "wrong-rate",
  "oversize",
  "interrupted",
  "provider-error",
])("rejects %s audio and closes", async (mode) => {
  const f = fixture();
  const chunk = vi.fn();
  const promise = f.renderer.render("Hello", undefined, chunk);
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  if (mode === "missing")
    f.socket.receive({ serverContent: { turnComplete: true } });
  if (mode === "truncated") audioTurn(f.socket, "AQ==");
  if (mode === "wrong-rate")
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            {
              inlineData: {
                mimeType: "audio/pcm;rate=16000",
                data: audio.toString("base64"),
              },
            },
          ],
        },
        turnComplete: true,
      },
    });
  if (mode === "oversize")
    f.socket.dispatchEvent(
      new MessageEvent("message", { data: "x".repeat(2 * 1024 * 1024 + 1) }),
    );
  if (mode === "interrupted")
    f.socket.receive({ serverContent: { interrupted: true } });
  if (mode === "provider-error")
    f.socket.receive({ error: { message: "private-key" } });
  await expect(promise).rejects.toThrow();
  expect(chunk).not.toHaveBeenCalled();
  expect(f.socket.close).toHaveBeenCalledOnce();
});
it("does not connect when already aborted", async () => {
  const f = fixture();
  const c = new AbortController();
  c.abort();
  await expect(f.renderer.render("Hello", c.signal)).rejects.toThrow();
  expect(f.socketFactory).not.toHaveBeenCalled();
});
it("enforces its deadline and closes", async () => {
  vi.useFakeTimers();
  try {
    const f = fixture();
    const promise = f.renderer.render("Hello");
    const rejected = expect(promise).rejects.toThrow();
    await vi.advanceTimersByTimeAsync(30000);
    await rejected;
    expect(f.socket.close).toHaveBeenCalledOnce();
  } finally {
    vi.useRealTimers();
  }
});

it.each(["arraybuffer", "uint8array"])(
  "accepts binary JSON %s provider frames",
  async (mode) => {
    const f = fixture();
    const result = f.renderer.render("Hello");
    expect(f.socket.binaryType).toBe("arraybuffer");
    f.socket.open();
    const setup = new TextEncoder().encode(
      JSON.stringify({ setupComplete: {} }),
    );
    f.socket.dispatchEvent(
      new MessageEvent("message", {
        data: mode === "arraybuffer" ? setup.buffer : setup,
      }),
    );
    const response = new TextEncoder().encode(
      JSON.stringify({
        serverContent: {
          modelTurn: {
            parts: [
              {
                inlineData: {
                  mimeType: "audio/pcm;rate=24000",
                  data: audio.toString("base64"),
                },
              },
            ],
          },
          turnComplete: true,
        },
      }),
    );
    f.socket.dispatchEvent(
      new MessageEvent("message", {
        data: mode === "arraybuffer" ? response.buffer : response,
      }),
    );
    expect((await result).dataBase64).toBe(audio.toString("base64"));
  },
);

it('decodes Blob frames in order and retains both recorded audio and spoken transcript',async()=>{
  const f=fixture('Sulafat');
  const heard:string[]=[];
  const result=f.renderer.render('Assalamu alaikum',undefined,undefined,
    {onTranscriptDelta:async delta=>{heard.push(delta);}});
  f.socket.open();
  let releaseFirst!:()=>void;
  const gate=new Promise<void>(resolve=>{releaseFirst=resolve;});
  class DelayedBlob extends Blob {
    override async text(){await gate;return super.text();}
  }
  const encode=(payload:unknown)=>JSON.stringify(payload);
  f.socket.receiveRaw(new DelayedBlob([encode({setupComplete:{}})]));
  f.socket.receiveRaw(new Blob([encode({serverContent:{
    modelTurn:{parts:[{inlineData:{mimeType:'audio/pcm;rate=24000',data:audio.toString('base64')}}]},
    outputTranscription:{text:'Assalamu '},
  }})]));
  f.socket.receiveRaw(new Blob([encode({serverContent:{
    outputTranscription:{text:'alaikum',finished:true},turnComplete:true,
  }})]));
  expect(f.socket.sent).toHaveLength(1);
  releaseFirst();
  await expect(result).resolves.toMatchObject({
    dataBase64:audio.toString('base64'),transcript:'Assalamu alaikum',
  });
  expect(f.socket.sent[1]?.clientContent.turnComplete).toBe(true);
  expect(heard.join('')).toBe('Assalamu alaikum');
});

it("caps total audio across individually valid frames", async () => {
  const f = fixture();
  const chunk = vi.fn();
  const result = f.renderer.render("Hello", undefined, chunk);
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  const block = Buffer.alloc(1024 * 1024, 1).toString("base64");
  for (let i = 0; i < 9; i++)
    f.socket.receive({
      serverContent: {
        modelTurn: {
          parts: [
            { inlineData: { mimeType: "audio/pcm;rate=24000", data: block } },
          ],
        },
      },
    });
  await expect(result).rejects.toThrow();
  // The renderer intentionally streams already-validated chunks immediately;
  // a later oversize response must fail the turn, not retract delivered PCM.
  expect(chunk).toHaveBeenCalledTimes(8);
  expect(f.socket.close).toHaveBeenCalledOnce();
});
it("closes before surfacing a playback callback failure", async () => {
  const f = fixture();
  const result = f.renderer.render("Hello", undefined, async () => {
    throw new Error("Playback unavailable");
  });
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  audioTurn(f.socket);
  await expect(result).rejects.toThrow("Recorded speech delivery failed");
  expect(f.socket.close).toHaveBeenCalledOnce();
});

it('streams Live PCM before completion and returns the matching output transcript',async()=>{
 const f=fixture();const chunks:Buffer[]=[];const deltas:string[]=[];
 const result=f.renderer.render('Hello there',undefined,async bytes=>{chunks.push(bytes);},{onTranscriptDelta:async text=>{deltas.push(text);}});
 f.socket.open();f.socket.receive({setupComplete:{}});
 f.socket.receive({serverContent:{modelTurn:{parts:[{inlineData:{mimeType:'audio/pcm;rate=24000',data:audio.toString('base64')}}]},outputTranscription:{text:'Hello '}}});
 await vi.waitFor(()=>expect(chunks).toHaveLength(1));
 f.socket.receive({serverContent:{outputTranscription:{text:'there',finished:true},turnComplete:true}});
 expect(await result).toMatchObject({transcript:'Hello there',dataBase64:audio.toString('base64')});expect(deltas.join('')).toBe('Hello there');
});

it('retains transcript fragments arriving after the completed audio turn', async()=>{
 vi.useFakeTimers();try{
  const f=fixture();const result=f.renderer.render('Hello there');f.socket.open();f.socket.receive({setupComplete:{}});audioTurn(f.socket);
  await vi.advanceTimersByTimeAsync(1000);
  f.socket.receive({serverContent:{outputTranscription:{text:'Hello there',finished:true}}});
  expect(await result).toMatchObject({transcript:'Hello there'});
 }finally{vi.useRealTimers();}
});
it('preserves completed audio when the provider closes during transcript grace',async()=>{
 const f=fixture();const result=f.renderer.render('Hello');f.socket.open();f.socket.receive({setupComplete:{}});audioTurn(f.socket);f.socket.dispatchEvent(new Event('close'));expect((await result).dataBase64).toBe(audio.toString('base64'));
});

it.each([
  ["Hello! Two", undefined],
  ["", undefined],
  ["Hello! Two plus three is 5.", "Hello! Two plus three is 5."],
  ["hello two plus three is 5", "hello two plus three is 5"],
])("never lets an incomplete transcript replace the complete reply: %s", async (transcript, expected) => {
  const f = fixture();
  const result = f.renderer.render("**Hello!** Two plus three is 5. 😀");
  f.socket.open();
  f.socket.receive({ setupComplete: {} });
  f.socket.receive({ serverContent: { outputTranscription: { text: transcript, finished: true } } });
  audioTurn(f.socket);
  expect((await result).transcript).toBe(expected);
});

it('generates one spoken reply and its native transcript from a typed question',async()=>{
  const {socket,socketFactory,renderer}=fixture('Kore');
  const result=renderer.generateReply('How are you?','You are Amina. Reply conversationally.');
  socket.open();
  expect(socketFactory.mock.calls).toHaveLength(1);
  expect(socket.sent[0]?.setup.outputAudioTranscription).toEqual({});
  expect(socket.sent[0]?.setup.systemInstruction.parts[0].text).toContain('You are Amina');
  socket.receive({setupComplete:{}});
  await vi.waitFor(()=>expect(socket.sent[1]?.clientContent.turns[0].parts[0].text).toBe('How are you?'));
  audioTurn(socket);
  socket.receive({serverContent:{outputTranscription:{text:'I’m doing well, thanks!',finished:true}}});
  expect(await result).toMatchObject({transcript:'I’m doing well, thanks!',dataBase64:audio.toString('base64')});
  expect(socket.sent).toHaveLength(2);
});
