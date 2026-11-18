import { readFileSync } from 'node:fs';
import { describe, expect, it } from 'vitest';

describe('retired worker composition', () => {
  it('cannot restart retired engagement jobs from old environment variables', () => {
    const source = readFileSync(new URL('./main.ts', import.meta.url), 'utf8');
    for (const retired of ['createRoomTeacherRuntime', 'createYouTubeSyncRuntime',
      'createCreatorStatusRuntime', 'createRoomReplyNoticeRuntime', 'createP2pNoticeRuntime']) {
      expect(source).not.toContain(retired);
    }
    for (const retained of ['createScheduledFeedRuntime', 'createAccountDeletionPrivacyWorker',
      'createStaleConversationTurnRecovery', 'createP2pCustodyReconciliation',
      'createMsnwFundingObligationRecovery']) {
      expect(source).toContain(retained);
    }
  });
});
