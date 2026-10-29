import {expect,it} from 'vitest';
import {isGrokipediaArticleUrl} from './public-official.js';
it('accepts only direct HTTPS Grokipedia article URLs without wrappers or alternate hosts',()=>{
 for(const url of ['https://grokipedia.com/page/Bola_Tinubu','https://www.grokipedia.com/page/Peter_Obi'])expect(isGrokipediaArticleUrl(url)).toBe(true);
 for(const url of [undefined,'http://grokipedia.com/page/name','https://grokipedia.com.evil.test/page/name',
  'https://grokipedia.com@evil.test/page/name','https://user@grokipedia.com/page/name',
  'https://grokipedia.com/page/name?redirect=evil','https://grokipedia.com/page/name#fragment',
  'https://grokipedia.com/','https://grokipedia.com/page/','https://grokipedia.com/page/a/b',
  'https://grokipedia.com/page/a%2Fb','https://grokipedia.com/page/%00','https://grokipedia.com/page/%ZZ'])expect(isGrokipediaArticleUrl(url)).toBe(false);
});
