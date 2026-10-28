Warning: truncated output (original token count: 39051)
Total output lines: 4962

import { createIsolatedPostgresTestDatabase } from "./home_feed/isolated_test_database.js";
import { generateKeyPairSync } from "node:crypto";
import { fileURLToPath } from "node:url";
import {
  createCanonicalId,
  normalizeCapabilityKey,
  toInstant,
  type OperationId,
} from "@masanawa/contracts";
import type { PlatformEvent } from "@masanawa/events";
import { createProviderRegistry } from "@masanawa/providers";
import {
  createToolRegistry,
  executeConsequentialTool,
} from "@masanawa/tools";
import {
  assertCurrentAuthority,
  createAuthorityContext,
  createPendingApproval,
  CredentialSecret,
  issueServiceCredential,
  resolveCredentialSecret,
  type CredentialEnvelopeCipher,
  verifyServiceCredential,
  type ApprovalBinding,
} from "@masanawa/security";
import { afterAll, beforeAll, beforeEach, describe, expect, it } from "vitest";
import type { Pool } from "pg";
import {
  createFaultInjector,
  InjectedCrash,
} from "../../../../test/support/fault-injection.js";
import {
  admitInboxEvent,
  beginReconciliation,
  checkPostgresReadiness,
  claimInboxBatch,
  claimOutboxBatch,
  createTenant,
  createUser,
  linkExternalUserIdentity,
  resolveUserByExternalIdentity,
  createCharacter,
  createCharacterVersion,
  publishCharacterVersion,
  activateCharacterVersion,
  getOrCreateRelationship,
  createMemoryRecord,
  appendMemoryRevision,
  linkMemoryRecords,
  getMemoryRecordInScope,
  listMemoryRecordsByScopes,
  enqueueMemoryExtraction,
  claimMemoryExtractionBatch,
  renewMemoryExtractionClaim,
  settleMemoryExtractionClaim,
  getMemoryExtractionJob,
  listMemoryExtractionAttempts,
  prepareMemoryScopePublication,
  executeMemoryScopePublication,
  createWorld,
  getWorld,
  admitSimulationInput,
  commitWorldGeneration,
  pauseWorld,
  recoverPausedWorld,
  putCharacterLifeState,
  appendWorldEvent,
  appendWorldInteraction,
  getWorldInteraction,
  putRoutine,
  admitRoutineOccurrence,
  putStoryArc,
  prepareWorldCanonGovernance,
  executeWorldCanonGovernance,
  putServiceVerificationKey,
  deactivateServiceVerificationKey,
  createPostgresServiceCredentialKeySource,
  createProviderCredentialRef,
  rotateProviderCredentialRef,
  revokeProviderCredentialRef,
  createPostgresCredentialMaterialSource,
  settlePendingApproval,
  setPolicyRevision,
  revokeAuthorityContext,
  persistPendingApproval,
  createPostgresCurrentAuthoritySource,
  createPostgresToolOperationStore,
  consumeOnceApproval,
  enqueueOutbox,
  listExternalReceiptsForOperation,
  prepareOperation,
  persistPlatformEventWithOutbox,
  recordExternalReceipt,
  renewOutboxClaim,
  runMigrations,
  settleInboxClaim,
  settleOutboxClaim,
  transitionReconciliationCase,
  transitionOperation,
  withTransaction,
} from "./index.js";

const connectionString = process.env.MASANAWA_TEST_DATABASE_URL;
const describePostgres = connectionString ? describe : describe.skip;
const eventMigrationDirectory = fileURLToPath(
  new URL("../../../../packages/events/migrations", import.meta.url),
);
const securityMigrationDirectory = fileURLToPath(
  new URL("../../../../packages/security/migrations", import.meta.url),
);
const identityMigrationDirectory = fileURLToPath(
  new URL("../../../../packages/identity/migrations", import.meta.url),
);
const memoryMigrationDirectory = fileURLToPath(
  new URL("../../../../packages/memory/migrations", import.meta.url),
);
const worldMigrationDirectory = fileURLToPath(
  new URL("../../../../packages/world/migrations", import.meta.url),
);
const foundationMigrationRootsForTest = [
  { owner: "events", directory: eventMigrationDirectory },
  { owner: "identity", directory: identityMigrationDirectory },
  { owner: "memory", directory: memoryMigrationDirectory },
  { owner: "security", directory: securityMigrationDirectory },
  { owner: "world", directory: worldMigrationDirectory },
] as const;

function testWorldPolicy() {
  return {
    schemaVersion: 1,
    catchUpMode: "skip",
    maxCatchUpSteps: 0,
    spatialEnabled: false,
    automaticCanonEnabled: true,
  } as const;
}

function testCharacterConstitution() {
  return {
    schemaVersion: 1,
    displayName: "Amina",
    biography: "",
    personality: [],
    boundaries: [],
    disclosurePolicy: {},
    languages: ["ha"],
    voiceReferences: [],
    appearanceReferences: [],
    expertise: [],
  } as const;
}

describePostgres("PostgreSQL 18 foundation integration", () => {
  let pool: Pool;
  let isolated: Awaited<ReturnType<typeof createIsolatedPostgresTestDatabase>>;

  beforeAll(async () => {
    isolated = await createIsolatedPostgresTestDatabase(connectionString!);
    pool = isolated.pool;

    const version = await pool.query<{ server_version_num: string }>(
      "SHOW server_version_num",
    );
    const versionNumber = Number(version.rows[0]?.server_version_num);
    expect(versionNumber).toBeGreaterThanOrEqual(180000);
    expect(versionNumber).toBeLessThan(190000);
  });

  beforeEach(async () => {
    // Identity owns creator tables too; dropping identity with CASCADE removes
    // their foreign keys, not the tables. Rebuild the entire owned fixture.
    await pool.query("DROP SCHEMA IF EXISTS creator CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS world CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS memory CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS creator CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS identity CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS security CASCADE");
    await pool.query("DROP SCHEMA IF EXISTS events CASCADE");
    await pool.query(
      "DROP TABLE IF EXISTS public.masanawa_schema_migrations CASCADE",
    );

    const applied = await runMigrations(pool, [
      { owner: "events", directory: eventMigrationDirectory },
      { owner: "identity", directory: identityMigrationDirectory },
      { owner: "memory", directory: memoryMigrationDirectory },
      { owner: "security", directory: securityMigrationDirectory },
      { owner: "world", directory: worldMigrationDirectory },
    ]);
    expect(applied).toEqual([
      "events/0001_event_foundation.sql",
      "events/0002_inbox_leases.sql",
      "events/0003_receipt_reconciliation_integrity.sql",
      "events/0004_outbox_recovery.sql",
      "identity/0001_identity_foundation.sql",
      "identity/0002_character_ownership.sql",
      "identity/0003_clone_setup.sql",
      "identity/0004_twin_profiles.sql",
      "identity/0005_account_deletion_requests.sql",
      "identity/0006_account_deletion_access_revocation.sql",
      "identity/0007_account_deletion_worker_progress.sql",
      "identity/0008_creator_agent_ownership.sql",
      "identity/0009_creator_completion.sql",
      "identity/0010_creator_status_cadence.sql",
      "memory/0001_memory_foundation.sql",
      "memory/0002_memory_lifecycle.sql",
      "memory/0003_memory_extraction_liveness.sql",
      "memory/0004_memory_retrieval_projections.sql",
      "memory/0005_memory_multisignal_projections.sql",
      "memory/0006_memory_tombstones.sql",
      "memory/0007_memory_reflections.sql",
      "security/0001_security_foundation.sql",
      "security/0002_approval_operation_integrity.sql",
      "security/0003_service_credentials.sql",
      "security/0004_provider_credentials.sql",
      "security/0100_platform_sessions.sql",
      "security/0101_customer_channels.sql",
      "security/0102_customer_channel_delivery.sql",
      "security/0103_customer_password_auth.sql",
      "security/0104_customer_channel_request_identity.sql",
      "security/0105_customer_channel_delivery_outbox.sql",
      "security/0106_customer_profile_nullable_identity.sql",
      "security/0107_customer_session_management.sql",
      "security/0108_password_recovery.sql",
      "security/0109_financial_step_up.sql",
      "security/0110_contact_security_events.sql",
      "security/0111_account_control_states.sql",
      "security/0112_session_client_labels.sql",
      "security/0113_masanawa_account_number.sql",
      "security/0114_assign_masanawa_account_numbers.sql",
      "security/0115_email_signup_contact.sql",
      "security/0116_signup_contact_geography.sql",
      "security/0117_contact_phone_legacy_parser_parity.sql",
      "world/0001_world_foundation.sql",
      "world/0002_world_canon.sql",
      "world/0003_world_routines_story_arcs.sql",
      "world/0004_world_interactions.sql",
      "world/0005_world_recovery.sql",
      "world/0006_world_evidence_publications.sql",
    ]);
  });

  afterAll(async () => {
    await isolated?.close();
  });

  it("resolves explicitly linked external identity only inside its tenant", async () => {
    const tenantId = createCanonicalId("tenant");
    const otherTenantId = createCanonicalId("tenant");
    const userId = createCanonicalId("user");
    const otherUserId = createCanonicalId("user");
    const now = toInstant(new Date());
    const subject = {
      system: "whatsapp",
      namespace: "jid",
      value: "234000000000@s.whatsapp.net",
      subjectKind: "user",
      authenticationStrength: "linked",
      observedAt: now,
    } as const;

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      await createTenant(client, { tenantId: otherTenantId, createdAt: now });
      await createUser(client, { tenantId, userId, createdAt: now });
      await createUser(client, { tenantId, userId: otherUserId, createdAt: now });

      await linkExternalUserIdentity(client, {
        tenantId,
        userId,
        subject,
        linkedAt: now,
      });

      await expect(
        resolveUserByExternalIdentity(client, tenantId, subject),
      ).resolves.toBe(userId);
      await expect(
        resolveUserByExternalIdentity(client, otherTenantId, subject),
      ).resolves.toBeNull();

      await expect(
        linkExternalUserIdentity(client, {
          tenantId,
          userId: otherUserId,
          subject,
          linkedAt: now,
        }),
      ).rejects.toMatchObject({
        code: "identity.external_subject_already_linked",
      });
    });
  });

  it("publishes and activates immutable CharacterVersion state with CAS", async () => {
    const tenantId = createCanonicalId("tenant");
    const userId = createCanonicalId("user");
    const characterId = createCanonicalId("character");
    const characterVersionId = createCanonicalId("character-version");
    const relationshipId = createCanonicalId("relationship");
    const now = toInstant(new Date());
    const constitution = {
      schemaVersion: 1,
      displayName: "Amina Bello",
      biography: "A persistent fictional character.",
      personality: ["warm", "curious"],
      boundaries: ["Keep private relationship state scoped."],
      disclosurePolicy: { aiNature: "disclose" },
      languages: ["ha", "en"],
      voiceReferences: [],
      appearanceReferences: [],
      expertise: ["education"],
    } as const;

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      await createUser(client, { tenantId, userId, createdAt: now });
      const character = await createCharacter(client, {
        tenantId,
        characterId,
        createdAt: now,
      });
      await createCharacterVersion(client, {
        tenantId,
        characterVersionId,
        characterId,
        versionNumber: 1,
        constitution,
        createdAt: now,
      });

      await expect(
        activateCharacterVersion(client, {
          tenantId,
          characterId,
          characterVersionId,
          expectedCharacterRevision: character.revision,
          activatedAt: now,
        }),
      ).rejects.toMatchObject({
        code: "identity.character_version_not_activatable",
      });

      await publishCharacterVersion(client, {
        tenantId,
        characterVersionId,
        publishedAt: now,
      });
      const activated = await activateCharacterVersion(client, {
        tenantId,
        characterId,
        characterVersionId,
        expectedCharacterRevision: character.revision,
        activatedAt: now,
      });

      expect(activated.activeCharacterVersionId).toBe(characterVersionId);
      expect(activated.revision).toBe(2);

      await expect(
        activateCharacterVersion(client, {
          tenantId,
          characterId,
          characterVersionId,
          expectedCharacterRevision: character.revision,
          activatedAt: now,
        }),
      ).rejects.toMatchObject({
        code: "identity.character_revision_conflict",
      });

      const relationship = await getOrCreateRelationship(client, {
        tenantId,
        relationshipId,
        userId,
        characterId,
        createdAt: now,
      });
      const replay = await getOrCreateRelationship(client, {
        tenantId,
        relationshipId: createCanonicalId("relationship"),
        userId,
        characterId,
        createdAt: now,
      });
      expect(replay.relationshipId).toBe(relationship.relationshipId);
    });

    await expect(
      pool.query(
        `UPDATE identity.character_versions
            SET constitution = '{"schemaVersion":1}'::jsonb
          WHERE tenant_id = $1 AND character_version_id = $2`,
        [tenantId, characterVersionId],
      ),
    ).rejects.toThrow(/immutable/u);
  });

  it("admits simulation input idempotently and settles it with one generation commit", async () => {
    const tenantId = createCanonicalId("tenant");
    const worldId = createCanonicalId("world");
    const initialGenerationId = createCanonicalId("world-generation");
    const nextGenerationId = createCanonicalId("world-generation");
    const now = toInstant("2026-10-01T10:00:00Z");
    const nextTime = toInstant("2026-10-01T10:05:00Z");

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      const world = await createWorld(client, {
        tenantId,
        worldId,
        initialGenerationId,
        policy: {
          schemaVersion: 1,
          catchUpMode: "bounded",
          maxCatchUpSteps: 12,
          spatialEnabled: false,
          automaticCanonEnabled: true,
        },
        simulationTime: now,
        createdAt: now,
      });
      expect(world.currentGenerationNumber).toBe(0);

      const first = await admitSimulationInput(client, {
        tenantId,
        worldId,
        idempotencyKey: "routine:morning:2026-10-01",
        kind: "routine.due",
        payload: { routineId: "morning" },
        receivedAt: now,
        effectiveAt: nextTime,
      });
      const replay = await admitSimulationInput(client, {
        tenantId,
        worldId,
        idempotencyKey: "routine:morning:2026-10-01",
        kind: "routine.due",
        payload: { routineId: "morning" },
        receivedAt: nextTime,
        effectiveAt: nextTime,
      });
      expect(replay.sequence).toBe(first.sequence);

      await expect(
        admitSimulationInput(client, {
          tenantId,
          worldId,
          idempotencyKey: "routine:morning:2026-10-01",
          kind: "routine.due",
          payload: { routineId: "different" },
          receivedAt: nextTime,
          effectiveAt: nextTime,
        }),
      ).rejects.toMatchObject({
        code: "world.simulation_input_conflict",
      });

      const committed = await commitWorldGeneration(client, {
        tenantId,
        worldId,
        expectedGenerationNumber: 0,
        nextGenerationId,
        simulationTime: nextTime,
        committedAt: nextTime,
        completedInputSequences: [first.sequence],
      });

      expect(committed.world.currentGenerationNumber).toBe(1);
      expect(committed.world.currentGenerationId).toBe(nextGenerationId);
      expect(committed.generation.previousGenerationId).toBe(
        initialGenerationId,
      );
      expect(committed.completedInputs).toHaveLength(1);
      expect(committed.completedInputs[0]?.state).toBe("completed");
      expect(committed.completedInputs[0]?.completedGenerationNumber).toBe(1);
    });
  });

  it("rejects stale competing world generations and backward simulation time", async () => {
    const tenantId = createCanonicalId("tenant");
    const otherTenantId = createCanonicalId("tenant");
    const worldId = createCanonicalId("world");
    const initialGenerationId = createCanonicalId("world-generation");
    const now = toInstant("2026-10-01T11:00:00Z");
    const nextTime = toInstant("2026-10-01T11:01:00Z");

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      await createTenant(client, { tenantId: otherTenantId, createdAt: now });
      await createWorld(client, {
        tenantId,
        worldId,
        initialGenerationId,
        policy: {
          schemaVersion: 1,
          catchUpMode: "skip",
          maxCatchUpSteps: 0,
          spatialEnabled: false,
          automaticCanonEnabled: false,
        },
        simulationTime: now,
        createdAt: now,
      });
    });

    const competing = await Promise.allSettled([
      withTransaction(pool, (client) =>
        commitWorldGeneration(client, {
          tenantId,
          worldId,
          expectedGenerationNumber: 0,
          nextGenerationId: createCanonicalId("world-generation"),
          simulationTime: nextTime,
          committedAt: nextTime,
          completedInputSequences: [],
        }),
      ),
      withTransaction(pool, (client) =>
        commitWorldGeneration(client, {
          tenantId,
          worldId,
          expectedGenerationNumber: 0,
          nextGenerationId: createCanonicalId("world-generation"),
          simulationTime: nextTime,
          committedAt: nextTime,
          completedInputSequences: [],
        }),
      ),
    ]);

    expect(competing.filter((result) => result.status === "fulfilled")).toHaveLength(1);
    expect(competing.filter((result) => result.status === "rejected")).toHaveLength(1);
    const rejected = competing.find((result) => result.status === "rejected");
    expect(rejected).toMatchObject({
      reason: expect.objectContaining({ code: "world.generation_conflict" }),
    });

    await withTransaction(pool, async (client) => {
      const current = await getWorld(client, tenantId, worldId);
      expect(current?.currentGenerationNumber).toBe(1);
      await expect(
        getWorld(client, otherTenantId, worldId),
      ).resolves.toBeNull();

      await expect(
        commitWorldGeneration(client, {
          tenantId,
          worldId,
          expectedGenerationNumber: 1,
          nextGenerationId: createCanonicalId("world-generation"),
          simulationTime: toInstant("2026-10-01T10:59:59Z"),
          committedAt: nextTime,
          completedInputSequences: [],
        }),
      ).rejects.toMatchObject({
        code: "world.simulation_time_regression",
      });
    });
  });

  it("recovers bounded routine catch-up in generation-recorded batches without duplicates", async () => {
    const tenantId = createCanonicalId("tenant");
    const worldId = createCanonicalId("world");
    const characterId = createCanonicalId("character");
    const versionId = createCanonicalId("character-version");
    const initialGenerationId = createCanonicalId("world-generation");
    const now = toInstant("2026-10-01T06:55:00Z");
    const resumeTo = toInstant("2026-10-03T08:00:00Z");

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      await createWorld(client, {
        tenantId,
        worldId,
        initialGenerationId,
        policy: {
          schemaVersion: 1,
          catchUpMode: "bounded",
          maxCatchUpSteps: 1,
          spatialEnabled: false,
          automaticCanonEnabled: true,
        },
        simulationTime: now,
        createdAt: now,
      });
      const character = await createCharacter(client, {
        tenantId,
        characterId,
        createdAt: now,
      });
      await createCharacterVersion(client, {
        tenantId,
        characterVersionId: versionId,
        characterId,
        versionNumber: 1,
        constitution: testCharacterConstitution(),
        createdAt: now,
      });
      await publishCharacterVersion(client, {
        tenantId,
        characterVersionId: versionId,
        publishedAt: now,
      });
      await activateCharacterVersion(client, {
        tenantId,
        characterId,
        characterVersionId: versionId,
        expectedCharacterRevision: character.revision,
        activatedAt: now,
      });
      await putRoutine(client, {
        tenantId,
        worldId,
        routineKey: "morning",
        characterId,
        characterVersionId: versionId,
        expectedRevision: null,
        timezone: "Africa/Lagos",
        localTime: "08:00",
        enabled: true,
        inputKind: "routine.due",
        inputPayload: { activity: "morning" },
        updatedAt: now,
      });

      const paused = await pauseWorld(client, {
        tenantId,
        worldId,
        expectedRevision: 1,
        pausedAt: now,
      });
      expect(paused).toMatchObject({
        status: "paused",
        revision: 2,
        pausedAt: now,
      });

      await expect(
        commitWorldGeneration(client, {
          tenantId,
          worldId,
          expectedGenerationNumber: 0,
          nextGenerationId: createCanonicalId("world-generation"),
          simulationTime: toInstant("2026-10-01T07:00:00Z"),
          committedAt: toInstant("2026-10-01T07:00:00Z"),
          completedInputSequences: [],
        }),
      ).rejects.toMatchObject({ code: "world.not_active" });

      const first = await recoverPausedWorld(client, {
        tenantId,
        worldId,
        expectedRevision: 2,
        nextGenerationId: createCanonicalId("world-generation"),
        resumeTo,
        requestedAt: toInstan…28051 tokens truncated…cementMemoryRevisionId = createCanonicalId("memory-revision");
    const now = toInstant("2026-10-02T06:00:00Z");
    const expiresAt = toInstant("2099-01-01T00:00:00Z");
    const sourceHash = "e".repeat(64);
    const privateVerbatim = "PRIVATE: user said seven, not eight.";

    await withTransaction(pool, async (client) => {
      await createTenant(client, { tenantId, createdAt: now });
      await createUser(client, { tenantId, userId, createdAt: now });
      await createCharacter(client, {
        tenantId,
        characterId,
        createdAt: now,
      });
      await getOrCreateRelationship(client, {
        tenantId,
        relationshipId,
        userId,
        characterId,
        createdAt: now,
      });
      await createWorld(client, {
        tenantId,
        worldId,
        initialGenerationId: createCanonicalId("world-generation"),
        policy: testWorldPolicy(),
        simulationTime: now,
        createdAt: now,
      });
      await setPolicyRevision(client, tenantId, "policy-1");
      await createMemoryRecord(client, {
        tenantId,
        memoryRecordId: sourceMemoryRecordId,
        memoryRevisionId: sourceMemoryRevisionId,
        memoryType: "fact",
        scope: { kind: "relationship", relationshipId },
        content: "The user's private preference may support a shared summary.",
        extractionMethod: "fixture",
        observedAt: now,
        evidence: [
          {
            sourceKind: "message",
            sourceReference: "fixture:publication:private-source",
            sourceContentHash: sourceHash,
            verbatimText: privateVerbatim,
            observedAt: now,
          },
        ],
        createdAt: now,
      });
    });

    const principal = {
      kind: "system",
      systemKind: "memory-publication-test",
    } as const;
    const baseAuthority = createAuthorityContext({
      tenantId,
      principal,
      scopes: [],
      capabilities: ["memory.scope.publish"],
      resourceScope: {
        relationshipIds: [relationshipId],
        worldIds: [worldId],
      },
      policyRevision: "policy-1",
      approvalIds: [],
      delegationChain: [],
      expiresAt,
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });

    const target = {
      tenantId,
      sourceMemoryRecordId,
      sourceMemoryRevisionId,
      sourceScope: { kind: "relationship", relationshipId } as const,
      targetMemoryRecordId,
      targetMemoryRevisionId,
      targetMemoryType: "fact" as const,
      targetScope: { kind: "world", worldId } as const,
      targetRevision: {
        content: "A deliberately approved shared summary.",
        extractionMethod: "publication-fixture",
        observedAt: now,
      },
      reason: "Explicitly approved for shared world continuity.",
    } as const;

    const unscopedAuthority = createAuthorityContext({
      tenantId,
      principal,
      scopes: [],
      capabilities: ["memory.scope.publish"],
      resourceScope: { worldIds: [worldId] },
      policyRevision: "policy-1",
      approvalIds: [],
      delegationChain: [],
      expiresAt,
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });
    await expect(
      prepareMemoryScopePublication(pool, {
        ...target,
        authority: unscopedAuthority,
        idempotencyKey: "memory-publish-unscoped",
        expiresAt,
      }),
    ).rejects.toMatchObject({
      code: "memory.publication_source_scope_mismatch",
    });

    const prepared = await prepareMemoryScopePublication(pool, {
      ...target,
      authority: baseAuthority,
      idempotencyKey: "memory-publish-1",
      expiresAt,
    });
    expect(prepared.reused).toBe(false);

    const approval = createPendingApproval({
      kind: "once",
      binding: prepared.binding,
      policyRevision: "policy-1",
      requestedAt: now,
      expiresAt,
    });
    await withTransaction(pool, async (client) => {
      await persistPendingApproval(client, approval);
      await settlePendingApproval(client, {
        tenantId,
        approvalId: approval.approvalId,
        decision: "approved",
        approverKey: "operator:memory-publication-test",
        decidedAt: now,
      });
    });

    const executeAuthority = createAuthorityContext({
      tenantId,
      principal,
      scopes: [],
      capabilities: ["memory.scope.publish"],
      resourceScope: {
        relationshipIds: [relationshipId],
        worldIds: [worldId],
      },
      policyRevision: "policy-1",
      approvalIds: [approval.approvalId],
      delegationChain: [],
      expiresAt,
      requestId: createCanonicalId("request"),
      correlationId: createCanonicalId("correlation"),
    });

    const published = await executeMemoryScopePublication(pool, {
      ...target,
      authority: executeAuthority,
      operationId: prepared.operation.operationId,
      approvalId: approval.approvalId,
      publishedAt: now,
    });
    expect(published.reused).toBe(false);
    expect(published.operation.state).toBe("succeeded");
    expect(published.target.record.scope).toEqual({
      kind: "world",
      worldId,
    });
    expect(published.target.currentRevision.content).toBe(
      "A deliberately approved shared summary.",
    );
    expect(published.target.currentRevision.evidence).toHaveLength(1);
    expect(published.target.currentRevision.evidence[0]).toMatchObject({
      sourceKind: "operator",
      sourceReference: `memory-publication:${prepared.operation.operationId}`,
      verbatimText: null,
    });
    expect(published.target.currentRevision.evidence[0]?.sourceContentHash).toHaveLength(64);

    await withTransaction(pool, async (client) => {
      const sourceImmediatelyAfterPublication = await getMemoryRecordInScope(client, {
        tenantId,
        memoryRecordId: sourceMemoryRecordId,
        scope: { kind: "relationship", relationshipId },
      });
      expect(sourceImmediatelyAfterPublication?.record.lifecycleState).toBe("active");
      expect(sourceImmediatelyAfterPublication?.record.scope).toEqual({
        kind: "relationship",
        relationshipId,
      });
      expect(
        sourceImmediatelyAfterPublication?.currentRevision.evidence[0]?.verbatimText,
      ).toBe(privateVerbatim);
    });

    const replay = await executeMemoryScopePublication(pool, {
      ...target,
      authority: executeAuthority,
      operationId: prepared.operation.operationId,
      approvalId: approval.approvalId,
      publishedAt: now,
    });
    expect(replay.reused).toBe(true);

    await withTransaction(pool, async (client) => {
      await createMemoryRecord(client, {
        tenantId,
        memoryRecordId: replacementMemoryRecordId,
        memoryRevisionId: replacementMemoryRevisionId,
        memoryType: "fact",
        scope: { kind: "relationship", relationshipId },
        content: "A later private correction supersedes the original source.",
        extractionMethod: "fixture",
        observedAt: now,
        evidence: [
          {
            sourceKind: "message",
            sourceReference: "fixture:publication:later-correction",
            sourceContentHash: "1".repeat(64),
            observedAt: now,
          },
        ],
        createdAt: now,
      });
      await linkMemoryRecords(client, {
        tenantId,
        sourceMemoryRecordId,
        expectedSourceLifecycleRevision: 1,
        targetMemoryRecordId: replacementMemoryRecordId,
        kind: "supersedes",
        reason: "Later private evidence superseded the publication source.",
        transitionedAt: now,
      });
    });

    // The already-succeeded publication is a receipt, not a fresh mutation. It must
    // remain replayable after the private source lifecycle advances.
    const replayAfterSupersession = await executeMemoryScopePublication(pool, {
      ...target,
      authority: executeAuthority,
      operationId: prepared.operation.operationId,
      approvalId: approval.approvalId,
      publishedAt: now,
    });
    expect(replayAfterSupersession.reused).toBe(true);
    expect(replayAfterSupersession.target.record.memoryRecordId).toBe(
      targetMemoryRecordId,
    );

    await withTransaction(pool, async (client) => {
      const source = await getMemoryRecordInScope(client, {
        tenantId,
        memoryRecordId: sourceMemoryRecordId,
        scope: { kind: "relationship", relationshipId },
      });
      expect(source?.record.lifecycleState).toBe("superseded");
      expect(source?.record.scope).toEqual({
        kind: "relationship",
        relationshipId,
      });
      expect(source?.currentRevision.evidence[0]?.verbatimText).toBe(
        privateVerbatim,
      );

      await expect(
        getMemoryRecordInScope(client, {
          tenantId,
          memoryRecordId: targetMemoryRecordId,
          scope: { kind: "relationship", relationshipId },
        }),
      ).resolves.toBeNull();
    });

    const audit = await pool.query<Record<string, unknown>>(
      `SELECT to_jsonb(publication) AS publication
         FROM memory.scope_publications publication
        WHERE tenant_id = $1
          AND operation_id = $2`,
      [tenantId, prepared.operation.operationId],
    );
    expect(audit.rowCount).toBe(1);
    expect(JSON.stringify(audit.rows[0])).not.toContain(privateVerbatim);

    const approvalState = await pool.query<{ state: string }>(
      `SELECT state
         FROM security.approvals
        WHERE tenant_id = $1
          AND approval_id = $2`,
      [tenantId, approval.approvalId],
    );
    expect(approvalState.rows[0]?.state).toBe("consumed");

    await expect(
      pool.query(
        `UPDATE memory.scope_publications
            SET reason = 'rewritten publication'
          WHERE tenant_id = $1
            AND operation_id = $2`,
        [tenantId, prepared.operation.operationId],
      ),
    ).rejects.toMatchObject({ code: "23514" });

    await expect(
      pool.query(
        `UPDATE memory.records
            SET scope_kind = 'world',
                scope_ref_id = $1
          WHERE tenant_id = $2
            AND memory_record_id = $3`,
        [worldId, tenantId, sourceMemoryRecordId],
      ),
    ).rejects.toMatchObject({ code: "23514" });
  });


  it("admits memory extraction idempotently and binds the key to exact scoped source evidence", async () => {
    const tenantId = createCanonicalId("tenant");
    const relationshipId = createCanonicalId("relationship");
    const now = toInstant("2026-10-01T00:00:00Z");
    const input = {
      tenantId,
      idempotencyKey: "turn:memory-extraction:1",
      scope: { kind: "relationship", relationshipId } as const,
      source: {
        kind: "message" as const,
        reference: "message:memory-extraction:1",
        contentHash: "2".repeat(64),
      },
      extractor: {
        key: "default-facts",
        version: "1",
      },
      maxAttempts: 3,
      availableAt: now,
    } as const;

    const first = await withTransaction(pool, (client) =>
      enqueueMemoryExtraction(client, input),
    );
    expect(first.reused).toBe(false);
    expect(first.job.state).toBe("queued");
    expect(first.job.scope).toEqual(input.scope);
    expect(first.job.source).toEqual(input.source);
    expect(first.job.requestFingerprint).toHaveLength(64);

    const replay = await withTransaction(pool, (client) =>
      enqueueMemoryExtraction(client, {
        ...input,
        availableAt: toInstant("2026-10-01T00:10:00Z"),
      }),
    );
    expect(replay.reused).toBe(true);
    expect(replay.job.memoryExtractionId).toBe(first.job.memoryExtractionId);

    await expect(
      withTransaction(pool, (client) =>
        enqueueMemoryExtraction(client, {
          ...input,
          source: {
            ...input.source,
            contentHash: "3".repeat(64),
          },
        }),
      ),
    ).rejects.toMatchObject({
      code: "memory.extraction_idempotency_conflict",
    });
  });

  it("dead-letters poison extraction without blocking later eligible jobs", async () => {
    const tenantId = createCanonicalId("tenant");
    const relationshipId = createCanonicalId("relationship");
    const now = toInstant("2026-10-01T00:00:00Z");

    const enqueue = async (
      key: string,
      sourceHash: string,
      maxAttempts: number,
    ) =>
      withTransaction(pool, (client) =>
        enqueueMemoryExtraction(client, {
          tenantId,
          idempotencyKey: key,
          scope: { kind: "relationship", relationshipId },
          source: {
            kind: "message",
            reference: `message:${key}`,
            contentHash: sourceHash,
          },
          extractor: { key: "default-facts", version: "1" },
          maxAttempts,
          availableAt: now,
        }),
      );

    const poison = await enqueue(
      "extract:poison",
      "4".repeat(64),
      2,
    );
    const healthy = await enqueue(
      "extract:healthy",
      "5".repeat(64),
      3,
    );

    const [firstClaim] = await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-a",
      limit: 1,
      leaseMs: 60_000,
    });
    expect(firstClaim?.memoryExtractionId).toBe(
      poison.job.memoryExtractionId,
    );
    expect(firstClaim?.attempt).toBe(1);

    const firstFailure = await settleMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: poison.job.memoryExtractionId,
      workerId: "memory-worker-a",
      fence: firstClaim!.fence,
      settlement: {
        outcome: "retryable-failure",
        safeErrorCode: "extractor.malformed_output",
        retryAt: now,
      },
    });
    expect(firstFailure.state).toBe("retry-scheduled");

    const secondClaims = await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-b",
      limit: 2,
      leaseMs: 60_000,
    });
    expect(secondClaims).toHaveLength(2);

    const poisonClaim = secondClaims.find(
      (claim) =>
        claim.memoryExtractionId === poison.job.memoryExtractionId,
    );
    const healthyClaim = secondClaims.find(
      (claim) =>
        claim.memoryExtractionId === healthy.job.memoryExtractionId,
    );
    expect(poisonClaim?.attempt).toBe(2);
    expect(healthyClaim?.attempt).toBe(1);

    const poisonTerminal = await settleMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: poison.job.memoryExtractionId,
      workerId: "memory-worker-b",
      fence: poisonClaim!.fence,
      settlement: {
        outcome: "retryable-failure",
        safeErrorCode: "extractor.malformed_output",
        retryAt: now,
      },
    });
    expect(poisonTerminal.state).toBe("dead-letter");
    expect(poisonTerminal.safeErrorCode).toBe(
      "extractor.malformed_output",
    );

    const healthyTerminal = await settleMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: healthy.job.memoryExtractionId,
      workerId: "memory-worker-b",
      fence: healthyClaim!.fence,
      settlement: { outcome: "completed" },
    });
    expect(healthyTerminal.state).toBe("completed");

    const later = await enqueue(
      "extract:later",
      "6".repeat(64),
      2,
    );
    const [laterClaim] = await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-c",
      limit: 1,
      leaseMs: 60_000,
    });
    expect(laterClaim?.memoryExtractionId).toBe(
      later.job.memoryExtractionId,
    );
    await settleMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: later.job.memoryExtractionId,
      workerId: "memory-worker-c",
      fence: laterClaim!.fence,
      settlement: { outcome: "no-facts" },
    });

    await withTransaction(pool, async (client) => {
      const poisonJob = await getMemoryExtractionJob(
        client,
        tenantId,
        poison.job.memoryExtractionId,
      );
      expect(poisonJob?.state).toBe("dead-letter");

      const poisonAttempts = await listMemoryExtractionAttempts(
        client,
        tenantId,
        poison.job.memoryExtractionId,
      );
      expect(poisonAttempts.map((attempt) => attempt.outcome)).toEqual([
        "retry-scheduled",
        "dead-letter",
      ]);

      const laterJob = await getMemoryExtractionJob(
        client,
        tenantId,
        later.job.memoryExtractionId,
      );
      expect(laterJob?.state).toBe("no-facts");
    });
  });

  it("reclaims an expired extraction lease and fences the stale worker", async () => {
    const tenantId = createCanonicalId("tenant");
    const now = toInstant("2026-10-01T00:00:00Z");
    const admitted = await withTransaction(pool, (client) =>
      enqueueMemoryExtraction(client, {
        tenantId,
        idempotencyKey: "extract:lease-recovery",
        scope: { kind: "organization" },
        source: {
          kind: "platform-event",
          reference: "event:lease-recovery",
          contentHash: "7".repeat(64),
        },
        extractor: { key: "default-facts", version: "1" },
        maxAttempts: 2,
        availableAt: now,
      }),
    );

    const [first] = await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-stale",
      limit: 1,
      leaseMs: 60_000,
    });
    expect(first?.attempt).toBe(1);

    const renewed = await renewMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: admitted.job.memoryExtractionId,
      workerId: "memory-worker-stale",
      fence: first!.fence,
      leaseMs: 120_000,
    });
    expect(renewed.fence).toBe(first!.fence);

    await withTransaction(pool, async (client) => {
      await client.query(
        `UPDATE memory.extraction_jobs
            SET lease_expires_at = clock_timestamp() - interval '1 second'
          WHERE tenant_id = $1
            AND memory_extraction_id = $2`,
        [tenantId, admitted.job.memoryExtractionId],
      );
      await client.query(
        `UPDATE memory.extraction_attempts
            SET lease_expires_at = clock_timestamp() - interval '1 second'
          WHERE tenant_id = $1
            AND memory_extraction_id = $2
            AND attempt = 1`,
        [tenantId, admitted.job.memoryExtractionId],
      );
    });

    const [reclaimed] = await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-recovery",
      limit: 1,
      leaseMs: 60_000,
    });
    expect(reclaimed?.memoryExtractionId).toBe(
      admitted.job.memoryExtractionId,
    );
    expect(reclaimed?.attempt).toBe(2);
    expect(reclaimed!.fence).toBeGreaterThan(first!.fence);

    await expect(
      settleMemoryExtractionClaim(pool, {
        tenantId,
        memoryExtractionId: admitted.job.memoryExtractionId,
        workerId: "memory-worker-stale",
        fence: first!.fence,
        settlement: { outcome: "completed" },
      }),
    ).rejects.toMatchObject({
      code: "memory.extraction_stale_claim",
    });

    await settleMemoryExtractionClaim(pool, {
      tenantId,
      memoryExtractionId: admitted.job.memoryExtractionId,
      workerId: "memory-worker-recovery",
      fence: reclaimed!.fence,
      settlement: { outcome: "completed" },
    });

    await withTransaction(pool, async (client) => {
      const attempts = await listMemoryExtractionAttempts(
        client,
        tenantId,
        admitted.job.memoryExtractionId,
      );
      expect(attempts.map((attempt) => attempt.outcome)).toEqual([
        "lease-expired",
        "completed",
      ]);
    });
  });

  it("dead-letters a final crashed extraction attempt instead of reclaiming forever", async () => {
    const tenantId = createCanonicalId("tenant");
    const now = toInstant("2026-10-01T00:00:00Z");
    const admitted = await withTransaction(pool, (client) =>
      enqueueMemoryExtraction(client, {
        tenantId,
        idempotencyKey: "extract:final-expired",
        scope: { kind: "organization" },
        source: {
          kind: "platform-event",
          reference: "event:final-expired",
          contentHash: "8".repeat(64),
        },
        extractor: { key: "default-facts", version: "1" },
        maxAttempts: 1,
        availableAt: now,
      }),
    );

    await claimMemoryExtractionBatch(pool, {
      tenantId,
      workerId: "memory-worker-final",
      limit: 1,
      leaseMs: 60_000,
    });

    await withTransaction(pool, async (client) => {
      await client.query(
        `UPDATE memory.extraction_jobs
            SET lease_expires_at = clock_timestamp() - interval '1 second'
          WHERE tenant_id = $1
            AND memory_extraction_id = $2`,
        [tenantId, admitted.job.memoryExtractionId],
      );
      await client.query(
        `UPDATE memory.extraction_attempts
            SET lease_expires_at = clock_timestamp() - interval '1 second'
          WHERE tenant_id = $1
            AND memory_extraction_id = $2
            AND attempt = 1`,
        [tenantId, admitted.job.memoryExtractionId],
      );
    });

    await expect(
      claimMemoryExtractionBatch(pool, {
        tenantId,
        workerId: "memory-worker-should-not-reclaim",
        limit: 1,
        leaseMs: 60_000,
      }),
    ).resolves.toEqual([]);

    await withTransaction(pool, async (client) => {
      const job = await getMemoryExtractionJob(
        client,
        tenantId,
        admitted.job.memoryExtractionId,
      );
      expect(job).toMatchObject({
        state: "dead-letter",
        attempt: 1,
        safeErrorCode: "memory.extraction.lease_expired",
      });
      expect(job?.terminalAt).not.toBeNull();

      const attempts = await listMemoryExtractionAttempts(
        client,
        tenantId,
        admitted.job.memoryExtractionId,
      );
      expect(attempts).toHaveLength(1);
      expect(attempts[0]).toMatchObject({
        outcome: "lease-expired",
        safeErrorCode: "memory.extraction.lease_expired",
      });
    });
  });

});
