import {expect,it} from 'vitest';
import {normalizeUsername,usernameCandidates} from './usernames.js';
it('allocates memorable names in owner-approved collision order without arbitrary digits',()=>{
 expect(usernameCandidates({name:'Zainab Bala',contactPhone:'+2348031236428'})).toEqual([
  'zainab','zainab.bala','zainab.bala28','zainab.bala428','zainab.bala6428']);
 expect(usernameCandidates({name:'Zainab Bala'})).toEqual(['zainab','zainab.bala']);
 expect(usernameCandidates({name:'Élodie François'})).toEqual(['elodie','elodie.francois']);
 expect(usernameCandidates({name:'李 明'}).every(v=>/^[a-z]/u.test(v))).toBe(true);
 expect(usernameCandidates({name:'A'.repeat(60)+' '+'B'.repeat(60),contactPhone:'+2348031236428'})
  .every(v=>v.length<=40)).toBe(true);
});
it('normalizes deliberate handles and reserves platform/system identities',()=>{
 expect(normalizeUsername(' @Zainab.Bala28 ')).toBe('zainab.bala28');
 for(const value of ['a','admin','support','deleted_person','name..last','name.','123name','two names','name-foo'])
  expect(()=>normalizeUsername(value)).toThrow('username.invalid');
});
