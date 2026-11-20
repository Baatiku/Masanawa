package ng.unigeria.unigeria.shell

import java.io.ByteArrayOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.security.MessageDigest
import javax.net.ssl.HttpsURLConnection

/**
 * Detects a new Cloudflare web deployment without sending account cookies,
 * logging user content, or depending on a native APK release.
 *
 * A public build-generated marker is authoritative; root HTML hashing is a
 * compatibility fallback while earlier web versions have no marker. This is
 * separate from the authenticated WebView and never sends account cookies.
 */
internal object ShellWebUpdates {
    const val CHECK_INTERVAL_MS = 3 * 60_000L
    const val RETRY_INTERVAL_MS = 30_000L
    private const val MAX_HTML_BYTES = 512 * 1024
    private val htmlTag = Regex("(?i)<!doctype\\s+html|<html(?:\\s|>)")
    private val revisionField = Regex("\"revision\"\\s*:\\s*\"([a-zA-Z0-9._:-]{8,100})\"")

    fun versionFingerprint(json: String): String? =
        revisionField.find(json)?.groupValues?.get(1)?.let { "release:$it" }

    fun fingerprint(html: String): String? {
        if (html.isBlank() || html.toByteArray(Charsets.UTF_8).size > MAX_HTML_BYTES ||
            !htmlTag.containsMatchIn(html)) return null
        return MessageDigest.getInstance("SHA-256")
            .digest(html.toByteArray(Charsets.UTF_8))
            .joinToString("") { "%02x".format(it) }
    }

    fun changed(previous: String?, current: String): Boolean =
        !previous.isNullOrBlank() && previous != current

    /** A public, credential-free probe: never follow login or external redirects. */
    fun fetchFingerprint(): String? =
        fetchPublicFile("masanawa-web-release.json?t=${System.currentTimeMillis()}", "application/json", 4_096)
            ?.let(::versionFingerprint)
            ?: fetchPublicFile("", "text/html", MAX_HTML_BYTES)?.let(::fingerprint)

    private fun fetchPublicFile(path: String, mime: String, byteLimit: Int): String? {
        val connection = (URL(WebOriginPolicy.HOME + path).openConnection() as HttpsURLConnection).apply {
            instanceFollowRedirects = false
            connectTimeout = 5_000
            readTimeout = 5_000
            useCaches = false
            setRequestProperty("Cache-Control", "no-cache, no-store")
            setRequestProperty("Pragma", "no-cache")
            setRequestProperty("Accept", mime)
        }
        return try {
            if (connection.responseCode != HttpURLConnection.HTTP_OK ||
                !connection.contentType.orEmpty().startsWith(mime, ignoreCase = true) ||
                connection.contentLengthLong > byteLimit) return null
            val bytes = ByteArrayOutputStream()
            connection.inputStream.use { stream ->
                val buffer = ByteArray(8192)
                while (true) {
                    val read = stream.read(buffer)
                    if (read < 0) break
                    if (bytes.size() + read > byteLimit) return null
                    bytes.write(buffer, 0, read)
                }
            }
            bytes.toString(Charsets.UTF_8.name())
        } catch (_: Exception) {
            null // An offline device must retain its existing working session.
        } finally {
            connection.disconnect()
        }
    }

    /** The site may expose __masanawaCanAutoUpdate() for additional holds. */
    val safeToReloadScript = """(function(){
        try {
          if (document.visibilityState !== 'visible') return false;
          if (window.__masanawaCanAutoUpdate?.() === false) return false;
          // Match the real Masanawa voice-review and in-call views as well as
          // an optional explicit web-app guard. Never discard a draft clip.
          if (document.querySelector('.wa-voice-review,dialog.masana-call-screen[open]')) return false;
          if (document.querySelector('input:focus,textarea:focus,[contenteditable="true"]:focus')) return false;
          if (document.querySelector('[aria-busy="true"],[data-recording="true"],[data-chat-streaming="true"]')) return false;
          if (Array.from(document.querySelectorAll('textarea,input:not([type="hidden"]),[contenteditable="true"]'))
             .some(e => ((e.value === undefined ? e.textContent : e.value) || '').trim().length > 0 &&
                !['checkbox','radio','button','submit'].includes(e.type))) return false;
          if (Array.from(document.querySelectorAll('audio,video')).some(e => !e.paused && !e.ended)) return false;
          return true;
        } catch (_) { return false; }
    })()""".trimIndent()

    val reloadScript = """(function(){
        const reload = () => window.location.reload();
        if (!('serviceWorker' in navigator)) { reload(); return; }
        Promise.race([
          navigator.serviceWorker.getRegistrations().then(regs =>
            Promise.all(regs.map(reg => reg.update().catch(() => {})))),
          new Promise(resolve => setTimeout(resolve, 2000))
        ]).then(reload, reload);
    })()""".trimIndent()
}
