package ng.unigeria.unigeria.shell

/** Presentation history is independent of the unread counter. Android shade
 * dismissal never authorizes the app to replay previously presented stories. */
internal object ShellNewsPresentation {
    const val limit = 512
    fun fresh(incoming: List<String>, presented: Set<String>): List<String> =
        incoming.distinct().filterNot(presented::contains)

    fun remember(previous: Set<String>, incoming: List<String>): Set<String> =
        (previous + incoming).takeLastBounded()

    private fun Set<String>.takeLastBounded(): Set<String> = toList().takeLast(limit).toSet()
}
