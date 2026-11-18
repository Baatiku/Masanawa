import {readFileSync} from 'node:fs';
import {describe,expect,it} from 'vitest';

const root=new URL('../',import.meta.url);
const workspace=readFileSync(new URL('pnpm-workspace.yaml',root),'utf8');
const gateway=readFileSync(new URL('services/gateway/package.json',root),'utf8');
describe('Railway Docker install inputs',()=>{
  it.each(['gateway','worker'])('%s no longer requires retired WhatsApp patches',service=>{
    const docker=readFileSync(new URL(`infra/deployment/${service}/Dockerfile`,root),'utf8');
    const installed=docker.indexOf('RUN pnpm install --frozen-lockfile');
    expect(installed).toBeGreaterThan(0);
    expect(docker.indexOf('COPY package.json pnpm-lock.yaml')).toBeLessThan(installed);
    expect(docker).not.toContain('COPY patches');
    // The new linked-device connector uses a reviewed direct library install;
    // it never resurrects the retired local Baileys/Rust source patches.
    expect(workspace).not.toMatch(/whatsapp-rust|patchedDependencies/);
    expect(workspace).toContain("'@whiskeysockets/baileys': true");
    expect(gateway).not.toMatch(/baileys|whatsapp-rust|qrcode/);
  });
});
