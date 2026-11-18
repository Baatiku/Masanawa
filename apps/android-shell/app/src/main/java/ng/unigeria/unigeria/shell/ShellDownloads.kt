package ng.unigeria.unigeria.shell

import android.content.Context
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.webkit.CookieManager
import android.webkit.URLUtil
import android.util.Base64
import org.json.JSONObject
import java.io.File
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.Executors

/** Private downloads are written only to a document explicitly selected by the user. */
internal class ShellDownloads(
    private val context: Context,
    private val chooseDestination: (name: String, mime: String) -> Unit,
    private val report: (String) -> Unit,
) {
    private val worker = Executors.newSingleThreadExecutor()
    private val ui = Handler(Looper.getMainLooper())
    private val maxBytes = 32L * 1024 * 1024
    private var active: Transfer? = null
    private var selected: Transfer? = null

    private data class Transfer(
        val name: String,
        val mime: String,
        val file: File?,
        val url: String?,
        val declaredBytes: Long,
        var receivedBytes: Long = 0,
    )

    init {
        // A process that died during a sensitive download must not leave media behind.
        context.cacheDir.listFiles()?.filter { it.name.startsWith("masanawa-private-") }?.forEach { it.delete() }
    }

    fun beginHttp(url: String, suggestedName: String?, mime: String?) {
        if (!WebOriginPolicy.isTrusted(url) || url.contains('#')) {
            report("This download cannot be opened securely.")
            return
        }
        if (selected != null || active != null) {
            report("Finish or cancel the current download first.")
            return
        }
        val name = safeName(suggestedName ?: URLUtil.guessFileName(url, null, mime))
        selected = Transfer(name, safeMime(mime), null, url, -1)
        chooseDestination(name, safeMime(mime))
    }

    /** Only called by the top-level approved web origin via WebMessageListener. */
    fun receive(message: JSONObject) {
        when (message.optString("type")) {
            "download-begin" -> {
                if (active != null || selected != null) return
                val declared = message.optLong("size", -1)
                if (declared < 0 || declared > maxBytes) {
                    report("File exceeds the 32 MB private-download limit.")
                    return
                }
                val file = File.createTempFile("masanawa-private-", ".tmp", context.cacheDir)
                active = Transfer(safeName(message.optString("name")), safeMime(message.optString("mime")), file, null, declared)
            }
            "download-chunk" -> {
                val transfer = active ?: return
                val text = message.optString("data")
                if (text.length > 350_000) { cancel(); return }
                val bytes = try { Base64.decode(text, Base64.NO_WRAP) } catch (_: IllegalArgumentException) { cancel(); return }
                if (transfer.receivedBytes + bytes.size > transfer.declaredBytes) { cancel(); return }
                transfer.file?.appendBytes(bytes)
                transfer.receivedBytes += bytes.size
            }
            "download-end" -> {
                val transfer = active ?: return
                if (transfer.receivedBytes != transfer.declaredBytes) { cancel(); return }
                active = null
                selected = transfer
                chooseDestination(transfer.name, transfer.mime)
            }
            "download-cancel" -> cancel()
        }
    }

    fun onDestinationSelected(destination: Uri?) {
        val transfer = selected ?: return
        selected = null
        if (destination == null || destination.scheme != "content") {
            transfer.file?.delete()
            return
        }
        worker.execute {
            try {
                context.contentResolver.openOutputStream(destination, "w")?.use { output ->
                    if (transfer.file != null) transfer.file.inputStream().use { it.copyTo(output) }
                    else transfer.url?.let { copyTrustedResponse(it, output) }
                } ?: throw IllegalStateException("Destination unavailable")
                ui.post { report("File saved to your selected location.") }
            } catch (_: Exception) {
                ui.post { report("Download failed. Please try again.") }
            } finally {
                transfer.file?.delete()
            }
        }
    }

    private fun copyTrustedResponse(raw: String, output: java.io.OutputStream) {
        val url = URL(raw)
        val connection = url.openConnection() as HttpURLConnection
        try {
            connection.instanceFollowRedirects = false
            connection.connectTimeout = 15_000
            connection.readTimeout = 30_000
            connection.setRequestProperty("Cookie", CookieManager.getInstance().getCookie(raw).orEmpty())
            connection.setRequestProperty("Accept", "*/*")
            if (connection.responseCode != 200 || connection.contentLengthLong > maxBytes)
                throw IllegalStateException("Unexpected download response")
            connection.inputStream.use { input ->
                val buffer = ByteArray(32_768)
                var total = 0L
                while (true) {
                    val read = input.read(buffer)
                    if (read < 0) break
                    total += read
                    if (total > maxBytes) throw IllegalStateException("Download too large")
                    output.write(buffer, 0, read)
                }
            }
        } finally { connection.disconnect() }
    }

    private fun cancel() {
        active?.file?.delete()
        active = null
    }

    fun close() {
        cancel()
        selected?.file?.delete()
        selected = null
        worker.shutdownNow()
    }

    companion object {
        internal fun safeName(raw: String): String = raw.replace(Regex("[\\x00-\\x1f/\\\\:]"), "_").trim().take(100).ifEmpty { "masanawa-file" }
        internal fun safeMime(raw: String?): String = raw?.takeIf { Regex("^[a-zA-Z0-9.+-]+/[a-zA-Z0-9.+-]+$").matches(it) } ?: "application/octet-stream"
    }
}
