import {expect,it} from 'vitest';
import {createCanonicalId} from '@masanawa/contracts';
import {validateOfficialCohortPackets} from './official_cohort_cli.js';
import {OFFICIAL_ROSTER_MANIFEST} from './official_roster_manifest.js';
it('validates a whole operator cohort before database access and rejects name, identity and tenant reassignment',()=>{
 const until=new Date(Date.now()+86400000).toISOString(),tenant=createCanonicalId('tenant');
 const packets=OFFICIAL_ROSTER_MANIFEST.slice(0,2).map(s=>({tenantId:tenant,characterId:s.characterId,characterVersionId:s.characterVersionId,
  officialName:s.officialName,office:s.office,countryCode:'NG',identitySourceUrl:'https://grokipedia.com/page/Synthetic_fixture',reviewExpiresAt:until,
  publicProfile:{biography:'Synthetic parser fixture, not real biographical data.',lifeStory:'Synthetic parser fixture, not real biographical data.'},
  evidence:[{sourceUrl:'https://grokipedia.com/page/Synthetic_fixture',kind:'grokipedia',title:'Synthetic parser fixture',
   content:'Synthetic fixture, not a sourced biography.',sourceDate:'2020-01-01',validUntil:until,licenseBasis:'Synthetic test data'}]}));
 expect(validateOfficialCohortPackets(packets)).toHaveLength(2);
 for(const bad of [[],[packets[0],packets[0]],[packets[0],{...packets[1],tenantId:createCanonicalId('tenant')}],
  [{...packets[0],officialName:'Different person'}],[{...packets[0],characterId:createCanonicalId('character')}],
  [{...packets[0],publicProfile:undefined}]])expect(()=>validateOfficialCohortPackets(bad)).toThrow();
});
