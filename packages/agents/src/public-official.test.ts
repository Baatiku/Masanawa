import {expect,it} from 'vitest';
import {isGrokipediaArticleUrl,isApprovedBiographySourceUrl,isApprovedBiographyEvidence} from './public-official.js';
it('admits approved attributed launch references without admitting social posts, wrappers or spoofed hosts',()=>{
 for(const sourceUrl of ['https://en.wikipedia.org/wiki/Bola_Tinubu','https://www.premiumtimesng.com/news/profile.html']){
  expect(isApprovedBiographySourceUrl(sourceUrl)).toBe(true);
  expect(isApprovedBiographyEvidence({kind:'biographical_reference',sourceUrl})).toBe(true);
  expect(isApprovedBiographyEvidence({kind:'official_social',sourceUrl})).toBe(false);
 }
 for(const url of ['https://en.wikipedia.org.evil.test/wiki/Person','https://en.wikipedia.org/wiki/Special:Search',
  'https://user@en.wikipedia.org/wiki/Person','https://en.wikipedia.org/wiki/Person?redirect=x',
  'https://x.com/official/status/123','https://example.gov.ng/record','https://en.wikipedia.org/wiki/%00'])expect(isApprovedBiographySourceUrl(url)).toBe(false);
});
it('accepts only direct HTTPS Grokipedia article URLs without wrappers or alternate hosts',()=>{
 for(const url of ['https://grokipedia.com/page/Bola_Tinubu','https://www.grokipedia.com/page/Peter_Obi'])expect(isGrokipediaArticleUrl(url)).toBe(true);
 for(const url of [undefined,'http://grokipedia.com/page/name','https://grokipedia.com.evil.test/page/name',
  'https://grokipedia.com@evil.test/page/name','https://user@grokipedia.com/page/name',
  'https://grokipedia.com/page/name?redirect=evil','https://grokipedia.com/page/name#fragment',
  'https://grokipedia.com/','https://grokipedia.com/page/','https://grokipedia.com/page/a/b',
  'https://grokipedia.com/page/a%2Fb','https://grokipedia.com/page/%00','https://grokipedia.com/page/%ZZ'])expect(isGrokipediaArticleUrl(url)).toBe(false);
});
