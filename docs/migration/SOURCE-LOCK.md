# Source Lock

Masanawa's rewrite is analysed against exact pinned source revisions so the target cannot move silently.

These are **reference-only external projects**, not Masanawa dependencies. Their previously reviewed commit SHAs remain recorded for reproducibility, but the donor Git submodules were removed to keep Masanawa cloning lightweight. They are not fetched by the application/package workspaces or by recursive cloning.

| Reference path | Source | Tracking branch | Pinned revision | Role |
|---|---|---|---|---|
| `domain/chatwithstars` | Baatiku/chatwithstars | platform-unification | `3ab02704118ce3d8f38a423c9a52e9d44a705aeb` | product/domain/governance/commerce/social/studio |
| `agents/openjarvis` | open-jarvis/OpenJarvis | main | `c4da16e1ca3d21f4cc1905d4200063e564104f0f` | agent strategies, skills, tools, security, traces/learning |
| `companion/neko` | Project-N-E-K-O/N.E.K.O | main | `48ac9243a9d8e75a37d7598548c29017df1c6d2e` | companion cognition, memory lifecycle, proactivity, plugins, embodiment |
| `presence/cyberverse` | Lynpoint/CyberVerse | main | `13a6a95b47e5e6f0809683458767746ad54d7d7f` | realtime digital-human behavior, PersonaAgent/background tasks |
| `digital-life/airi` | moeru-ai/airi | main | `85d90ab067ac4625875d5808364bd03bf324645e` | digital-life/embodiment/client architecture |
| `presence/livekit-server` | livekit/livekit | master | `7ef0cd014e950373acd789557099305716eea196` | production WebRTC/media server |
| `presence/livekit-agents-ts` | livekit/agents-js | main | `df97b867b3b16efbd348584c818cefc5536ef21a` | TypeScript realtime agent sessions/providers/jobs |
| `presence/livekit-agents-py` | livekit/agents | main | `d251b89e61fe5f8ba78e0b39b501d91b0856a2d0` | mature Python realtime agent/provider reference |
| `presence/pipecat` | pipecat-ai/pipecat | main | `6396f9771e4d7870b3d538fda38a4241caf6c642` | frame/pipeline realtime multimodal architecture |
| `memory/letta-server` | letta-ai/letta | main | `5bcdd177d70fa2b31a754cfcd801e77b2e1ab16a` | landing/historical pointer; active implementation moved to Letta Code |
| `memory/letta-code` | letta-ai/letta-code | main | `3687ea51f6d11eabc4ad7a7b163c649d023801ba` | persistent agent identity/experience/skills/shared memory |
| `memory/mem0` | mem0ai/mem0 | main | `94c3fe9f238f3dbf29c9ce98643bd71eb13077cd` | production memory extraction, temporal/entity retrieval, evaluation |
| `world/ai-town` | a16z-infra/ai-town | main | `8e05997f2409275669c8344b84a51692e83f3f33` | shared-world simulation and autonomous character interactions |
| `agents/eliza` | elizaOS/eliza | develop | `cda43c762c605b69e4fcb9a791092508814bf6c4` | TypeScript agent OS, providers/plugins/services/channels |
| `agents/microsoft-agent-framework` | microsoft/agent-framework | main | `e15c6dce2d10196a61c851a56ef3d839ff3c3ea7` | production multi-agent workflows/handoffs/A2A/MCP |
| `gateway/openclaw` | openclaw/openclaw | main | `83e4755b55e8864e48348f3eb2364ee3e5f0fb54` | gateway, channels, device nodes, workspace isolation, skills/memory/local-first ops |
| `skills/openclaw-agent-skills` | openclaw/agent-skills | main | `edf1e2f436fa2a5375c98052180a090a57223f9e` | reusable operational skill conventions and validation workflows |

## Clone

Clone **only Masanawa**, with no external donor repositories:

```bash
git clone https://github.com/Baatiku/Masanawa.git
```

For a faster first checkout when history is not needed:

```bash
git clone --depth 1 https://github.com/Baatiku/Masanawa.git
```

The 17 donor SHAs listed above are a **documentation-based reference lock**, not Git submodule pointers. Open `https://github.com/<owner>/<repo>/tree/<pinned-SHA>` when reviewing a donor, or check out a single donor separately as described in `references/README.md`. Do not run `git submodule update`; there are no tracked submodules.

## Refresh policy

Never run a source refresh as an incidental change.

For one donor:
1. inspect the relevant upstream project separately at its pinned revision and the proposed new revision;
2. record important capability/behavior changes in the migration ledgers;
3. update only that donor's documented pinned revision and tracking branch;
4. update license/provenance if needed;
5. commit as an explicit `references: refresh <source>` change.

No donor repository needs to be downloaded to clone, build, or run Masanawa.

A refresh must not silently alter donor decisions already used by implemented Masanawa code.

## Reference-only boundary

Nothing under `references/` may:
- be imported by a production Masanawa package;
- be included in a production container/build context by default;
- own Masanawa runtime state;
- be treated as an implicit dependency;
- bypass the Feature/Behaviour/Data/Integration ledgers.

Reference code may be studied, tested independently, or deliberately adapted under its license and Masanawa provenance rules.

## GPL boundary

CyberVerse is GPLv3 at its pinned baseline. Keep it reference-only by default. Architecture/behavior may inform a clean Masanawa implementation; direct incorporation requires a separate licensing ADR/review.
