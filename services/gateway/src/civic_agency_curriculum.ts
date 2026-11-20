/** Teaching objectives are a navigation aid, not claims about a government
 * procedure, fee, entitlement or current officeholder. Each factual answer
 * must still be grounded in the admitted public-source evidence. */
export const CIVIC_AGENCY_LEARNING_PATHS:Readonly<Record<string,readonly string[]>>=Object.freeze({
  inec:['Origins, constitutional mandate and election bodies','Voter registration and the electoral register','How election stages and result publication work','Political parties, accountability and dispute routes','How INEC differs from courts and other institutions'],
  nimc:['History and legal mandate of the identity system','The purpose of the NIN and identity records','Public enrolment and correction guidance','Identity privacy and verification responsibilities','How NIMC relates to immigration, banks and registration bodies'],
  nafdac:['Origins and statutory mandate of product regulation','How regulated products are assessed and registered','Public product-safety information and alerts','Reporting suspected unsafe or counterfeit products','How NAFDAC works alongside health and standards authorities'],
  ncdc:['Origins and infectious-disease surveillance mandate','Public-health reporting and outbreak investigation','Prevention, alerts and evidence-based health communication','Federal and state public-health coordination','How NCDC differs from healthcare providers and regulators'],
  frsc:['History and legal role in road safety','Road-user responsibilities and safety education','Driver and vehicle-related public guidance','Crash response and appropriate reporting channels','How FRSC works alongside police and transport authorities'],
  cac:['History and legal basis of business registration','Differences among business names, companies and incorporated trustees','General registration and post-registration processes','Public company records and statutory filings','How CAC differs from tax, licensing and banking authorities'],
  cbn:['Origins and legal mandate of the central bank','Money, inflation and monetary policy','Payments, banks and financial-system oversight','Consumer information and published policy decisions','How the CBN differs from commercial banks and fiscal authorities'],
  efcc:['History and legal mandate of financial-crime enforcement','Types of alleged offences within its remit','General reporting, investigation and prosecution stages','Public prevention, rights and due process','How EFCC differs from ICPC, police and courts'],
  icpc:['History and legal mandate of anti-corruption work','Corruption prevention and public-sector integrity','General complaint and investigation channels','Public education and institutional accountability','How ICPC differs from EFCC and oversight bodies'],
  ndlea:['History and legal mandate of drug enforcement','Drug supply, trafficking and public safety','Prevention and public-awareness education','Law-enforcement processes and citizens’ rights','Coordination with health, customs and security bodies'],
  nis:['History and legal mandate of immigration administration','Passports and public travel-document guidance','Entry, residence and border procedures','Official application, enquiries and fraud prevention','How immigration differs from NIMC and customs'],
  nema:['History and national disaster-management mandate','Preparedness and types of emergencies','Relief coordination and public safety guidance','Roles of state and local emergency agencies','How NEMA works with responders and other authorities'],
  ncc:['History and telecommunications-regulation mandate','Licensing, networks and telecommunications services','Consumer rights and complaint routes','Spectrum, quality-of-service and competition concepts','How NCC differs from technology and data authorities'],
  nitda:['History and national digital-development remit','IT policy and digital-capacity programmes','Public digital standards and institutional guidance','Cybersecurity and privacy responsibilities across agencies','How NITDA relates to NCC and other digital institutions'],
  npa:['Origins and role in Nigeria’s ports','Ports, terminals and maritime infrastructure','General marine and shipping service functions','Public information and port-related processes','How NPA differs from customs and maritime regulators'],
  faan:['History and role in airport infrastructure','Airport facilities and passenger-service responsibilities','Aviation safety and travel-information boundaries','Public enquiries and airport services','How FAAN differs from aviation regulators and air-navigation authorities'],
});

export function civicAgencyLearningPath(id:string):readonly string[]{
  return CIVIC_AGENCY_LEARNING_PATHS[id]??[];
}
