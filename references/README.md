# External research references

Masanawa's donor/reference repositories are **optional research materials**, not production dependencies. They are not Git submodules and are not downloaded by cloning Masanawa.

The original 17 source projects remain listed in [SOURCES.md](SOURCES.md), together with upstream GitHub links. Reviewed reference revisions are preserved in [PINNED-SOURCES.md](PINNED-SOURCES.md).

## Fast Masanawa clone

```bash
git clone https://github.com/Baatiku/Masanawa.git
```

A regular checkout (including one made by GitHub Desktop or tools that previously used `--recurse-submodules`) no longer needs to fetch large external donor projects.

## Read an optional donor

Browse the pinned revision using the GitHub links recorded in [PINNED-SOURCES.md](PINNED-SOURCES.md), or clone only the reference you actually need into a **separate directory outside Masanawa**, for example:

```bash
git clone --filter=blob:none --no-checkout https://github.com/livekit/livekit.git ../livekit-reference
cd ../livekit-reference
git checkout 7ef0cd014e950373acd789557099305716eea196
```

A pinned commit may require further fetching if it is not included in a filtered clone. Do not automatically fetch every reference.

## Rules

1. Keep donor source outside production package and build contexts.
2. Never import external reference source into Masanawa runtime.
3. Read [pinned sources](PINNED-SOURCES.md), the upstream license and [third-party notices](../THIRD_PARTY_NOTICES.md) before adapting any external code.
4. Record any new adoption in a reviewed source PR and add applicable attribution; external code is not itself a Masanawa runtime component.
5. Research-source revision updates are deliberate and documented, not automatic dependency upgrades.

Existing local `references/sources/` checkouts from an older clone may be removed **after checking for local changes**; they are not part of the current tracked source.
