import {readFileSync} from 'node:fs';
import {expect,it} from 'vitest';
import {projectVerifiedWholeGbBundles,type ApprovedWholeGbBundle} from './data_catalogue.js';

it('preserves the exact owner selection and purchased-MB amounts without removed products',()=>{
  const approved=JSON.parse(readFileSync(new URL('../../../../infra/deployment/gateway/flutterwave-data-approved-20261027.json',import.meta.url),'utf8')) as ApprovedWholeGbBundle[];
  expect(approved).toHaveLength(36);
  const codes=approved.map(x=>x.itemCode);
  expect(new Set(codes).size).toBe(36);
  for(const excluded of ['MD606','MD610','MD611','MD612','MD566','MD573','MD489','MD368','MD152','MD623','MD629','MD631','MD633'])
    expect(codes).not.toContain(excluded);
  expect(approved.filter(x=>x.network==='MTN')).toHaveLength(14);
  expect(approved.filter(x=>x.network==='GLO')).toHaveLength(8);
  expect(approved.filter(x=>x.network==='AIRTEL')).toHaveLength(11);
  expect(approved.filter(x=>x.network==='9MOBILE')).toHaveLength(3);
  expect(approved.every(x=>[1,2,7,30].includes(x.validityDays))).toBe(true);
  const live=approved.map(x=>({billerCode:x.billerCode,itemCode:x.itemCode,
    name:'provider fixture',amount:x.providerAmount,currency:'NGN' as const,labelName:null}));
  const bundles=projectVerifiedWholeGbBundles(approved,live,new Date(approved[0]!.reviewedAt));
  expect(bundles).toHaveLength(36);
  expect(bundles.find(x=>x.itemCode==='MD135')?.costMb).toBe(40);
  expect(bundles.find(x=>x.itemCode==='MD148')?.costMb).toBe(1050);
  expect(bundles.find(x=>x.itemCode==='MD613')?.costMb).toBe(20000);
});
