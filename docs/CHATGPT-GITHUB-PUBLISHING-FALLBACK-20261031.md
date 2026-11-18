# ChatGPT Work GitHub publishing fallback — Masanawa

Applies to **Baatiku/Masanawa** in ordinary ChatGPT Chat/Work windows and coding environments that lack authenticated terminal Git. It does not alter the separate Codex Cloud environment, require a personal token in the repository, or authorize publishing to **Baatiku/Masanawa-App**.

## Purpose

The connected GitHub app may have repository write permission even while a shell `git push` reports `could not read Username`, `could not obtain a username`, `terminal prompts disabled`, or missing HTTPS/inline credentials. These are **two separate authentication paths**. A GitHub app's "Allow all actions" setting does not supply terminal credentials or override sandbox/security approvals.

**Default:** Publish through the authenticated GitHub connection whenever available. Do not repeatedly run an unauthenticated `git push`, ask the owner to approve the same terminal operation, or leave a completed implementation local merely because shell Git lacks credentials.

## Publishing procedure

1. Read `AGENTS.md`, `CONTINUE-HERE.md`, the applicable roadmap/contracts, and current GitHub `main` SHA. Inspect overlapping open PRs/workstream claims before editing. Keep `Masanawa-App` untouched.
2. Implement the **entire authorized connected batch** and run the appropriate combined local validation. Keep the exact tested file bytes and a list of changed paths. Do not publish a summary or fabricate content in place of a local change. Do not conflate successful local tests with phone/provider acceptance.
3. Use the connected GitHub app to confirm `Baatiku` identity and `Baatiku/Masanawa` write access. Create a uniquely named feature branch from the inspected `main` commit (or continue the actual existing workstream PR branch without overwriting another window's work).
4. Publish the exact changed files through the connected GitHub API, without terminal Git credentials:
   - For ordinary text edits, use the connector's **create/update file** operations on that feature branch, passing the fetched file blob SHA when replacing content.
   - For a coordinated multi-file commit, use **create blob → create tree based on the intended parent tree → create commit with the intended parent SHA → update branch ref**. Check expected branch-head SHA before moving the ref; never force-update another worker's branch.
   - Include additions, modifications, deletions, renames, executable bits and binary assets correctly. If the connector cannot faithfully transfer a file or mode, report the precise limitation, preserve the materialized work, and use an approved alternative; never silently omit files or claim the commit was published.
5. Fetch the published branch and compare its changed-path list/content or hashes with the locally validated tree. Resolve any drift, base movement or conflict without discarding collaborators' commits.
6. Open/update the PR to `main`. Check **exact PR head** Foundation, Mobile/Flutter, PostgreSQL, domain-specific and security workflows as applicable. Fix real failures in a coordinated repair pass, publish the correction and verify the new head. Merge only when required checks and repository policies permit. Verify `main` merge SHA and update the handoff/roadmap evidence where appropriate.
7. Report the branch, PR URL, exact head/merge SHA, checks, and any genuinely external blockers. A draft/local branch, a PR with pending CI, a successful API call without readback, and a passing unit test are not an accepted merge or end-to-end/device verification.

## If publishing fails

- **Unauthenticated `git push`:** Switch immediately to the connected GitHub app; do not retry shell credential prompts. No user-supplied token is needed for this path.
- **GitHub app tools absent:** Check available tools in that Chat/Work window, and ask it to use the installed GitHub plugin explicitly. Confirm connection and permissions. A different Codex Cloud environment is not a substitute for this Work window's missing app.
- **GitHub API 401/403 or missing repository:** Verify actual connected identity, repository scope, and action permission. A readable repository does not prove write permission.
- **Conflict or changed branch head:** Re-fetch remote state, reconcile without a force push, revalidate, and publish against the correct parent.
- **Approval/security gate:** Use eligible automatic review where available, but never circumvent a required approval, policy restriction or protected-branch rule. Escalate only the specific blocked action with its exact error; no blanket request for secrets or access.
- **Source files unavailable after a workspace reset:** Retrieve only previously published changes or an authorized saved artifact. Never invent a local commit's missing contents or claim it is recovered.

## Security

Never put a personal access token, credential-bearing Git remote, GitHub password, SSH private key or `gh auth token` output in chat, scripts, `AGENTS.md`, git history or logs. Never change approval settings without the owner's request. Never transfer work to `Baatiku/Masanawa-App`.

This is an **operational fallback**, not a change to ChatGPT's authentication internals: it prevents the known terminal-credentials failure from blocking publishing **when the authorized GitHub connector is available**, but cannot guarantee that every sensitive action will proceed without additional review.
