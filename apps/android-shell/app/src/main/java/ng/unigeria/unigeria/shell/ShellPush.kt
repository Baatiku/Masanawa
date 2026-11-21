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
    private const val newsSummaryId = 0x4e5760
    private const val newsGroup = "masanawa.news.articles"
    private const val newsLimit = 8

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
            prefs.getString("newsEvents", "")?.split("|")?.filter { it.isNotBlank() }
                ?.forEach { event ->
                    ShellNotificationIdentity.eventNotificationId(event)?.let(manager::cancel)
                }
            prefs.edit().putInt("unread", 0).remove("newsEvents").apply()
            manager.cancel(newsNotificationId)
            manager.cancel(newsSummaryId)
            return
        }
        if (!prefs.getString("newsEvents", "").isNullOrEmpty()) {
            // The grouped per-story cards already supply the system launcher dot.
            manager.cancel(newsNotificationId)
            prefs.edit().putInt("unread", count).apply()
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

    /** Each public article gets a stable notification and its own safe tap
     * destination. A bounded group behaves like a modern conversation stack;
     * the aggregate is quiet, while the newly published article can alert.
     * No account content or FCM-provided arbitrary URLs are displayed. */
    fun showNewsArticle(context: Context, eventId: String?, postId: String?,
                        title: String?, publisher: String?) {
        if (Build.VERSION.SDK_INT >= 33 &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED)
            return
        val id = ShellNotificationIdentity.eventNotificationId(eventId) ?: return
        ensureChannels(context)
        val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val prefs = context.getSharedPreferences("masanawa-shell-news", Context.MODE_PRIVATE)
        val existing = prefs.getString("newsEvents", "")?.split("|")?.filter { it.isNotBlank() } ?: emptyList()
        if (eventId in existing) return
        val current = (existing + eventId).takeLast(newsLimit)
        (existing - current.toSet()).forEach { old ->
            ShellNotificationIdentity.eventNotificationId(old)?.let(manager::cancel)
        }
        prefs.edit().putString("newsEvents", current.joinToString("|")).apply()
        manager.cancel(newsNotificationId)

        val articleId = postId?.takeIf(ShellNotificationIdentity::isNewsPostId)
        val route = articleId?.let { "https://app.masanawa.com/?tab=home&article=$it" }
            ?: "https://app.masanawa.com/?tab=home"
        val intent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse(route)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        val pending = PendingIntent.getActivity(context, id, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val safeTitle = ShellNotificationIdentity.publicNewsText(title, 180)
            ?: "A new publisher article is available"
        val safePublisher = ShellNotificationIdentity.publicNewsText(publisher, 70)
        val entry = NotificationCompat.Builder(context, newsChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setContentTitle(safePublisher ?: "Masanawa news")
            .setContentText(safeTitle)
            .setStyle(NotificationCompat.BigTextStyle().bigText(safeTitle))
            .setContentIntent(pending)
            .setAutoCancel(true)
            .setOnlyAlertOnce(true)
            .setGroup(newsGroup)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
            .setColor(ContextCompat.getColor(context, ng.unigeria.unigeria.R.color.masanawa_notification_color))
            .setCategory(NotificationCompat.CATEGORY_RECOMMENDATION)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .build()
        manager.notify(id, entry)
        val groupIntent = Intent(context, ShellActivity::class.java).apply {
            action = Intent.ACTION_VIEW
            data = android.net.Uri.parse("https://app.masanawa.com/?tab=home")
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        val groupPending = PendingIntent.getActivity(context, newsSummaryId, groupIntent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        val group = NotificationCompat.Builder(context, newsChannel)
            .setSmallIcon(ng.unigeria.unigeria.R.drawable.ic_masanawa_notification)
            .setContentTitle("Masanawa news")
            .setContentText(if(current.size == 1) "1 recent article" else "${current.size} recent articles")
            .setGroup(newsGroup)
            .setGroupSummary(true)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
            .setOnlyAlertOnce(true)
            .setContentIntent(groupPending)
            .setVisibility(NotificationCompat.VISIBILITY_PRIVATE)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
        manager.notify(newsSummaryId, group)
    }

    fun showNotification(context: Context, route: String, incomingCall: Boolean = false, news: Boolean = false,
                         eventId: String? = null) {
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
        manager.notify(if (news) newsNotificationId else ShellNotificationIdentity.eventNotificationId(eventId)
            ?: (System.currentTimeMillis() % Int.MAX_VALUE).toInt(), notification)
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
            ShellPush.showNewsArticle(this, message.data["eventId"], message.data["postId"],
                message.data["newsTitle"], message.data["newsPublisher"])
            return
        }
        if (!Regex("^[a-z][a-z0-9_]{0,63}$").matches(type) || type.startsWith("human_") ||
            type.startsWith("room_") || type.startsWith("p2p_")) return
        val route = ShellDeepLinks.route(message.data["deepLink"])
            ?: message.data["characterId"]?.let { ShellDeepLinks.route("masanawa://chat/$it") }
            ?: WebOriginPolicy.HOME
        ShellPush.showNotification(this, route,
            incomingCall = ShellNotificationIdentity.isIncomingCall(type, message.data["callId"]),
            eventId = message.data["eventId"])
    }
}
