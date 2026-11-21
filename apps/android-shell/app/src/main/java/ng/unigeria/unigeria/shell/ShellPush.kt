package ng.unigeria.unigeria.shell

import android.Manifest
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.pm.PackageManager
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import com.google.firebase.FirebaseApp
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import org.json.JSONObject
import java.util.UUID

/** The web client binds the token to the authenticated account via the Gateway. */
internal object ShellPush {
    private const val updatesChannel = "masanawa_work"
    private const val callsChannel = "masanawa_calls"
    private const val newsChannel = "masanawa_news"
    private const val newsNotificationId = 0x4e5753

    fun initialize(context: Context): Boolean {
        if (FirebaseApp.getApps(context).isNotEmpty()) return true
        // FirebaseInitProvider normally reads the Google Services generated
        // resources before this method. Re-try once for unusual process starts.
        return try {
            FirebaseApp.initializeApp(context) != null
        } catch (_: IllegalStateException) { false }
    }

    fun installation(context: Context): String {
        val prefs = context.getSharedPreferences("masanawa-shell-installation", Context.MODE_PRIVATE)
        return prefs.getString("installation", null) ?: "install_${UUID.randomUUID()}".also {
            prefs.edit().putString("installation", it).apply()
        }
    }

    fun getToken(context: Context, reply: (JSONObject) -> Unit) {
        if (!initialize(context)) {
            reply(JSONObject().put("type", "push-error").put("message", "Firebase Android configuration is required."))
            return
        }
        FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
            val token = if (task.isSuccessful) task.result else null
            if (token.isNullOrBlank()) reply(JSONObject().put("type", "push-error").put("message", "Device token unavailable."))
            else reply(JSONObject().put("type", "push-token").put("token", token)
                .put("installationId", installation(context)))
        }
    }

    fun deleteToken(context: Context) {
        if (initialize(context)) FirebaseMessaging.getInstance().deleteToken()
    }

    fun ensureChannels(context: Context) {
        if (Build.VERSION.SDK_INT < 26) return
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        manager.createNotificationChannel(NotificationChannel(
            updatesChannel, "Masanawa updates", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Messages, account notices and call alerts"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
        })
        manager.createNotificationChannel(NotificationChannel(
            callsChannel, "Masanawa incoming calls", NotificationManager.IMPORTANCE_HIGH).apply {
            description = "Incoming Masanawa call invitations"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
        })
        manager.createNotificationChannel(NotificationChannel(
            newsChannel, "News updates", NotificationManager.IMPORTANCE_DEFAULT).apply {
            description = "Unread and newly published Masanawa news articles"
            lockscreenVisibility = android.app.Notification.VISIBILITY_PRIVATE
            setShowBadge(true)
        })
    }

    /** Android launcher dots are derived from active notifications, not a
     * mutable red icon bitmap. Use one quiet aggregate notification; prevent
     * repeated foreground polls from creating a notification flood. */
    fun updateNewsBadge(context: Context, count: Int) {
        if (count !in 0..999) return
        val prefs = context.getSharedPreferences("masanawa-shell-news", Context.MODE_PRIVATE)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (count == 0) {
            prefs.edit().putInt("unread", 0).apply()
            manager.cancel(newsNotificationId)
            return
        }
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED)
            return
        if (prefs.getInt("unread", -1) == count &&
            Build.VERSION.SDK_INT >= 23 && manager.activeNotifications.any { it.id == newsNotificationId }) return
        ensureChannels(context)
        prefs.edit().putInt("unread", count).apply()
        val route = "https://app.masanawa.com/?tab=home"
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse(route)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        val pending = PendingIntent.getActivity(context, newsNotificationId, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val notice = NotificationCompat.Builder(context, newsChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setContentTitle(if (count == 1) "1 unread news article" else "$count unread news articles")
            .setContentText("Open Home to read your latest news updates")
            .setContentIntent(pending)
            .setOnlyAlertOnce(true)
            .setAutoCancel(true)
            .setNumber(count)
            .setCategory(NotificationCompat.CATEGORY_SOCIAL)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
        manager.notify(newsNotificationId, notice)
    }

    fun showNotification(context: Context, route: String, incomingCall: Boolean = false, news: Boolean = false) {
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED)
            return
        ensureChannels(context)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse(route)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        // One request code for every destination. Using 0 would make earlier
        // notifications open the most recently received contact instead.
        val requestCode = ShellNotificationIdentity.requestCode(route, incomingCall)
        val pending = PendingIntent.getActivity(context, requestCode, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val notification = NotificationCompat.Builder(context, if (incomingCall) callsChannel else if (news) newsChannel else updatesChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setContentTitle(if (incomingCall) "Incoming call" else if (news) "New Masanawa news" else "Masanawa")
            .setContentText(if (incomingCall) "Open Calls to respond" else if (news) "Open Home to read the latest article" else "Open the app to view your update")
            .setContentIntent(pending)
            .setAutoCancel(true)
            .setColor(ContextCompat.getColor(context, ng.unigeria.unigeria.R.color.masanawa_notification_color))
            .setCategory(if (incomingCall) NotificationCompat.CATEGORY_CALL else NotificationCompat.CATEGORY_MESSAGE)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .build()
        manager.notify(if (news) newsNotificationId else (System.currentTimeMillis() % Int.MAX_VALUE).toInt(), notification)
    }
}

/** Notification contents stay generic on the lock screen; no user data goes into the Intent. */
class ShellFirebaseMessagingService : FirebaseMessagingService() {
    @Suppress("DEPRECATION") // Legacy token mode is required by the current Gateway push API.
    override fun onNewToken(token: String) {
        super.onNewToken(token)
        // Do not transmit a token in the background without an authenticated
        // account. The opted-in web client rebinds it upon the next resume.
        getSharedPreferences("masanawa-shell-push-events", Context.MODE_PRIVATE)
            .edit().putLong("refreshedAt", System.currentTimeMillis()).apply()
    }

    override fun onMessageReceived(message: RemoteMessage) {
        val type = message.data["type"] ?: return
        if (type == "news_article" || type == "news_update") {
            ShellPush.showNotification(this, "https://app.masanawa.com/?tab=home", news = true)
            return
        }
        if (!Regex("^[a-z][a-z0-9_]{0,63}$").matches(type) || type.startsWith("human_") ||
            type.startsWith("room_") || type.startsWith("p2p_")) return
        val route = ShellDeepLinks.route(message.data["deepLink"])
            ?: message.data["characterId"]?.let { ShellDeepLinks.route("masanawa://chat/$it") }
            ?: WebOriginPolicy.HOME
        ShellPush.showNotification(this, route,
            incomingCall = ShellNotificationIdentity.isIncomingCall(type, message.data["callId"]))
    }
}
