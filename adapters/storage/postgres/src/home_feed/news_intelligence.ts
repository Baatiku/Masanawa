/** Cheap, deterministic first gate. It runs before article fetching or AI work.
 * Never infer a state merely from the publisher's headquarters or account name.
 */
export const NEWS_MAX_AGE_MS = 7 * 24 * 60 * 60 * 1000;
export const NEWS_FUTURE_SKEW_MS = 5 * 60 * 1000;

export const NIGERIA_STATES = [
 ['abia','Abia'],['adamawa','Adamawa'],['akwa-ibom','Akwa Ibom'],['anambra','Anambra'],
 ['bauchi','Bauchi'],['bayelsa','Bayelsa'],['benue','Benue'],['borno','Borno'],
 ['cross-river','Cross River'],['delta','Delta'],['ebonyi','Ebonyi'],['edo','Edo'],
 ['ekiti','Ekiti'],['enugu','Enugu'],['fct','FCT Abuja'],['gombe','Gombe'],
 ['imo','Imo'],['jigawa','Jigawa'],['kaduna','Kaduna'],['kano','Kano'],
 ['katsina','Katsina'],['kebbi','Kebbi'],['kogi','Kogi'],['kwara','Kwara'],
 ['lagos','Lagos'],['nasarawa','Nasarawa'],['niger','Niger'],['ogun','Ogun'],
 ['ondo','Ondo'],['osun','Osun'],['oyo','Oyo'],['plateau','Plateau'],
 ['rivers','Rivers'],['sokoto','Sokoto'],['taraba','Taraba'],['yobe','Yobe'],['zamfara','Zamfara'],
] as const;
export type NigeriaState = typeof NIGERIA_STATES[number][0];
export const NEWS_STATES = new Set<string>(NIGERIA_STATES.map(([code])=>code));

const localPlaces:readonly [string,NigeriaState][] = [
 ['abuja','fct'],['gwagwalada','fct'],['kuje','fct'],['bwari','fct'],
 ['osogbo','osun'],['ilesa','osun'],['ile ife','osun'],['ede','osun'],['iwo','osun'],
 ['ikeja','lagos'],['ikorodu','lagos'],['badagry','lagos'],['lekki','lagos'],
 ['ibadan','oyo'],['ogbomoso','oyo'],['ilorin','kwara'],['abeokuta','ogun'],
 ['ado ekiti','ekiti'],['akure','ondo'],['benin city','edo'],['asaba','delta'],
 ['port harcourt','rivers'],['yenagoa','bayelsa'],['calabar','cross-river'],
 ['uyo','akwa-ibom'],['owerri','imo'],['umuahia','abia'],['awka','anambra'],
 ['onitsha','anambra'],['abakaliki','ebonyi'],['makurdi','benue'],
 ['minna','niger'],['lafia','nasarawa'],['jos','plateau'],['lokoja','kogi'],
 ['kaduna city','kaduna'],['zaria','kaduna'],['kano city','kano'],
 ['katsina city','katsina'],['birnin kebbi','kebbi'],['sokoto city','sokoto'],
 ['bauchi city','bauchi'],['gombe city','gombe'],['damaturu','yobe'],
 ['maiduguri','borno'],['yola','adamawa'],['jalingo','taraba'],
 ['dutse','jigawa'],['gusau','zamfara'],
];
const ambiguousStates = new Set(['niger','delta','rivers','plateau','imo','edo']);
const words = (s:string)=>` ${s.toLowerCase().normalize('NFKC').replace(/[^a-z0-9]+/g,' ').replace(/\s+/g,' ').trim()} `;
const has = (text:string,term:string)=>text.includes(words(term));

export type NigeriaRelevance = { states:NigeriaState[]; nationwide:boolean; locations:string[]; confident:boolean };
/** Only explicit locality mentions qualify. Unknown geography is not guessed. */
export function classifyNigeriaNews(title:string,summary:string):NigeriaRelevance {
 const titleText=words(title), all=words(`${title} ${summary}`);
 const states=new Set<NigeriaState>(),locations=new Set<string>();
 for(const [code,name] of NIGERIA_STATES){
  const matched=has(all,name)||has(all,`${name} state`) ||
   (code==='fct'&&(has(all,'FCT')||has(all,'Federal Capital Territory')));
  if(matched && (!ambiguousStates.has(code)||has(all,`${name} state`)||(code!=='niger'&&has(titleText,name)))){states.add(code);locations.add(name);}
 }
 for(const [place,code] of localPlaces)if(has(all,place)){states.add(code);locations.add(place);}
 const nationwide=/(?:nationwide|across nigeria|throughout nigeria|all (?:36 )?states|federal government of nigeria|nigeria wide)/.test(all)
  ||(states.size===0&&/(?:nigeria|nigerians)/.test(all));
 return {states:[...states].sort(),nationwide,locations:[...locations],confident:states.size>0||nationwide};
}
export function recentNewsTimestamp(raw:string,now=Date.now()):boolean {
 const time=Date.parse(raw);
 return Number.isFinite(time)&&time<=now+NEWS_FUTURE_SKEW_MS&&time>=now-NEWS_MAX_AGE_MS;
}
export const NEWS_CATEGORIES=['security','governance','public-services','health','education','infrastructure','economy','environment','elections','agriculture','community'] as const;
export type NewsCategory=typeof NEWS_CATEGORIES[number];
const publicTopics:readonly [NewsCategory,RegExp,number][]=[
 ['security',/\b(?:police|security|bandits?|kidnap|abduct|attack|violence|armed|terror|military|soldiers?|crime|accident|road crash|fire outbreak|rescue|emergency|missing persons?|civil defence|insurgency)\b/,95],
 ['health',/\b(?:hospitals?|clinics?|disease|outbreak|cholera|malaria|vaccin|medical|healthcare|health|doctors?|nurses?|ambulance|primary care|maternal|water contamination)\w*\b/,90],
 ['environment',/\b(?:flood|erosion|drought|disaster|weather warning|heavy rain|climate|pollution|waste disposal|landslide|environmental|water shortage|wildfire)\w*\b/,90],
 ['public-services',/\b(?:electricity|power outage|blackout|water supply|public notice|official notice|passport|national id|nin registration|service disruption|service restoration|transport fare|fuel scarcity|public holiday|consumer protection|social welfare)\w*\b/,87],
 ['infrastructure',/\b(?:roads?|bridges?|railway|rail line|construction|repair works?|road closure|traffic diversion|electric grid|power station|drainage|infrastructure|housing|transportation|airport|dam|roadblock)\b/,85],
 ['elections',/\b(?:inec|electoral|elections?|voters?|polling units?|ballot|gubernatorial|poll results?|vote buying|by-election)\b/,85],
 ['education',/\b(?:schools?|students?|teachers?|education|universit|college|polytechnic|examination|waec|neco|jamb|scholarship|tuition|academic|classrooms?)\w*\b/,80],
 ['economy',/\b(?:inflation|food prices?|market prices?|minimum wage|salaries?|pension|employment|unemployment|jobs?|recruitment|business|trade|taxation|taxes|tariff|customs|naira|economic|investments?|subsidy|budget|banking)\b/,78],
 ['agriculture',/\b(?:farmers?|harvest|agriculture|crops?|food security|fertili[sz]er|livestock|irrigation|fishery|farm produce|grain)\b/,78],
 ['governance',/\b(?:governor|president|minister|ministry|senate|assembly|lawmakers?|lawmakers|council|local government|legislation|policy|court|judges?|judgment|ruling|federal government|state government|public funds|corruption|appropriation|executive order|commissioner|judiciary|nass|ncdc|nema|frsc|efcc|icpc|ndlea)\b/,76],
 ['community',/\b(?:residents?|communities|communal|market closure|displaced|evacuation|protest|demonstration|town hall|civic meeting|local council|water project|public consultation|relief materials|skills training)\b/,68],
];
/** Reject entertainment-driven chatter before any costly enrichment. A story
 * must still match one of the practical civic categories above.
 */
export function classifyPublicInterest(title:string,summary:string):{category:NewsCategory|null;priority:number;relevant:boolean}{
 const normalized=words(`${title} ${summary}`).trim();
 const gossip=/\b(?:celebrity|gossip|red carpet|reality tv|music video|album launch|dating rumou?r|relationship drama|influencer feud|entertainment gist|fashion week|football transfer|premier league|champions league)\b/.test(normalized);
 const headline=words(title).trim();
 const topic=publicTopics.find(([,pattern])=>pattern.test(headline))??publicTopics.find(([,pattern])=>pattern.test(normalized));
 return {category:gossip?null:topic?.[0]??null,priority:gossip?0:topic?.[2]??0,relevant:!gossip&&!!topic};
}
const stop=new Set('a an and as at by for from has have in into is it its of on or the to with says said amid after before over up new latest nigeria nigerian state states govt government'.split(' '));
export function newsTokens(title:string):string[] {
 return [...new Set(words(title).trim().split(' ').filter(x=>(x.length>2||/^\d+$/.test(x))&&!stop.has(x)))].sort();
}
/** Conservative comparison: different locations and numeric claims must not be collapsed. */
export function nearDuplicateNews(a:{title:string;publishedAt:string;states?:readonly string[]},b:{title:string;publishedAt:string;states?:readonly string[]}):boolean {
 if(Math.abs(Date.parse(a.publishedAt)-Date.parse(b.publishedAt))>72*3600000)return false;
 const aa=new Set(newsTokens(a.title)),bb=new Set(newsTokens(b.title));
 if(aa.size<3||bb.size<3)return false;
 const nums=(set:Set<string>)=>[...set].filter(x=>/^\d+$/.test(x)).join(',');
 if(nums(aa)!==nums(bb))return false;
 const as=a.states||[],bs=b.states||[];
 if(as.length&&bs.length&&!as.some(s=>bs.includes(s)))return false;
 const intersection=[...aa].filter(x=>bb.has(x)).length;
 const union=new Set([...aa,...bb]).size;
 return intersection/union>=0.78 || (intersection/Math.min(aa.size,bb.size)>=0.9 && intersection>=4);
}
