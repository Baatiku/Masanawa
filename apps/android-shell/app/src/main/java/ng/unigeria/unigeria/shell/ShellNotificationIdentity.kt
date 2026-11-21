package ng.unigeria.unigeria.shell

/** Keeps a tapped notification bound to its own destination in PendingIntent. */
internal object ShellNotificationIdentity {
    private val callIdPattern = Regex("^[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}$")

    fun requestCode(route: String, incomingCall: Boolean): Int =
        route.hashCode() xor (if (incomingCall) 0x4D534E else 0)

    /** Matches the Gateway rule; malformed invitations cannot claim call UI. */
    private val newsPostPattern = Regex("^[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}$")
    private val safeEventPattern = Regex("^[A-Za-z0-9_.:-]{1,100}$")

    fun isNewsPostId(id: String?): Boolean = id != null && newsPostPattern.matches(id)

    /** Deterministic Android notification ID: retries update the same entry. */
    fun eventNotificationId(event: String?): Int? =
        event?.takeIf { safeEventPattern.matches(it) }?.let {
            0x50000000 or (it.hashCode() and 0x0FFFFFFF)
        }

    /** Never accept control characters from FCM metadata. */
    fun publicNewsText(raw: String?, maxLength: Int): String? =
        raw?.takeIf { it.length in 2..maxLength && it.none { c -> c.isISOControl() } }
            ?.trim()?.takeIf { it.isNotEmpty() }

    fun isIncomingCall(type: String?, callId: String?): Boolean =
        type == "incoming_call" && callId != null && callIdPattern.matches(callId)
}
