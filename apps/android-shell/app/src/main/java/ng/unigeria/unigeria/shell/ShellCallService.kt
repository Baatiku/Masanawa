package ng.unigeria.unigeria.shell

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder

/** A foreground microphone/call indicator for an already admitted web voice call.
 * Gateway retains all audio/billing authority; the service never starts its own call. */
class ShellCallService : Service() {
    companion object {
        const val START = "ng.unigeria.unigeria.shell.CALL_START"
        const val STOP = "ng.unigeria.unigeria.shell.CALL_STOP"
        private const val channel = "masanawa_active_calls"
        private const val id = 7501
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action != START) {
            stopSelf()
            return START_NOT_STICKY
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                val manager = getSystemService(NOTIFICATION_SERVICE) as NotificationManager
                manager.createNotificationChannel(NotificationChannel(channel, "Active Masanawa calls",
                    NotificationManager.IMPORTANCE_LOW).apply { description = "Shows when your live voice call is using the microphone" })
            }
            val open = PendingIntent.getActivity(this, 0, Intent(this, ShellActivity::class.java),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
            val notification = if (Build.VERSION.SDK_INT >= 26) Notification.Builder(this, channel)
                else @Suppress("DEPRECATION") Notification.Builder(this)
            val built = notification.setSmallIcon(ng.unigeria.unigeria.R.mipmap.ic_launcher)
                .setContentTitle("Masanawa voice call")
                .setContentText("Tap to return to the call")
                .setCategory(Notification.CATEGORY_CALL).setOngoing(true).setOnlyAlertOnce(true)
                .setContentIntent(open).build()
            if (Build.VERSION.SDK_INT >= 34)
                startForeground(id, built, ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE)
            else startForeground(id, built)
        } catch (_: RuntimeException) {
            // Permission loss, OS background-start restrictions, or missing hardware.
            stopSelf()
        }
        // Never restart an audio/call session after process death.
        return START_NOT_STICKY
    }
}
