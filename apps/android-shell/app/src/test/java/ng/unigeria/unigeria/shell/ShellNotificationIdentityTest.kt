package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class ShellNotificationIdentityTest {
    @Test fun publicNewsHeadlineIsReadableAndBounded() {
        assertEquals("Verified public story", ShellNotificationIdentity.publicNewsText("  Verified  public <b>story</b>", 180))
        assertEquals(null, ShellNotificationIdentity.publicNewsText("", 180))
        assertEquals("ABC", ShellNotificationIdentity.publicNewsText("ABCDEFG", 3))
    }

    @Test fun stableForRepeatedNotificationsToTheSameChat() {
        val route = "https://app.chatmeup.online/?tab=chats&profile=character_12345678-1234-1234-1234-123456789abc"
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
        val route = "https://app.chatmeup.online/?tab=calls"
        assertNotEquals(ShellNotificationIdentity.requestCode(route, true),
            ShellNotificationIdentity.requestCode(route, false))
    }

    @Test fun onlyValidatedCallInvitationsUseTheCallChannel() {
        val id = "12345678-1234-1234-1234-123456789abc"
        assertEquals(true, ShellNotificationIdentity.isIncomingCall("incoming_call", id))
        assertEquals(false, ShellNotificationIdentity.isIncomingCall("incoming_call", "bad-id"))
        assertEquals(false, ShellNotificationIdentity.isIncomingCall("wallet_notice", id))
    }
}
