import {describe,it,expect} from 'vitest';
import {readFileSync} from 'node:fs';
import {fileURLToPath} from 'node:url';
import {getCountryCallingCode} from 'libphonenumber-js/max';
import {contactGeographyVersion,contactCountries} from './country_contact_generated.js';

const repoRoot=fileURLToPath(new URL('../../../',import.meta.url));
const snapshot=JSON.parse(readFileSync(`${repoRoot}/data/contact-geography.v1.json`,'utf8'));
const mobile=JSON.parse(readFileSync(`${repoRoot}/apps/mobile/assets/contact_geography.json`,'utf8'));
describe('pinned ISO 3166-1/2 and calling-code authority',()=>{
 it('has one identical version and country/subdivision source for Flutter and Gateway',()=>{
  expect(mobile).toEqual(snapshot);
  expect(snapshot.version).toBe(contactGeographyVersion);
  expect(snapshot.source.commit).toBe('0ca8260');
  expect(snapshot.source.iso3166_2_sha256).toMatch(/^[a-f0-9]{64}$/);
  expect(Object.keys(contactCountries)).toHaveLength(snapshot.countries.length);
  for(const row of snapshot.countries){
   expect(contactCountries[row.iso]!.dialCode).toBe(row.dialCode);
   expect(getCountryCallingCode(row.iso)).toBe(row.dialCode);
   expect(contactCountries[row.iso]!.subdivisions).toEqual(row.subdivisions.map((s:{code:string})=>s.code));
   expect(new Set(row.subdivisions.map((s:{code:string})=>s.code)).size).toBe(row.subdivisions.length);
  }
 });
 it('includes FCT and maintained 16 Ghanaian regions and no synthetic subdivision',()=>{
  const ng=snapshot.countries.find((c:{iso:string})=>c.iso==='NG');
  const gh=snapshot.countries.find((c:{iso:string})=>c.iso==='GH');
  expect(ng.subdivisions.some((s:{code:string})=>s.code==='NG-FC')).toBe(true);
  expect(ng.subdivisions).toHaveLength(37);
  expect(gh.subdivisions).toHaveLength(16);
  expect(contactCountries.NG!.subdivisions).not.toContain('NG-ZZ');
 });
});
