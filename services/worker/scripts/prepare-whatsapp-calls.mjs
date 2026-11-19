import { cpSync, readFileSync, renameSync, writeFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { dirname, join } from 'node:path';

const require = createRequire(import.meta.url);
const provider = require.resolve('@innovatorssoft/baileys');
const lib = dirname(provider);

if (process.argv.includes('--check')) {
  const { RTCPeerConnection } = createRequire(provider)('@roamhq/wrtc');
  if (typeof RTCPeerConnection !== 'function') throw Error('Native WebRTC is unavailable');
  const { renderCallDisclosure } = await import('../dist/jobs/whatsapp_call_audio.js');
  const disclosure = await renderCallDisclosure();
  if (disclosure.length < 32000 || disclosure.length % 2 !== 0) throw Error('Invalid caller disclosure PCM');
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
}

function replaceOnce(path, before, after) {
  const source = readFileSync(path, 'utf8');
  if (source.includes(after)) return;
  if (source.split(before).length !== 2) throw Error(`Unexpected pinned call provider source at ${path}`);
  const temporary = `${path}.prepared`;
  writeFileSync(temporary, source.replace(before, after));
  renameSync(temporary, path);
}
