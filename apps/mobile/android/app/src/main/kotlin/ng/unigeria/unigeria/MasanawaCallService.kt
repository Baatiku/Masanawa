package ng.unigeria.unigeria

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder

/**
 * Keeps a customer-initiated Gemini Live microphone call visible and eligible
 * for Android background execution. This service never records, stores, bills
 * or establishes a second network session; Flutter owns the active call.
 *
 * Microphone foreground service must be started while the activity is visible,
 * after the app's runtime RECORD_AUDIO permission has been granted.
 */
class MasanawaCallService : Service() {
    companion object {
        const val ACTION_START = "ng.unigeria.unigeria.action.CALL_START"
        const val ACTION_STOP = "ng.unigeria.unigeria.action.CALL_STOP"
        private const val CHANNEL_ID = "masanawa_active_calls"
        private const val NOTIFICATION_ID = 7501
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action == ACTION_STOP) {
            stopSelf()
            return START_NOT_STICKY
        }

        if (intent?.action != ACTION_START) {
            stopSelf(startId)
            return START_NOT_STICKY
        }

        try {
            createChannel()
            val notification = createNotification()
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                startForeground(
                    NOTIFICATION_ID,
                    notification,
                    ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE,
                )
            } else {
                startForeground(NOTIFICATION_ID, notification)
            }
        } catch (_: SecurityException) {
            // A revoked microphone permission must not leave a covert service.
            stopSelf()
        } catch (_: RuntimeException) {
            // OS foreground-service restrictions must fail closed.
            stopSelf()
        }

        // Never resurrect the microphone/call after process death. The user
        // must explicitly start and authorize another call from the app.
        return START_NOT_STICKY
    }

    private fun createChannel() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val manager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
        val channel = NotificationChannel(
            CHANNEL_ID,
            "Active Masanawa calls",
            NotificationManager.IMPORTANCE_LOW,
        )
        channel.description = "Shows when your Masanawa microphone call is active"
        channel.enableVibration(false)
        manager.createNotificationChannel(channel)
    }

    private fun createNotification(): Notification {
        val openCall = Intent(this, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_CLEAR_TOP
        }
        val pending = PendingIntent.getActivity(
            this,
            0,
            openCall,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )
        val builder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(this, CHANNEL_ID)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(this)
        }
        return builder
            .setSmallIcon(R.mipmap.ic_launcher)
            .setContentTitle("Masanawa call in progress")
            .setContentText("Tap to return to your call or hang up")
            .setCategory(Notification.CATEGORY_CALL)
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setContentIntent(pending)
            .build()
    }
}
