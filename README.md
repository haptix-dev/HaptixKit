# HaptixKit

Connect any MCP-capable AI agent to a live iOS app running on a real device. See the screen, read the UI, and perform gestures -- exactly as a human user would.

## Installation

### Swift Package Manager

Add HaptixKit to your project in Xcode:

1. Go to **File > Add Package Dependencies**
2. Enter the repository URL:

```
https://github.com/haptix-dev/HaptixKit
```

3. Select the version and add to your target.

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/haptix-dev/HaptixKit.git", from: "1.0.0"),
]
```

Then add `HaptixKit` to your target's dependencies:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "HaptixKit", package: "HaptixKit"),
    ]
)
```

## Usage

Add one line to your app's `init()`. HaptixKit runs entirely outside the
SwiftUI view hierarchy -- it manages its own server and overlays independently
and will not cause view re-renders or interfere with your app.

```swift
import HaptixKit

@main
struct MyApp: App {
    init() {
        Haptix.start(license: "HPTX-XXXX-XXXX-XXXX")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

### Options

```swift
// Require pairing code (default)
Haptix.start(license: "HPTX-XXXX-XXXX-XXXX")

// Skip pairing code for trusted networks
Haptix.start(license: "HPTX-XXXX-XXXX-XXXX", passcode: false)

// Disable haptic feedback (enabled by default)
Haptix.start(license: "HPTX-XXXX-XXXX-XXXX", haptics: false)
```

### Required Info.plist Keys

HaptixKit validates these at startup and prints warnings if missing:

```xml
<key>NSLocalNetworkUsageDescription</key>
<string>Haptix uses the local network to connect agents to this app for development and debugging.</string>

<key>NSBonjourServices</key>
<array>
    <string>_haptix._tcp</string>
</array>
```

You also need the **Multicast Networking** entitlement:
Xcode > Target > Signing & Capabilities > + Capability > Multicast Networking

When an agent is connected, the device shows a **blue activity border** and plays
**haptic feedback** on each action — security indicators so you always know when
your device is being controlled remotely.

## Requirements

- iOS 26.0+
- Xcode 26+
- A Haptix license key
- The [Haptix macOS app](https://get.haptix.dev/latest/Haptix.dmg) running on your Mac

## How It Works

1. Add HaptixKit to your iOS app
2. Run the Haptix macOS app and start the server
3. Connect your MCP agent (Cursor, Claude Code, Codex, etc.)
4. The agent can now see your app's screen, read the accessibility tree, and perform gestures

## License

Proprietary. All rights reserved.
