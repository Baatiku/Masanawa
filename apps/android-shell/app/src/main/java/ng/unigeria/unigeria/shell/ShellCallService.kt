package ng.unigeria.unigeria.shell

import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.net.Uri
import android.os.Build
import android.os.IBinder
import android.telecom.DisconnectCause
import androidx.core.app.NotificationCompat
import androidx.core.app.Person
import androidx.core.telecom.CallAttributesCompat
import androidx.core.telecom.CallControlScope
import androidx.core.telecom.CallsManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeoutOrNull

/**
 * Foreground notification for an already-connected WebView-hosted AI call.
 * WebView owns microphone capture, playback, authentication and settlement.
 * Telecom routing must not seize audio focus from that existing WebView media
 * pipeline. Core-Telecom may be re-enabled only with a native-owned audio
 * transport that can follow its audio-route and focus callbacks correctly.
 */
class ShellCallService : Service() {
    companion object {
        const val START = "ng.unigeria.unigeria.shell.CALL_START"
        const val STOP = "ng.unigeria.unigeria.shell.CALL_STOP"
        const val HANG_UP = "ng.unigeria.unigeria.shell.CALL_HANG_UP"
        const val REMOTE_CONTROL = "ng.unigeria.unigeria.shell.REMOTE_CONTROL"
        const val REMOTE_EVENT = "event"
        const val REMOTE_MUTED = "muted"
        const val EVENT_END = "end"
        const val EVENT_MUTE = "mute"
        private const val CHANNEL = "masanawa_active_calls"
        private const val NOTIFICATION_ID = 7501
        // Explicit compatibility gate for WebView-owned PCM; preserve the
        // Core-Telecom implementation for a future native media integration.
        private const val TELECOM_CONTROLS_WEBVIEW_AUDIO = false
    }

    private val scope = CoroutineScope(Dispatchers.Main.immediate + SupervisorJob())
    private var callJob: Job? = null
    private var callControl: CallControlScope? = null
    private var stopping = false

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            START -> {
                if (stopping || callJob != null) return START_NOT_STICKY
                try {
                    showForeground(false)
                    callJob = scope.launch { registerConnectedCall() }
                } catch (_: RuntimeException) {
                    stopSelf()
                }
            }
            HANG_UP -> endCall(notifyWeb = true)
            else -> endCall(notifyWeb = false)
        }
        return START_NOT_STICKY
    }

    private fun showForeground(telecomRegistered: Boolean) {
        if (Build.VERSION.SDK_INT >= 26) {
            (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(
                NotificationChannel(CHANNEL, "Active Citizenvoice calls", NotificationManager.IMPORTANCE_LOW)
                    .apply { description = "An active voice session using the microphone" }
            )
        }
        val open = PendingIntent.getActivity(this, 0, Intent(this, ShellActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val hangup = PendingIntent.getService(this, 1, Intent(this, ShellCallService::class.java)
            .setAction(HANG_UP), PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val notification = NotificationCompat.Builder(this, CHANNEL)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setContentTitle("Citizenvoice voice call")
            .setContentText("Voice call in progress")
            .setContentIntent(open)
            .setCategory(NotificationCompat.CATEGORY_CALL)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setOnlyAlertOnce(true)
            .setOngoing(true)
            .setStyle(NotificationCompat.CallStyle.forOngoingCall(
                Person.Builder().setName("Citizenvoice").build(), hangup))
            .build()
        if (Build.VERSION.SDK_INT >= 34) {
            val types = ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE or
                (if (telecomRegistered) ServiceInfo.FOREGROUND_SERVICE_TYPE_PHONE_CALL else 0)
            startForeground(NOTIFICATION_ID, notification, types)
        } else startForeground(NOTIFICATION_ID, notification)
    }

    private suspend fun registerConnectedCall() {
        // The live WebView is already using microphone and AudioContext by
        // this point. Adding a Telecom call here can change its audio route
        // immediately after the web call enters 'connected'. Keep the ongoing
        // notification, microphone foreground service and Hang Up action but
        // do not reconfigure audio focus from a second native call owner.
        if (!TELECOM_CONTROLS_WEBVIEW_AUDIO) return
        // Core-Telecom's minimum supported platform is Android 8 (API 26).
        // Android 7 keeps the ordinary microphone foreground notification.
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        var registered = false
        try {
            val manager = CallsManager(this)
            manager.registerAppWithTelecom(CallsManager.CAPABILITY_BASELINE)
            val attributes = CallAttributesCompat(
                displayName = "Citizenvoice",
                address = Uri.parse("masanawa://calls"),
                direction = CallAttributesCompat.DIRECTION_OUTGOING,
                callType = CallAttributesCompat.CALL_TYPE_AUDIO_CALL,
                callCapabilities = 0,
            )
            manager.addCall(
                callAttributes = attributes,
                onAnswer = { throw UnsupportedOperationException("No incoming media session") },
                onDisconnect = { endCall(notifyWeb = true) },
                onSetActive = { /* Already connected according to the web transport. */ },
                onSetInactive = {
                    // A cellular interruption must not leave a chargeable web
                    // microphone session running when the OS takes audio focus.
                    endCall(notifyWeb = true)
                    throw UnsupportedOperationException("Hold is not implemented")
                },
            ) {
                callControl = this
                registered = true
                showForeground(true) // Must be posted promptly once Telecom accepts the call.
                launch {
                    setActive()
                    isMuted.collect { muted -> sendControl(EVENT_MUTE, muted) }
                }
            }
        } catch (_: Exception) {
            // A rejected Telecom registration does not invent an active
            // platform call. The microphone notice remains until web ends.
        } finally {
            callControl = null
            if (registered && !stopping) endCall(notifyWeb = true)
        }
    }

    private fun sendControl(event: String, muted: Boolean = false) {
        sendBroadcast(Intent(REMOTE_CONTROL).setPackage(packageName)
            .putExtra(REMOTE_EVENT, event).putExtra(REMOTE_MUTED, muted))
    }

    private fun endCall(notifyWeb: Boolean) {
        if (stopping) return
        stopping = true
        if (notifyWeb) sendControl(EVENT_END)
        scope.launch {
            withTimeoutOrNull(2_500) {
                try {
                    callControl?.disconnect(DisconnectCause(DisconnectCause.LOCAL))
                } catch (_: Exception) {
                    // Telecom may already have removed the call.
                }
            }
            callJob?.cancelAndJoin()
            stopSelf()
        }
    }

    override fun onDestroy() {
        scope.cancel()
        super.onDestroy()
    }
}
