import SwiftUI

@main
struct CopyURLApp: App {
	@NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
	
	var body: some Scene {
		Settings {} // No UI at all
	}
}

class AppDelegate: NSObject, NSApplicationDelegate {
	private var receivedURL = false

	func application(_ application: NSApplication, open urls: [URL]) {
		receivedURL = true
		if let url = urls.first {
			NSPasteboard.general.clearContents()
			NSPasteboard.general.setString(url.absoluteString, forType: .string)
			print("Copied to clipboard: \(url.absoluteString)")
		}
		NSApp.terminate(nil)
	}

	func applicationDidFinishLaunching(_ notification: Notification) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
			if !self.receivedURL {
				NSApp.terminate(nil)
			}
		}
	}
}
