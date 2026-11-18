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
}
