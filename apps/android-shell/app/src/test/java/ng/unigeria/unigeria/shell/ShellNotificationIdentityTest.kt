package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class ShellNotificationIdentityTest {
    @Test fun stableForRepeatedNotificationsToTheSameChat() {
        val route = "https://app.masanawa.com/?tab=chats&profile=character_12345678-1234-1234-1234-123456789abc"
        assertEquals(ShellNotificationIdentity.requestCode(route, false),
            ShellNotificationIdentity.requestCode(route, false))
    }

    @Test fun distinctConversationsCannotOpenTheMostRecentContact() {
        val first = "masanawa://chat/character_12345678-1234-1234-1234-123456789abc"
        val second = "masanawa://chat/character_87654321-4321-4321-4321-cba987654321"
        assertNotEquals(ShellNotificationIdentity.requestCode(first, false),
            ShellNotificationIdentity.requestCode(second, false))
    }

    @Test fun incomingCallDoesNotReplaceChatNotification() {
        val route = "https://app.masanawa.com/?tab=calls"
        assertNotEquals(ShellNotificationIdentity.requestCode(route, true),
            ShellNotificationIdentity.requestCode(route, false))
    }

    @Test fun newsNotificationsAreDistinctAndIdempotentAcrossEvents() {
        val articleOne = "news-123abc"
        val articleTwo = "news-456def"
        assertEquals(ShellNotificationIdentity.eventNotificationId(articleOne),
            ShellNotificationIdentity.eventNotificationId(articleOne))
        assertNotEquals(ShellNotificationIdentity.eventNotificationId(articleOne),
            ShellNotificationIdentity.eventNotificationId(articleTwo))
        assertEquals(null, ShellNotificationIdentity.eventNotificationId("../unsafe"))
        assertEquals(null, ShellNotificationIdentity.eventNotificationId(""))
    }

    @Test fun onlyCanonicalArticlePostsAndBoundedPublicPreviewsAreShown() {
        val uuid = "12345678-1234-1234-1234-123456789abc"
        assertEquals(true, ShellNotificationIdentity.isNewsPostId(uuid))
        assertEquals(false, ShellNotificationIdentity.isNewsPostId("../profile"))
        assertEquals(false, ShellNotificationIdentity.isNewsPostId("1234"))
        assertEquals("Channels Television", ShellNotificationIdentity.publicNewsText("Channels Television", 70))
        assertEquals(null, ShellNotificationIdentity.publicNewsText("private\nsecret", 70))
        assertEquals(null, ShellNotificationIdentity.publicNewsText("A".repeat(200), 180))
    }

    @Test fun onlyValidatedCallInvitationsUseTheCallChannel() {
        val id = "12345678-1234-1234-1234-123456789abc"
        assertEquals(true, ShellNotificationIdentity.isIncomingCall("incoming_call", id))
        assertEquals(false, ShellNotificationIdentity.isIncomingCall("incoming_call", "bad-id"))
        assertEquals(false, ShellNotificationIdentity.isIncomingCall("wallet_notice", id))
    }
}
