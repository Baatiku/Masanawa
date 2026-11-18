package ng.unigeria.unigeria.shell

import java.net.URI

/** The only remotely hosted origin allowed to control the Masanawa shell. */
internal object WebOriginPolicy {
    const val HOME = "https://app.masanawa.com/"

    fun isTrusted(url: String?): Boolean = try {
        val uri = URI(url ?: "")
        uri.scheme.equals("https", ignoreCase = true) &&
            uri.host.equals("app.masanawa.com", ignoreCase = true) &&
            (uri.port == -1 || uri.port == 443) &&
            uri.userInfo == null
    } catch (_: IllegalArgumentException) {
        false
    }

    /** Only explicit web and contact schemes may leave the app. */
    fun mayOpenExternally(url: String?): Boolean = try {
        val uri = URI(url ?: "")
        when (uri.scheme?.lowercase()) {
            "https", "http" -> !uri.host.isNullOrBlank() && uri.userInfo == null
            "mailto", "tel" -> true
            else -> false
        }
    } catch (_: IllegalArgumentException) {
        false
    }

    /** Deep links can target only the same trusted HTTPS origin. */
    fun safeLaunchUrl(url: String?): String = if (isTrusted(url)) url!! else HOME
}
