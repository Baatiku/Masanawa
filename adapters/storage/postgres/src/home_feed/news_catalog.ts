/** Fixed RSS allowlist. Public feeds do not automatically grant commercial
 * metadata/brand reuse: per-tenant rights approval in PostgreSQL is required.
 * A row must match the exact URL/host; never fetch arbitrary operator URLs.
 */
export const newsCatalog = [
 {id:'bbc',name:'BBC News',feed:'https://feeds.bbci.co.uk/news/rss.xml',hosts:['bbc.com','bbc.co.uk']},
 {id:'aljazeera',name:'Al Jazeera',feed:'https://www.aljazeera.com/xml/rss/all.xml',hosts:['aljazeera.com']},
 {id:'dw',name:'DW News',feed:'https://rss.dw.com/xml/rss-en-all',hosts:['dw.com']},
 {id:'france24',name:'France 24',feed:'https://www.france24.com/en/rss',hosts:['france24.com']},
 {id:'guardian',name:'The Guardian',feed:'https://www.theguardian.com/world/rss',hosts:['theguardian.com']},
 {id:'africanews',name:'Africanews',feed:'https://www.africanews.com/feed/',hosts:['africanews.com']},
 {id:'globalvoices',name:'Global Voices',feed:'https://globalvoices.org/feed/',hosts:['globalvoices.org']},
] as const;
export type NewsCatalogEntry = typeof newsCatalog[number];
export function safeNewsArticleUrl(entry:NewsCatalogEntry,raw:string):string|null{
 if(raw.length>2048)return null;
 try{
  const u=new URL(raw);
  if(u.protocol!=='https:'||u.username||u.password||u.port||u.hash)return null;
  const host=u.hostname.toLowerCase();
  if(!entry.hosts.some(domain=>host===domain||host.endsWith('.'+domain)))return null;
  if(u.pathname==='/'||/\.(?:xml|rss)$/i.test(u.pathname))return null;
  for(const key of [...u.searchParams.keys()])
   if(/^(utm_|fbclid$|gclid$|at_medium$|at_campaign$)/i.test(key))u.searchParams.delete(key);
  u.searchParams.sort();return u.toString();
 }catch{return null;}
}
