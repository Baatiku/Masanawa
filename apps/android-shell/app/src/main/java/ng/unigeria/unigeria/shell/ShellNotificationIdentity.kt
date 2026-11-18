package ng.unigeria.unigeria.shell

/** Keeps a tapped notification bound to its own destination in PendingIntent. */
internal object ShellNotificationIdentity {
    private val callIdPattern = Regex("^[0-9a-fA-F]{8}(?:-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}$")

    fun requestCode(route: String, incomingCall: Boolean): Int =
        route.hashCode() xor (if (incomingCall) 0x4D534E else 0)

    /** Matches the Gateway rule; malformed invitations cannot claim call UI. */
    fun isIncomingCall(type: String?, callId: String?): Boolean =
        type == "incoming_call" && callId != null && callIdPattern.matches(callId)
}
