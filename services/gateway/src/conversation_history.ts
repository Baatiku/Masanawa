import type { AgentConversationHistoryMessage } from "@masanawa/agents";

function boundedText(text: string): string {
  let bytes = 0;
  let result = "";
  for (const char of text.trim()) {
    const length = Buffer.byteLength(char, "utf8");
    if (bytes + length > 8192) break;
    result += char;
    bytes += length;
  }
  return result;
}

export function compileConversationHistory(
  messages: readonly {
    readonly requestId: string;
    readonly direction: "user" | "assistant";
    readonly text: string;
  }[],
  currentRequestId: string,
): readonly AgentConversationHistoryMessage[] {
  const turns = new Map<string, { user?: string; assistant?: string }>();
  for (const message of messages.slice(-32)) {
    if (message.requestId === currentRequestId) continue;
    const turn = turns.get(message.requestId) ?? {};
    turn[message.direction] = boundedText(message.text);
    turns.set(message.requestId, turn);
  }
  const result: AgentConversationHistoryMessage[] = [];
  let remaining = 24576;
  for (const turn of [...turns.values()].reverse()) {
    if (!turn.user || !turn.assistant) continue;
    const bytes =
      Buffer.byteLength(turn.user, "utf8") +
      Buffer.byteLength(turn.assistant, "utf8");
    // One oversized pair must not erase all smaller, useful older pairs.
    // Never include only half a pair or exceed the total budget.
    if (bytes > remaining) continue;
    result.unshift(
      { role: "user", text: turn.user },
      { role: "assistant", text: turn.assistant },
    );
    remaining -= bytes;
  }
  return Object.freeze(result.map((message) => Object.freeze(message)));
}
