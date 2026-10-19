import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    include: [
      "packages/**/*.test.ts",
      "adapters/**/*.test.ts",
      "infra/**/*.test.ts",
      "services/**/*.test.ts",
      "apps/**/*.test.ts",
      "test/**/*.test.ts",
      "tests/**/*.test.ts",
    ],
    environment: "node",
    passWithNoTests: false,
    restoreMocks: true,
    clearMocks: true,
    // PostgreSQL acceptance suites rebuild shared schemas and migration ledger.
    // Concurrent files race on those global objects; run files serially only
    // when the real PostgreSQL acceptance URL is present (e.g. CI).
    fileParallelism: !process.env.MASANAWA_TEST_DATABASE_URL,
  },
});
