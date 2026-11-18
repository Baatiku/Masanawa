/** Speech is optional enrichment of an already completed text turn. Even an
 * adapter which ignores cancellation must not hold the result open forever. */
export async function optionalAudioReply<T>(
  render: (signal: AbortSignal) => Promise<T>,
  signal?: AbortSignal,
  timeoutMs = 30_000,
): Promise<T | undefined> {
  if (signal?.aborted) return undefined;
  const controller = new AbortController();
  let timer: ReturnType<typeof setTimeout> | undefined;
  let finished = false;
  let abort = () => {};
  try {
    return await new Promise<T | undefined>((resolve) => {
      const settle = (value?: T) => {
        if (finished) return;
        finished = true;
        resolve(value);
      };
      abort = () => { controller.abort(); settle(); };
      signal?.addEventListener('abort', abort, {once: true});
      timer = setTimeout(abort, timeoutMs);
      if (signal?.aborted) { abort(); return; }
      Promise.resolve().then(() => render(controller.signal)).then(
        value => settle(controller.signal.aborted ? undefined : value),
        () => settle(),
      );
    });
  } finally {
    if (timer !== undefined) clearTimeout(timer);
    signal?.removeEventListener('abort', abort);
  }
}
