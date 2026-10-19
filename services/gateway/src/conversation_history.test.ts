import { describe, it, expect } from "vitest";
import { compileConversationHistory } from "./conversation_history.js";
const row = (
  requestId: string,
  direction: "user" | "assistant",
  text: string,
) => ({ requestId, direction, text });
describe("bounded canonical conversation context", () => {
  it("includes only paired completed earlier turns in chronological roles", () => {
    const rows = [
      row("prior", "user", "17 plus 26, include mango"),
      row("prior", "assistant", "43, mango"),
      row("unanswered", "user", "Not completed"),
      row("current", "user", "What did I say?"),
      row("current", "assistant", "Must not include replay"),
    ];
    expect(compileConversationHistory(rows, "current")).toEqual([
      { role: "user", text: "17 plus 26, include mango" },
      { role: "assistant", text: "43, mango" },
    ]);
  });
  it("retains recent pairs within both message and UTF-8 size bounds", () => {
    const rows = Array.from({ length: 20 }, (_, i) => [
      row(String(i), "user", String(i) + "界".repeat(5000)),
      row(String(i), "assistant", "Reply " + i),
    ]).flat();
    const history = compileConversationHistory(rows, "current");
    expect(history.length).toBeLessThanOrEqual(32);
    expect(
      history.reduce((n, m) => n + Buffer.byteLength(m.text, "utf8"), 0),
    ).toBeLessThanOrEqual(24576);
    expect(history.at(-1)).toEqual({ role: "assistant", text: "Reply 19" });
    expect(history[0]?.role).toBe("user");
  });
  it("skips an oversized middle pair and preserves bounded older context", () => {
    const rows = [
      row("one", "user", "Earlier useful question"),
      row("one", "assistant", "Earlier useful answer"),
      row("two", "user", "界".repeat(5000)),
      row("two", "assistant", "界".repeat(5000)),
      row("three", "user", "Latest question" + "z".repeat(5500)),
      row("three", "assistant", "Latest answer" + "w".repeat(5500)),
    ];
    const history = compileConversationHistory(rows, "current");
    expect(history).toEqual([
      { role: "user", text: "Earlier useful question" },
      { role: "assistant", text: "Earlier useful answer" },
      { role: "user", text: "Latest question" + "z".repeat(5500) },
      { role: "assistant", text: "Latest answer" + "w".repeat(5500) },
    ]);
  });

});
