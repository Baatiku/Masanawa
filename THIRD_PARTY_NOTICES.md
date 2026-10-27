# Third-Party Notices

Masanawa is a newly designed platform that studies, adapts, integrates, or reimplements capabilities observed across multiple reference projects and dependencies.

## Product rule

Third-party licensing does **not** decide whether a useful capability belongs in Masanawa.

Feature selection is architectural:
- **A** — preserve required behavior;
- **B** — preserve capability while redesigning implementation;
- **C** — deliberately retire/reference because Masanawa does not need it.

If a useful donor capability cannot be incorporated directly under Masanawa's distribution model, the capability remains A/B and is independently reimplemented behind Masanawa's canonical contracts.

## Reference vault

Pinned donor repositories live under `references/sources/`. Their own copyright and license files remain part of those upstream snapshots and are not Masanawa's project license.

Those notices are retained because they identify ownership of the reference material; they do not create architectural ownership inside Masanawa.

## Direct third-party code

Any third-party code intentionally included in canonical Masanawa source must retain whatever notices are required for that material. Such notices are compliance metadata only and do not define Masanawa package boundaries, domain ownership, APIs, data models, or product behavior.

## Canonical ownership

Masanawa's root `LICENSE` applies to original Masanawa work. Reference repositories and third-party dependencies remain separately owned by their respective copyright holders.


## Nigerian network identification images

Source: https://github.com/brightiortsor/circle-185-phonie/tree/main/images

The packaged MTN, Airtel, Glo and 9mobile images identify the selected carrier; they do not establish bundle availability, provider approval or delivery. Network marks belong to their respective owners. Source project license:

MIT License

Copyright (c) 2022 Charles Opute Odili

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
