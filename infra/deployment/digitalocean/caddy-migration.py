#!/usr/bin/env python3
"""Change only the existing API site header; preserve unrelated proxy sites."""
import re,sys
from pathlib import Path
HEADER='{$MASANAWA_API_HOST} {$MASANAWA_API_ADDITIONAL_HOSTS} {'
def migrate_caddy(text):
 pattern=re.compile(r'^(?P<indent>[ \t]*)(?:https://)?(?:\{\$MASANAWA_API_HOST\}(?:[ \t]+\{\$MASANAWA_API_ADDITIONAL_HOSTS\})?|api\.masanawa\.com)[ \t]+\{[ \t]*$',re.M)
 matches=list(pattern.finditer(text))
 if len(matches)!=1:raise ValueError('The existing API site header needs review; unrelated sites were not changed')
 match=matches[0];indent=match.group('indent')
 header=indent+HEADER
 if '@chatmeup_private' not in text:
  header+='\n'+indent+'  @chatmeup_private path /auth/* /v1/* /agent/* /billing/* /webhooks/*\n'+indent+'  header @chatmeup_private Cache-Control "private, no-store, no-transform"'
 return text[:match.start()]+header+text[match.end():]
if __name__=='__main__':
 if len(sys.argv)!=3:raise SystemExit('Provide existing and staged Caddyfile paths')
 Path(sys.argv[2]).write_text(migrate_caddy(Path(sys.argv[1]).read_text()))
