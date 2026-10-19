import fs from "node:fs";
import path from "node:path";
import { describe, expect, it } from "vitest";

function walk(root: string): string[] {
  if (!fs.existsSync(root)) {
    return [];
  }
  return fs.readdirSync(root, { withFileTypes: true }).flatMap((entry) => {
    const full = path.join(root, entry.name);
    if (entry.isDirectory()) {
      // The policy covers maintained production imports, not transitive
      // packages or build output written by Next/Vite/TypeScript. Scanning
      // those files made this synchronous test time out after a build.
      if ([
        "node_modules", "dist", "build", ".next", ".nuxt", ".vercel",
        "coverage", ".turbo", ".dart_tool",
      ].includes(entry.name)) return [];
      return walk(full);
    }
    return entry.isFile() && /\.(?:ts|tsx|mts|cts|js|mjs|cjs)$/u.test(entry.name)
      ? [full]
      : [];
  });
}

describe("reference vault isolation", () => {
  it("excludes generated output but checks maintained code", () => {
    const root = fs.mkdtempSync(path.join(process.cwd(), "test", "references-walk-"));
    try {
      fs.mkdirSync(path.join(root, ".next", "server"), { recursive: true });
      fs.mkdirSync(path.join(root, "src"), { recursive: true });
      fs.writeFileSync(path.join(root, ".next", "server", "index.js"),
        'import "references/sources/ignored";');
      fs.writeFileSync(path.join(root, "src", "index.ts"), 'export const owner = 1;');
      expect(walk(root).map((file) => path.relative(root, file))).toEqual([
        path.join("src", "index.ts"),
      ]);
    } finally {
      fs.rmSync(root, { recursive: true, force: true });
    }
  });
  it("production code never imports references/sources", () => {
    const productionRoots = ["packages", "services", "apps", "adapters", "infra"];
    const offenders: string[] = [];

    for (const root of productionRoots) {
      for (const file of walk(path.resolve(root))) {
        const source = fs.readFileSync(file, "utf8");
        if (
          source.includes("references/sources") ||
          /from\s+["'][^"']*references\//u.test(source)
        ) {
          offenders.push(path.relative(process.cwd(), file));
        }
      }
    }

    expect(offenders).toEqual([]);
  });
});
