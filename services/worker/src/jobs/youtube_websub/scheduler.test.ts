import { describe, expect, it, vi } from "vitest";
import { createYouTubeOutboxScheduler } from "./scheduler.js";

describe("YouTube outbox scheduler", () => {
  it("never polls without an enabled provider", async () => {
    const runOnce = vi.fn(async () => undefined);
    const scheduler = createYouTubeOutboxScheduler({runOnce, enabled: () => false});
    scheduler.start();
    expect(await scheduler.tick()).toBe("disabled");
    await scheduler.stop();
    expect(runOnce).not.toHaveBeenCalled();
  });

  it("starts immediately, prevents overlapping leases and drains on stop", async () => {
    let finish!: () => void;
    const started = new Promise<void>(resolve => { finish = resolve; });
    const runOnce = vi.fn(() => started);
    const scheduler = createYouTubeOutboxScheduler({
      runOnce, enabled: () => true, intervalMs: 60_000,
    });
    scheduler.start();
    // start() schedules the first batch in a microtask.
    await Promise.resolve();
    expect(runOnce).toHaveBeenCalledTimes(1);
    expect(await scheduler.tick()).toBe("busy");
    const stopping = scheduler.stop();
    finish();
    await stopping;
    expect(await scheduler.tick()).toBe("disabled");
    expect(runOnce).toHaveBeenCalledTimes(1);
  });

  it("reports a failed batch without disabling retries", async () => {
    const onError = vi.fn();
    const runOnce = vi.fn().mockRejectedValueOnce(new Error("provider-secret"))
      .mockResolvedValueOnce(undefined);
    const scheduler = createYouTubeOutboxScheduler({runOnce, enabled: () => true, onError});
    await expect(scheduler.tick()).rejects.toThrow();
    expect(await scheduler.tick()).toBe("processed");
    await scheduler.stop();
    expect(runOnce).toHaveBeenCalledTimes(2);
    // Error messages are not logged by the scheduler itself.
    expect(onError).not.toHaveBeenCalled();
  });

  it("rejects unsafe polling rates", () => {
    expect(() => createYouTubeOutboxScheduler({
      runOnce: async () => undefined, enabled: () => true, intervalMs: 10,
    })).toThrow("youtube_poll_interval_invalid");
  });
  it("reports active work, prior failure and recovery without logging secrets", async () => {
    let finish!: () => void;
    const unfinished = new Promise<void>(resolve => { finish = resolve; });
    const runOnce = vi.fn()
      .mockRejectedValueOnce(new Error("do not log secret"))
      .mockImplementationOnce(() => unfinished);
    const scheduler = createYouTubeOutboxScheduler({
      runOnce, enabled: () => true, intervalMs: 60_000,
    });
    expect(scheduler.health().enabled).toBe(false);
    await expect(scheduler.tick()).rejects.toThrow();
    expect(scheduler.health().consecutiveFailures).toBe(1);
    expect(scheduler.health().lastSuccessAgeSeconds).toBe(null);
    const running = scheduler.tick();
    await Promise.resolve();
    expect(scheduler.health().runningSeconds).toBeGreaterThanOrEqual(0);
    finish();
    await running;
    expect(scheduler.health().consecutiveFailures).toBe(0);
    expect(scheduler.health().lastSuccessAgeSeconds).toBe(0);
    await scheduler.stop();
    expect(scheduler.health().enabled).toBe(false);
  });

});
