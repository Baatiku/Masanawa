package ng.unigeria.unigeria.shell

/** Explicit contract between Android Back and the in-page overlay hierarchy. */
internal enum class ShellBackResult {
    HANDLED, EXIT, HISTORY;

    companion object {
        fun fromJavaScript(value: String?): ShellBackResult = when (value?.trim()?.removeSurrounding("\"")) {
            "handled" -> HANDLED
            "exit" -> EXIT
            else -> HISTORY
        }
    }
}
