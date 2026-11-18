package ng.unigeria.unigeria.shell

/** Keeps a tapped notification bound to its own destination in PendingIntent. */
internal object ShellNotificationIdentity {
    fun requestCode(route: String, incomingCall: Boolean): Int =
        route.hashCode() xor (if (incomingCall) 0x4D534E else 0)
}
