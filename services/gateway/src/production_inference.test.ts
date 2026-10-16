import { describe, it, expect, vi } from "vitest";
import { createGeminiCredentialPoolInferenceProvider } from "./production_inference.js";
describe("production Gemini chat transport", () => {
  it("authenticates streaming replies without putting credentials inside the alt parameter", async () => {
    const fetchImpl = vi.fn<typeof fetch>(async (url, init) => {
      const request = new URL(String(url));
      expect(request.searchParams.get("alt")).toBe("sse");
      expect(new Headers(init?.headers).get("x-goog-api-key")).toBe(
        "private-test-key",
      );
      expect(request.search).not.toContain("private-test-key");
      return new Response(
        'data: {"candidates":[{"content":{"parts":[{"text":"Hello from Gemini"}]}}]}\n\n',
        { status: 200 },
      );
    });
    const deltas: string[] = [];
    const provider = createGeminiCredentialPoolInferenceProvider({
      pool: { apiKeys: ["private-test-key"], models: ["gemini-3.8-flash"] },
      fetchImpl,
    });
    expect(
      await provider.generate(
        {
          systemInstructions: ["Be helpful"],
          input: { kind: "text", text: "Hello" },
        },
        {
          onTextDelta: async (text) => {
            deltas.push(text);
          },
        },
      ),
    ).toEqual({ text: "Hello from Gemini" });
    expect(deltas).toEqual(["Hello from Gemini"]);
  });
});

it("does not restart a reply after a delta has already reached the app", async () => {
  const fetchImpl = vi.fn<typeof fetch>(
    async () =>
      new Response(
        'data: {"candidates":[{"content":{"parts":[{"text":"First words"}]}}]}\n\ndata: invalid-json\n\n',
      ),
  );
  const provider = createGeminiCredentialPoolInferenceProvider({
    pool: { apiKeys: ["a", "b"], models: ["gemini-3.8-flash"] },
    fetchImpl,
  });
  const onTextDelta = vi.fn(async () => {});
  await expect(
    provider.generate(
      { systemInstructions: [], input: { kind: "text", text: "Hello" } },
      { onTextDelta },
    ),
  ).rejects.toThrow();
  expect(fetchImpl).toHaveBeenCalledTimes(1);
  expect(onTextDelta).toHaveBeenCalledTimes(1);
});

it("tries the next configured key when Google rejects a credential", async () => {
  const log = vi.spyOn(console, "error").mockImplementation(() => {});
  const fetchImpl = vi.fn<typeof fetch>(async (_url, init) =>
    new Headers(init?.headers).get("x-goog-api-key") === "bad"
      ? Response.json(
          { error: { details: [{ reason: "API_KEY_INVALID" }] } },
          { status: 400 },
        )
      : Response.json({
          candidates: [{ content: { parts: [{ text: "Working reply" }] } }],
        }),
  );
  try {
    const provider = createGeminiCredentialPoolInferenceProvider({
      pool: { apiKeys: ["bad", "good"], models: ["gemini-3.8-flash"] },
      fetchImpl,
    });
    expect(
      await provider.generate({
        systemInstructions: [],
        input: { kind: "text", text: "Hello" },
      }),
    ).toEqual({ text: "Working reply" });
    expect(fetchImpl).toHaveBeenCalledTimes(2);
  } finally {
    log.mockRestore();
  }
});
