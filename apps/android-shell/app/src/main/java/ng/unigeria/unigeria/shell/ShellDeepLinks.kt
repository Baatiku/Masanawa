package ng.unigeria.unigeria.shell

import java.net.URI
import java.net.URLEncoder
import java.net.URLDecoder
import java.nio.charset.StandardCharsets

/** Navigation hints are deliberately not authorization or payment instructions. */
internal object ShellDeepLinks {
    private val character = Regex("^character_[A-Za-z0-9_-]{4,128}$")
    private val publicProfile = Regex("^[A-Za-z0-9_-]{2,160}$")
    fun route(raw: String?): String? {
      return try {
        val uri = URI(raw ?: return null)
        if (uri.rawUserInfo != null || uri.rawFragment != null || uri.port != -1) return null
        if (WebOriginPolicy.isTrusted(raw)) return raw

        if (uri.scheme.equals("https", true) && uri.host.equals("masanawa.com", true)) {
            val parts = uri.path.trim('/').split('/')
            return if (parts.size == 2 && parts[0] == "masana" && character.matches(parts[1]) && uri.rawQuery == null)
                profile(parts[1]) else null
        }
        if (!uri.scheme.equals("masanawa", true) || uri.host == null) return null
        val parts = uri.path.orEmpty().trim('/').takeUnless { it.isEmpty() }?.split('/') ?: emptyList()
        val query = uri.rawQuery
        when (uri.host.lowercase()) {
            "chat", "masana" -> {
                if (parts.size == 1 && character.matches(parts[0]) && query == null) profile(parts[0])
                else if (parts.isEmpty() && query != null) {
                    val value = query.split('&').singleOrNull()?.split('=', limit = 2)
                    val persona = if (value?.size == 2 && value[0] == "persona")
                        URLDecoder.decode(value[1], StandardCharsets.UTF_8.name()) else null
                    if (persona != null && publicProfile.matches(persona)) profile(persona) else null
                } else null
            }
            "wallet" -> if (query == null && (parts.isEmpty() || parts[0] in setOf("activity", "requests", "transaction", "inquiry"))) tab("wallet") else null
            "calls" -> if (query == null && (parts.isEmpty() || parts == listOf("history") || (parts.size == 2 && parts[0] == "incoming"))) tab("calls") else null
            "notifications" -> if (query == null && parts.isEmpty()) tab("profile") else null
            "search", "work", "approval" -> if (query == null && parts.isEmpty()) tab("chats") else null
            else -> null
        }
      } catch (_: IllegalArgumentException) { null }
    }

    private fun tab(name: String) = "${WebOriginPolicy.HOME}?tab=$name"
    private fun profile(id: String) = "${WebOriginPolicy.HOME}?profile=${URLEncoder.encode(id, StandardCharsets.UTF_8.name())}"
}
