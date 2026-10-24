package ng.unigeria.unigeria

import android.content.Intent
import android.database.Cursor
import android.net.Uri
import android.os.SystemClock
import android.provider.OpenableColumns
import android.util.Base64
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayOutputStream
import java.util.UUID

/** Temporary, memory-only Android share grant. Never log or persist foreign URIs. */
internal class IncomingShareBridge(
    private val activity: MainActivity,
    messenger: BinaryMessenger,
) {
    private data class Item(val uri: Uri, val mime: String, val name: String, val size: Long?)
    private data class Draft(
        val token: String,
        val text: String,
        val items: List<Item>,
        val warning: String?,
        val fingerprint: String,
        val receivedAt: Long,
    )

    private val channel = MethodChannel(messenger, "masanawa/incoming_share")
    @Volatile private var draft: Draft? = null
    private var closed = false

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "peek" -> result.success(snapshot())
                "clear" -> {
                    val token = call.argument<String>("token")
                    if (token == null || draft?.token == token) draft = null
                    result.success(true)
                }
                "read" -> {
                    val token = call.argument<String>("token")
                    val index = call.argument<Int>("index")
                    val current = draft
                    if (current == null || current.token != token ||
                        index == null || index !in current.items.indices || current.warning != null
                    ) {
                        result.error("share_expired", "The shared item is no longer available", null)
                        return@setMethodCallHandler
                    }
                    val item = current.items[index]
                    // Content providers can be slow: never read shared media on
                    // Android's activity/main thread or trust provider size hints.
                    Thread {
                        try {
                            val data = readBounded(item.uri)
                            activity.runOnUiThread {
                                if (closed || draft?.token != token) {
                                    result.error("share_expired", "Share was canceled", null)
                                } else {
                                    result.success(Base64.encodeToString(data, Base64.NO_WRAP))
                                }
                            }
                        } catch (_: Exception) {
                            activity.runOnUiThread {
                                result.error("share_unavailable", "Cannot read shared file; reselect it in the source app", null)
                            }
                        }
                    }.start()
                }
                else -> result.notImplemented()
            }
        }
    }

    fun accept(intent: Intent?) {
        if (closed || intent == null ||
            intent.action != Intent.ACTION_SEND && intent.action != Intent.ACTION_SEND_MULTIPLE
        ) return
        val text: String
        val uris: List<Uri>
        try {
            text = intent.getCharSequenceExtra(Intent.EXTRA_TEXT)?.toString() ?: ""
            uris = if (intent.action == Intent.ACTION_SEND_MULTIPLE) {
                @Suppress("DEPRECATION")
                intent.getParcelableArrayListExtra<Uri>(Intent.EXTRA_STREAM)?.toList() ?: emptyList()
            } else {
                @Suppress("DEPRECATION")
                listOfNotNull(intent.getParcelableExtra<Uri>(Intent.EXTRA_STREAM))
            }
        } catch (_: RuntimeException) {
            // Another application may send malformed Parcelables. Ignore it.
            return
        }
        val fingerprint = "${intent.action}|${text.take(10000)}|${uris.joinToString()}"
        val now = SystemClock.elapsedRealtime()
        if (draft?.let { it.fingerprint == fingerprint && now - it.receivedAt < 1500L } == true) return

        val warning = when {
            text.length > 10000 -> "Shared text is longer than 10,000 characters"
            uris.size > 4 -> "Choose at most four attachments at a time"
            uris.isEmpty() && text.isBlank() -> "Nothing supported was shared"
            else -> null
        }
        val items = uris.take(4).map { uri ->
            val mime = (if (uri.scheme != "content") null else try {
                activity.contentResolver.getType(uri)
            } catch (_: RuntimeException) { null })
                ?: intent.type ?: "application/octet-stream"
            val nameAndSize = if (uri.scheme == "content") metadata(uri)
                else ("Unsupported attachment" to null)
            Item(uri, mime, nameAndSize.first, nameAndSize.second)
        }
        val unsupported = items.any {
            it.uri.scheme != "content" || it.mime !in setOf(
                "image/jpeg", "image/png", "image/webp", "video/mp4", "application/pdf",
            ) || (it.size != null && (it.size <= 0L || it.size > MAX_BYTES))
        }
        draft = Draft(
            UUID.randomUUID().toString(), text, items,
            warning ?: if (unsupported) "Unsupported type or file over 8 MB" else null,
            fingerprint, now,
        )
        // The receiver only gets a notification. It must explicitly peek and
        // wait for signed-in owner authorization before showing share content.
        channel.invokeMethod("offer", true)
        // An engine/activity reinitialization must not replay an already
        // consumed Android intent as a second outgoing draft.
        intent.action = null
    }

    private fun snapshot(): Map<String, Any?>? = draft?.let { current ->
        mapOf(
            "token" to current.token,
            "text" to current.text,
            "warning" to current.warning,
            "items" to current.items.map { item ->
                mapOf("name" to item.name, "mime" to item.mime, "size" to item.size)
            },
        )
    }

    private fun metadata(uri: Uri): Pair<String, Long?> {
        var name = "Shared attachment"
        var size: Long? = null
        try {
            activity.contentResolver.query(
                uri, arrayOf(OpenableColumns.DISPLAY_NAME, OpenableColumns.SIZE),
                null, null, null,
            )?.use { cursor: Cursor ->
                if (cursor.moveToFirst()) {
                    val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    val sizeIndex = cursor.getColumnIndex(OpenableColumns.SIZE)
                    if (nameIndex >= 0 && !cursor.isNull(nameIndex)) name = cursor.getString(nameIndex)
                    if (sizeIndex >= 0 && !cursor.isNull(sizeIndex)) size = cursor.getLong(sizeIndex)
                }
            }
        } catch (_: Exception) { /* Some providers disclose neither field. */ }
        val sanitized = name.replace(Regex("[\\x00-\\x1f/\\\\]"), "_").take(180)
        return (sanitized.ifBlank { "Shared attachment" }) to size
    }

    private fun readBounded(uri: Uri): ByteArray {
        val input = activity.contentResolver.openInputStream(uri)
            ?: throw IllegalStateException("URI grant expired")
        return input.use { stream ->
            val output = ByteArrayOutputStream()
            val buffer = ByteArray(16 * 1024)
            while (true) {
                val count = stream.read(buffer)
                if (count < 0) break
                if (output.size() + count > MAX_BYTES) throw IllegalArgumentException("Too large")
                output.write(buffer, 0, count)
            }
            output.toByteArray().also { if (it.isEmpty()) throw IllegalArgumentException("Empty") }
        }
    }

    fun close() {
        closed = true
        draft = null
        channel.setMethodCallHandler(null)
    }

    companion object { private const val MAX_BYTES = 8L * 1024L * 1024L }
}
