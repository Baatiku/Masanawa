import { cpSync, readFileSync, renameSync, writeFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';

const require = createRequire(import.meta.url);
const provider = require.resolve('@innovatorssoft/baileys');
const lib = dirname(provider);

if (process.argv.includes('--check')) {
  const { RTCPeerConnection } = createRequire(provider)('@roamhq/wrtc');
  if (typeof RTCPeerConnection !== 'function') throw Error('Native WebRTC is unavailable');
  const { renderCallDisclosure, renderCallUnavailable } = await import('../dist/jobs/whatsapp_call_audio.js');
  for (const pcm of await Promise.all([renderCallDisclosure(), renderCallUnavailable()])) {
    if (pcm.length < 32000 || pcm.length % 2 !== 0) throw Error('Invalid caller announcement PCM');
  }
  const manager = readFileSync(join(lib, 'Voip', 'call-manager.mjs'), 'utf8');
  if (!manager.includes('session.masanawaAudioBridge ||')) throw Error('Missing call audio bridge patch');
  const { WasmEngine } = await import('@innovatorssoft/baileys/lib/Voip/wasm-engine.mjs');
  const engine = new WasmEngine({ pthreadPoolSize: 1, enableLogs: false });
  const timeout = setTimeout(() => { throw Error('WhatsApp call engine did not initialize'); }, 15_000);
  try {
    await engine.initialize();
    const rssMiB = Math.round(process.memoryUsage().rss / 1048576);
    if (rssMiB > 240) throw Error(`Call media startup used ${rssMiB} MiB`);
    console.log(`WhatsApp call media initialized at ${rssMiB} MiB RSS`);
  } finally {
    clearTimeout(timeout);
    engine.destroy();
  }
} else {
  const wasm = join(lib, 'wasm');
  cpSync(join(lib, 'Assets', 'Wasm'), wasm, { recursive: true });
  // The browser loader eagerly creates 20 Worker threads. Start three and
  // let it allocate more as needed for the single admitted voice call.
  replaceOnce(join(wasm, 'loader.js'),
    'for(var e=20;e--;)en.allocateUnusedWorker()', 'for(var e=3;e--;)en.allocateUnusedWorker()');

  // The adapter destroys its own thread pool, but did not own the Workers
  // created through the browser loader's factory. Terminate both on hangup.
  const engine = join(lib, 'Voip', 'wasm-engine.mjs');
  replaceOnce(engine, '            locateFile: () => this.#config.wasmPath,',
    '            pthreadPoolSizeOverride: 3,\n            locateFile: () => this.#config.wasmPath,');
  replaceOnce(engine, '    #unusedWorkers = [];', '    #unusedWorkers = [];\n    #loaderWorkers = new Set();');
  replaceOnce(engine, '        const totalWorkers = this.#unusedWorkers.length + this.#runningWorkers.length;',
    `        for (const worker of this.#loaderWorkers) void worker.terminate().catch(() => {});
        const totalWorkers = this.#unusedWorkers.length + this.#runningWorkers.length;`);
  replaceOnce(engine, '                    defaultResourceManager.registerWorkers(1);',
    `                    defaultResourceManager.registerWorkers(1);
                    this.#loaderWorkers.add(worker);
                    worker.once("exit", () => {
                        this.#loaderWorkers.delete(worker);
                        defaultResourceManager.unregisterWorkers(1);
                    });`);
  // Restrict media allocation to offers that reached the application’s
  // admission checks. The provider's accept flow starts the media engine.
  replaceOnce(join(lib, 'Voip', 'call-manager.mjs'),
    '                void this.#ensureSessionEngine(session).catch(() => {});',
    '                // Initialize media when the application accepts this offer.');
  // Without a native capture-start callback, the SDK starts the capture at
  // connection only for built-in sources other than silence. Our PCM bridge
  // takes over startAudio and uses silence as the SDK's default source.
  replaceOnce(join(lib, 'Voip', 'call-manager.mjs'),
    'if (callState === 6 && !session.audioFeeder && session._audioSource && session._audioSource !== "silence") {',
    'if (callState === 6 && !session.audioFeeder && (session.masanawaAudioBridge || (session._audioSource && session._audioSource !== "silence"))) {');
  // A pause or lease loss during media negotiation also fences late acceptance
  // while the SDK is still delivering its terminate stanza.
  for (const next of [
    '// 3. Send accept third',
    '// Start the WASM media path now that the peer has our accept on the wire.',
  ]) {
    const guard = 'if (session.ended) {\n                    return session;\n                }\n\n                ' + next;
    replaceOnce(join(lib, 'Voip', 'call-manager.mjs'), guard,
      guard.replace('session.ended', 'session.ended || session.masanawaAudioBridge === false'));
  }
  replaceOnce(join(lib, 'Voip', 'call-manager.mjs'),
    '                    if (session.engine && session._capturePtr && !session.ended) {',
    '                    if (session.masanawaAudioBridge && !session._capturePtr) throw new Error("Call audio capture unavailable");\n' +
    '                    if (session.engine && session._capturePtr && !session.ended) {');
  // link_info can exist without a creator or group token.
  replaceOnce(join(lib, 'Socket', 'messages-recv.js'),
    "const linkInfo = WABinary_1.getBinaryNodeChild(infoChild, 'link_info')",
    "const linkInfo = WABinary_1.getBinaryNodeChild(infoChild, 'link_info')\n                call.isCallLink = Boolean(linkInfo)");
}

function replaceOnce(path, before, after) {
  const source = readFileSync(path, 'utf8');
  if (source.includes(after)) return;
  if (source.split(before).length !== 2) throw Error(`Unexpected pinned call provider source at ${path}`);
  const temporary = `${path}.prepared`;
  writeFileSync(temporary, source.replace(before, after));
  renameSync(temporary, path);
}
