package ng.unigeria.unigeria.shell

import org.json.JSONArray

/** Only public, source-attributed news items are admitted to Android's
 * expandable news shade. Never place private chat contents in this digest. */
internal data class ShellNewsPreview(
    val id: String,
    val publisher: String,
    val title: String,
    val summary: String,
)

internal object ShellNewsDigest {
    const val maxItems = 7
    private const val maxIdLength = 500

    fun normalized(
        id: String?, publisher: String?, title: String?, summary: String?
    ): ShellNewsPreview? {
        val cleanTitle = ShellNotificationIdentity.publicNewsText(title, 200)
            ?: ShellNotificationIdentity.publicNewsText(summary, 200)
            ?: return null
        val cleanPublisher = ShellNotificationIdentity.publicNewsText(publisher, 72) ?: "Masanawa News"
        val cleanSummary = ShellNotificationIdentity.publicNewsText(summary, 230) ?: ""
        val cleanId = id?.trim()?.takeIf {
            it.length in 1..maxIdLength && it.none { ch -> ch.isISOControl() }
        } ?: "public:${cleanPublisher.hashCode()}:${cleanTitle.hashCode()}"
        return ShellNewsPreview(cleanId, cleanPublisher, cleanTitle, cleanSummary)
    }

    fun read(array: JSONArray?): List<ShellNewsPreview> {
        if (array == null) return emptyList()
        val items = mutableListOf<ShellNewsPreview>()
        for (index in 0 until minOf(array.length(), maxItems)) {
            val row = array.optJSONObject(index) ?: continue
            val normalized = normalized(
                row.optString("id"), row.optString("publisher"),
                row.optString("title"), row.optString("summary")
            ) ?: continue
            if (items.none { it.id == normalized.id }) items.add(normalized)
        }
        return items
    }

    fun encode(items: List<ShellNewsPreview>): String {
        val array = JSONArray()
        items.take(maxItems).forEach { item ->
            array.put(org.json.JSONObject()
                .put("id", item.id)
                .put("publisher", item.publisher)
                .put("title", item.title)
                .put("summary", item.summary))
        }
        return array.toString()
    }

    /** Incoming entries go first; stable IDs stop duplicated FCM/JS alerts. */
    fun merge(incoming: List<ShellNewsPreview>, previous: List<ShellNewsPreview>): List<ShellNewsPreview> =
        (incoming + previous).distinctBy { it.id }.take(maxItems)

    fun line(item: ShellNewsPreview): String =
        "${item.publisher}: ${item.title}" +
            if (item.summary.isNotBlank() && !item.title.contains(item.summary, ignoreCase = true))
                " — ${item.summary.take(95)}" else ""

    fun detail(item: ShellNewsPreview): String =
        item.title + if (item.summary.isNotBlank() && item.summary != item.title)
            "\n\n" + item.summary else ""
}
