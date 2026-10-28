# Checklist audit and ownership reset — 28 October 2026, 21:30 UTC

The owner requested an audit of open items, release of inactive windows' unfinished
selections, and a connected next batch of at least ten. This is a coordination
change, not implementation or checklist closure. Audit baseline:
`4502d4b1a99d545adb6abb3c9231c9e4adf488a1` (#591 merged).

## Counts from unique canonical checkbox IDs

| Checklist | Total | Complete | Open |
|---|---:|---:|---:|
| Stable UX roadmap | 59 | 51 | 8 |
| Status Promote & Earn (SPE) | 88 | 29 | 59 |
| **Combined** | **147** | **80** | **67** |

Open includes partially implemented items and actual provider/legal/economic
qualification. Old dated paragraphs reporting 8/88, 17/88 or similar are historical,
not current counts. No checkbox is changed by this reset, and an open PR is not
counted as completed. The eight remaining UX IDs are R02, R03, R06, F03, W04,
D05, D06 and NGN06 (all prefixed `UX-`). Their source/qualification distinctions
remain in [the stable audit](GOAL-CHECKLIST-AUDIT-20261028.md).

| SPE section | Complete | Open |
|---|---:|---:|
| A — Contracts/review/backend | 3 | 13 |
| B — Views/sharing/privacy | 3 | 14 |
| C — Home/composer/profile | 13 | 6 |
| D — Wallet/earnings/notifications/admin | 0 | 16 |
| E — Integrated acceptance | 3 | 9 |
| F — Country/signup/profile | 7 | 1 |

## Released unfinished reservations

The owner supplied the inactivity assessment. Repository evidence shows open
work and last recorded updates; it cannot observe another ChatGPT window's live
execution. The release is therefore explicitly owner-directed, rather than a
claim that a window's process was inspected or terminated.

| Former workstream | Open IDs released (all prefixed SPE-) | Count |
|---|---|---:|
| Core campaign/review backend (three duplicate claims) | A01, A03, A04, A06, A07, A09, A10 | 7 |
| Funded Masana/overlapping Boost/expiry | A12, A13, A14, A15, A16, B15, B17, E09, E10, E11 | 10 |
| Wallet/earnings/notifications | D01, D02, D03, D09, D10, D11, D12, D13, D14, D15 | 10 |
| Public visitor/referral/privacy | B01, B04, B05, B07, B10, B12, B14 | 7 |
| Country/profile follow-up | F08 | 1 |
| Legacy Home UI reservation in handoff | C09, C10, C13, C15 | 4 |
| **Unique unfinished reservations released** | | **39** |

The first five rows represent **35 explicit unique open claims**. The legacy
10-ID UI reservation in the handoff also included C04/C08/C11/C12/C17/C18, which
are already checked; only its four open items count toward the release. Similarly,
A02/A05/A08 and B11/B13/B16 stay completed, without stale ownership locks.
The original markers are preserved in [the immutable pre-reset checklist](https://github.com/Baatiku/Masanawa/blob/4502d4b1a99d545adb6abb3c9231c9e4adf488a1/docs/STATUS-PROMOTE-AND-EARN-IMPLEMENTATION-CHECKLIST-20261027.md)
and Git history. No partial implementation is deleted.

Preserved open PRs inspected during this audit:

| PR | Work to reuse/reconcile | Last updated UTC | Exact head |
|---|---|---|---|
| [#589](https://github.com/Baatiku/Masanawa/pull/589) | Private image upload, independent asset review, disclosure/CTA and staged edits | 28 Oct 09:59 | `c01b65ef4dd26f3280e49ea564bfd5292c1e9b20` |
| [#571](https://github.com/Baatiku/Masanawa/pull/571) (draft) | Destination approval and rejection appeals; overlaps later A work | 28 Oct 09:18 | `7f3d6d8378905156e41dc9b037d4bc39e788c05e` |
| [#565](https://github.com/Baatiku/Masanawa/pull/565) | Recharge recovery, private drafts and visual/semantics matrix | 28 Oct 05:40 | `b6a68003df6ac0d7620126a3c2c5f704a085bee3` |

#589's inspected Foundation check is failed; its retained-PG and roster checks
passed. None of these PRs is merged by this audit. Release of ownership is not
authority to force-push, delete branches, discard changes, or assume their tests
are green. Previously merged progress (#573, #558/#561, #576 and the public-view
PRs recorded in the checklist) remains available on main.

## Selected next batch — 12 connected items

Claim owner: **this Codex conversation**, token **HOME-COMPOSER-20261028-2130**.
The canonical active claim is in [the SPE checklist](STATUS-PROMOTE-AND-EARN-IMPLEMENTATION-CHECKLIST-20261027.md).
These are selections for implementation, not new completion checkmarks.

| IDs (all prefixed SPE-) | Connected work |
|---|---|
| A01, A03 | Canonical post/media/review contracts and original-operation campaign/draft recovery |
| A07, A09, A10 | Authorized approved images, safe reviewed CTA, edit/re-review and appeal/budget rules |
| C09, C10, D05 | One paid text/image composer, preview/private draft and existing Buy Data/recharge roundtrip with fresh quote |
| C13, C15, C16 | One responsive/accessible shared card suite, CTA/hide/report/management overflow and accurate Share versus Share & Earn |
| C19 | Owner-only My Posts/Inactive, countdown, approved media, Boost Again/Delete and correct permission/state labels |

This takes **all six remaining C items**, plus five A contracts and the one
existing-recharge integration item D05. It avoids separate repeated changes to
Home, detail, Saved, the paid sheet and profile. Work order is: reconcile the
existing backend/image branches and interfaces; reconcile the existing recharge
branch; finish shared composer/card/profile behavior; run one combined relevant
backend/PG/Flutter acceptance batch, repair failures and merge on green exact-head
checks. Update the journey map before screen changes. Coordinate shared backend
edits if another owner claims A04/A06/D06.

Dependencies remain explicit: admin-funded backing and settlement, trustworthy
view/fraud qualification, legal clearance and controlled media/CDN/backup purge
must not be invented by frontend fixtures or claimed as completed by this batch.
If a selected bundled contract depends on unfinished work outside these IDs,
record that dependency and keep it unchecked. No financial/public gate or provider
operation is authorized by selecting work; no APK is requested here.

After release and reselection, **12 open items are selected and 55 are unselected**
(47 SPE + 8 UX). Nine released items are reselected; **30 formerly reserved items
remain available**, alongside 25 other unselected open items. Only the current
canonical register controls ownership; historical progress notes do not.
