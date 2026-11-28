package ng.unigeria.unigeria.shell

import org.json.JSONArray

/** Only public, source-attributed news items are admitted to Android's
 * expandable news shade. Never place private chat contents in this digest. */
internal data class ShellNewsPreview(
    val id: String,
    val publisher: String,
    val title: String,
    val summary: String,
    val url: String? = null,
    val publishedAt: String? = null,
    val receivedAt: Long = 0,
)

internal object ShellNewsDigest {
    const val maxItems = 7
    const val maxArchiveItems = 180
    private const val maxIdLength = 500

    fun normalized(
        id: String?, publisher: String?, title: String?, summary: String?,
        url: String? = null, publishedAt: String? = null, receivedAt: Long = 0
    ): ShellNewsPreview? {
        val cleanTitle = ShellNotificationIdentity.publicNewsText(title, 200)
            ?: ShellNotificationIdentity.publicNewsText(summary, 200)
            ?: return null
        val cleanPublisher = ShellNotificationIdentity.publicNewsText(publisher, 72) ?: "News"
        val cleanSummary = ShellNotificationIdentity.publicNewsText(summary, 230) ?: ""
        val source = try {
            url?.takeIf { it.length <= 1000 }?.let { java.net.URI(it) }
                ?.takeIf { it.scheme == "https" && it.userInfo == null &&
                    it.host?.contains('.') == true && (it.port == -1 || it.port == 443) }
        } catch (_: IllegalArgumentException) { null }
          catch (_: java.net.URISyntaxException) { null }
        val canonicalId = source?.let { uri ->
            val query = uri.rawQuery.orEmpty().split('&').filter {
                it.isNotEmpty() && !Regex("^(utm_|fbclid=|gclid=|at_medium=|at_campaign=)", RegexOption.IGNORE_CASE).containsMatchIn(it)
            }.sorted().joinToString("&")
            uri.host.lowercase().removePrefix("www.") + uri.rawPath.orEmpty().trimEnd('/') +
                if (query.isNotEmpty()) "?$query" else ""
        }?.takeIf { it.length in 1..maxIdLength }
        val cleanId = canonicalId ?: id?.trim()?.takeIf {
            it.length in 1..maxIdLength && it.none { ch -> ch.isISOControl() }
        } ?: "public:${cleanPublisher.hashCode()}:${cleanTitle.hashCode()}"
        val date = publishedAt?.takeIf { Regex("^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}(?:\\.\\d{3})?Z$").matches(it) }
        return ShellNewsPreview(cleanId, cleanPublisher, cleanTitle, cleanSummary,
            source?.toString(), date, receivedAt.coerceAtLeast(0))
    }

    fun read(array: JSONArray?, limit: Int = maxItems): List<ShellNewsPreview> {
        if (array == null) return emptyList()
        val items = mutableListOf<ShellNewsPreview>()
        for (index in 0 until minOf(array.length(), limit)) {
            val row = array.optJSONObject(index) ?: continue
            val normalized = normalized(
                row.optString("id"), row.optString("publisher"),
                row.optString("title"), row.optString("summary"),
                row.optString("url").takeIf { it.isNotBlank() },
                row.optString("publishedAt").takeIf { it.isNotBlank() },
                row.optLong("receivedAt", 0)
            ) ?: continue
            if (items.none { it.id == normalized.id }) items.add(normalized)
        }
        return items
    }

    fun encode(items: List<ShellNewsPreview>, limit: Int = maxItems): String {
        val array = JSONArray()
        items.take(limit).forEach { item ->
            array.put(org.json.JSONObject()
                .put("id", item.id)
                .put("publisher", item.publisher)
                .put("title", item.title)
                .put("summary", item.summary)
                .put("url", item.url ?: "")
                .put("publishedAt", item.publishedAt ?: "")
                .put("receivedAt", item.receivedAt))
        }
        return array.toString()
    }

    /** Incoming entries go first; stable IDs stop duplicated FCM/JS alerts. */
    fun merge(incoming: List<ShellNewsPreview>, previous: List<ShellNewsPreview>, limit: Int = maxItems): List<ShellNewsPreview> =
        (incoming + previous).distinctBy { it.id }.take(limit)

    /** Count unread stories, not repeated foreground/background delivery attempts.
     * The visible notification digest is bounded separately from the badge total. */
    fun nextUnreadCount(current: Int, alreadyStored: Boolean, visibleCount: Int): Int =
        maxOf(current.coerceIn(0, 999) + if (alreadyStored) 0 else 1, visibleCount).coerceAtMost(999)

    fun line(item: ShellNewsPreview): String =
        "${item.publisher}: ${item.title}" +
            if (item.summary.isNotBlank() && !item.title.contains(item.summary, ignoreCase = true))
                " — ${item.summary.take(95)}" else ""

    fun detail(item: ShellNewsPreview): String =
        item.title + if (item.summary.isNotBlank() && item.summary != item.title)
            "\n\n" + item.summary else ""
}
