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
 * Reports an *already-connected* web/AI voice session to Android Telecom.
 *
 * Telecom does not provide media, authentication, a call invitation or NGN
 * admission. Those remain inside the authenticated web/Gateway session.
 * Never invent an incoming call or resume one after process death.
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
                NotificationChannel(CHANNEL, "Active Masanawa calls", NotificationManager.IMPORTANCE_LOW)
                    .apply { description = "An active voice session using the microphone" }
            )
        }
        val open = PendingIntent.getActivity(this, 0, Intent(this, ShellActivity::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val hangup = PendingIntent.getService(this, 1, Intent(this, ShellCallService::class.java)
            .setAction(HANG_UP), PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val notification = NotificationCompat.Builder(this, CHANNEL)
            .setSmallIcon(ng.unigeria.unigeria.R.mipmap.ic_launcher)
            .setContentTitle("Masanawa voice call")
            .setContentText("Voice call in progress")
            .setContentIntent(open)
            .setCategory(NotificationCompat.CATEGORY_CALL)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setOnlyAlertOnce(true)
            .setOngoing(true)
            .setStyle(NotificationCompat.CallStyle.forOngoingCall(
                Person.Builder().setName("Masanawa").build(), hangup))
            .build()
        if (Build.VERSION.SDK_INT >= 34) {
            val types = ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE or
                (if (telecomRegistered) ServiceInfo.FOREGROUND_SERVICE_TYPE_PHONE_CALL else 0)
            startForeground(NOTIFICATION_ID, notification, types)
        } else startForeground(NOTIFICATION_ID, notification)
    }

    private suspend fun registerConnectedCall() {
        try {
            val manager = CallsManager(this)
            manager.registerAppWithTelecom(CallsManager.CAPABILITY_BASELINE)
            val attributes = CallAttributesCompat(
                displayName = "Masanawa",
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
                onSetInactive = { throw UnsupportedOperationException("Hold is not implemented") },
            ) {
                callControl = this
                showForeground(true) // Must be posted promptly once Telecom accepts the call.
                setActive()
                launch {
                    isMuted.collect { muted -> sendControl(EVENT_MUTE, muted) }
                }
                try {
                    kotlinx.coroutines.awaitCancellation()
                } finally {
                    callControl = null
                }
            }
        } catch (_: Exception) {
            // A rejected Telecom registration does not invent an active
            // platform call. The microphone notice remains until web ends.
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
