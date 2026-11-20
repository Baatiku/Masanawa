package ng.unigeria.unigeria.shell

import org.junit.Assert.*
import org.junit.Test

class ShellWebUpdatesTest {
    @Test fun detectsNewWebDeployments() {
        val original = ShellWebUpdates.fingerprint("<!doctype html><html><script src='/assets/app-001.js'></script></html>")!!
        val published = ShellWebUpdates.fingerprint("<!doctype html><html><script src='/assets/app-002.js'></script></html>")!!
        assertFalse(ShellWebUpdates.changed(null, original))
        assertFalse(ShellWebUpdates.changed(original, original))
        assertTrue(ShellWebUpdates.changed(original, published))
        assertTrue(ShellWebUpdates.changed(original, ShellWebUpdates.versionFingerprint(
            "{\"revision\":\"abcde12345-build7\"}")!!))
    }

    @Test fun rejectsInvalidOrOversizedDocuments() {
        assertNull(ShellWebUpdates.fingerprint(""))
        assertNull(ShellWebUpdates.fingerprint("{\"error\":\"unauthorized\"}"))
        assertNull(ShellWebUpdates.fingerprint("<html>" + "x".repeat(600_000) + "</html>"))
        assertNull(ShellWebUpdates.versionFingerprint("<html>not a manifest</html>"))
        assertNull(ShellWebUpdates.versionFingerprint("{\"revision\":\"bad\"}"))
    }

    @Test fun safeReloadDefersInteractionAndRefreshesServiceWorkers() {
        assertTrue(ShellWebUpdates.safeToReloadScript.contains("__masanawaCanAutoUpdate"))
        assertTrue(ShellWebUpdates.safeToReloadScript.contains(".wa-voice-review"))
        assertTrue(ShellWebUpdates.safeToReloadScript.contains(".masana-call-screen"))
        assertTrue(ShellWebUpdates.safeToReloadScript.contains("audio,video"))
        assertTrue(ShellWebUpdates.reloadScript.contains("reg.update()"))
        assertTrue(ShellWebUpdates.reloadScript.contains("location.reload()"))
    }
}
