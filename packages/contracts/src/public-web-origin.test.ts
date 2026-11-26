import {describe,it,expect} from 'vitest';
import {publicWebOrigin} from './config.js';
describe('public web migration configuration',()=>{
 it('uses ChatMeUp by default and preserves explicit legacy environments',()=>{
  expect(publicWebOrigin()).toBe('https://app.chatmeup.online');
  expect(publicWebOrigin('https://app.masanawa.com')).toBe('https://app.masanawa.com');
 });
 it('rejects credentials, paths and insecure destinations',()=>{
  for(const raw of ['http://app.chatmeup.online','https://user:pass@app.chatmeup.online','https://app.chatmeup.online/path','https://app.chatmeup.online?token=x','https://app.chatmeup.online#hash'])expect(()=>publicWebOrigin(raw)).toThrow();
 });
});
