package ng.unigeria.unigeria.shell

import org.junit.Assert.assertEquals
import org.junit.Test

class ShellBackResultTest {
    @Test fun overlayIsHandledByWebUi() {
        assertEquals(ShellBackResult.HANDLED, ShellBackResult.fromJavaScript("\"handled\""))
    }

    @Test fun rootExitsInsteadOfReplayingBrowserHistory() {
        assertEquals(ShellBackResult.EXIT, ShellBackResult.fromJavaScript("\"exit\""))
    }

    @Test fun olderWebDeploymentsRetainNormalBackHandling() {
        assertEquals(ShellBackResult.HISTORY, ShellBackResult.fromJavaScript("null"))
        assertEquals(ShellBackResult.HISTORY, ShellBackResult.fromJavaScript(null))
        assertEquals(ShellBackResult.HISTORY, ShellBackResult.fromJavaScript("\"unknown\""))
    }
}
