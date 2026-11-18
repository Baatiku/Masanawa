import { randomUUID } from "node:crypto";
import { readFile } from "node:fs/promises";
import { Pool } from "pg";
import { describe, expect, it } from "vitest";

const connection = process.env.MASANAWA_TEST_DATABASE_URL;
const suite = connection ? describe : describe.skip;

suite("optional profile identity PostgreSQL migration", () => {
  it("allows phone-only/email-only customers while fencing duplicate real identities", async () => {
    const pool = new Pool({ connectionString: connection });
    const schema = "signup_test_" + randomUUID().replaceAll("-", "");
    const migrationRoot = new URL(
      "../../../../../packages/security/migrations/",
      import.meta.url,
    );
    const insert = (
      user: string,
      email: string | null,
      phone: string | null,
      tenant = "tenant",
    ) =>
      pool.query(
        `INSERT INTO ${schema}.platform_user_profiles
        (tenant_id,user_id,display_name,email,phone,created_at,updated_at)
        VALUES ($1,$2,'Test',$3,$4,clock_timestamp(),clock_timestamp())`,
        [tenant, user, email, phone],
      );
    try {
      await pool.query(`CREATE SCHEMA ${schema}`);
      for (const file of ["0100_platform_sessions.sql"]) {
        const sql = await readFile(new URL(file, migrationRoot), "utf8");
        await pool.query(sql.replaceAll("security.", schema + "."));
      }
      await insert("existing", null, "+12025550187");
      await expect(
        insert("blocked", null, "+12025550188"),
      ).rejects.toMatchObject({ code: "23505" });
      const forward = await readFile(
        new URL("0106_customer_profile_nullable_identity.sql", migrationRoot),
        "utf8",
      );
      await pool.query(forward.replaceAll("security.", schema + "."));
      await insert("phone-2", null, "+12025550188");
      await insert("email-1", "first@example.invalid", null);
      await insert("email-2", "second@example.invalid", null);
      await expect(
        insert("duplicate-phone", null, "+12025550187"),
      ).rejects.toMatchObject({ code: "23505" });
      await expect(
        insert("duplicate-email", "first@example.invalid", null),
      ).rejects.toMatchObject({ code: "23505" });
      await expect(insert("missing", null, null)).rejects.toMatchObject({
        code: "23514",
      });
      await insert("other-tenant", null, "+12025550187", "other");
      expect(
        (
          await pool.query(
            `SELECT count(*)::int AS count FROM ${schema}.platform_user_profiles`,
          )
        ).rows[0].count,
      ).toBe(5);
    } finally {
      await pool.query(`DROP SCHEMA IF EXISTS ${schema} CASCADE`);
      await pool.end();
    }
  }, 30000);
});
