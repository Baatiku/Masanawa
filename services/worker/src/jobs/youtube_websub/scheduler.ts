/**
 * One scheduler inside the canonical Worker process. The leased PostgreSQL
 * outbox remains the sole job authority; the timer does not store job state.
 * Failures never overlap with a running batch or prevent the next attempt.
 */
export function createYouTubeOutboxScheduler(input: {
  readonly runOnce: () => Promise<unknown>;
  readonly enabled: () => boolean;
  readonly intervalMs?: number;
  readonly onError?: (error: unknown) => void;
}) {
  const delay = input.intervalMs ?? 60_000;
  if (!Number.isSafeInteger(delay) || delay < 1_000 || delay > 3_600_000)
    throw new RangeError("youtube_poll_interval_invalid");
  let interval: ReturnType<typeof setInterval> | undefined;
  let current: Promise<unknown> | undefined;
  let stopped = false;
  let activeSince: number | null = null;
  let lastSuccess: number | null = null;
  let consecutiveFailures = 0;

  async function tick(): Promise<"disabled" | "busy" | "processed"> {
    if (stopped || !input.enabled()) return "disabled";
    if (current) return "busy";
    const work = Promise.resolve().then(input.runOnce);
    current = work;
    activeSince = Date.now();
    try {
      await work;
      lastSuccess = Date.now();
      consecutiveFailures = 0;
      return "processed";
    } catch (error) {
      consecutiveFailures++;
      throw error;
    } finally {
      if (current === work) {
        current = undefined;
        activeSince = null;
      }
    }
  }
  return Object.freeze({
    tick,
    // Process-local scheduler facts only. Durable pending/backlog counts
    // belong to the PostgreSQL job authority, not this timer.
    health() {
      const now = Date.now();
      const runningSeconds = activeSince === null
        ? 0 : Math.max(0, Math.floor((now - activeSince) / 1000));
      const lastSuccessAgeSeconds = lastSuccess === null
        ? null : Math.max(0, Math.floor((now - lastSuccess) / 1000));
      return {
        enabled: !stopped && Boolean(interval) && input.enabled(),
        runningSeconds,
        lastSuccessAgeSeconds,
        stuck: activeSince !== null && now - activeSince > Math.max(delay * 3, 60000) ? 1 : 0,
        consecutiveFailures,
      };
    },
    start(): void {
      if (interval || stopped || !input.enabled()) return;
      interval = setInterval(() => {
        void tick().catch(error => input.onError?.(error));
      }, delay);
      interval.unref?.();
      // Do not wait for the first poll interval after a Worker restart.
      void tick().catch(error => input.onError?.(error));
    },
    async stop(): Promise<void> {
      stopped = true;
      if (interval) clearInterval(interval);
      interval = undefined;
      // Drain the leased batch before the database pool closes.
      await current?.catch(() => undefined);
    },
  });
}
