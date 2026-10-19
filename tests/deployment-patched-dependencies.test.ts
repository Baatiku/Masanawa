import {readFileSync,existsSync} from 'node:fs';
import {describe,expect,it} from 'vitest';

const root=new URL('../',import.meta.url);
const pnpmWorkspace=readFileSync(new URL('pnpm-workspace.yaml',root),'utf8');
const patches=[
  'patches/@whiskeysockets__baileys@7.0.0-rc14.patch',
  'patches/whatsapp-rust-bridge@0.5.4.patch',
];
describe('Railway Docker install inputs',()=>{
  it.each(['gateway','worker'])('%s Dockerfile copies every pnpm patch before install',service=>{
    const docker=readFileSync(new URL(`infra/deployment/${service}/Dockerfile`,root),'utf8');
    const installed=docker.indexOf('RUN pnpm install --frozen-lockfile');
    const patchesCopied=docker.indexOf('COPY patches ./patches');
    expect(installed).toBeGreaterThan(0);
    expect(patchesCopied).toBeGreaterThan(0);
    expect(patchesCopied).toBeLessThan(installed);
    for(const patch of patches){
      expect(existsSync(new URL(patch,root))).toBe(true);
      expect(pnpmWorkspace).toContain(patch);
    }
  });
});
