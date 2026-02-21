# HaptixKit

Connect any MCP-capable AI agent to a live iOS app running on a real device. See the screen, read the UI, and perform gestures -- exactly as a human user would.

## Installation

### Using Xcode

1. Go to **File → Add Package Dependencies**
2. Paste the package URL: `https://github.com/haptix-dev/HaptixKit`
3. Click **Add Package**

### Using Package.swift

Add HaptixKit to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(
        url: "https://github.com/haptix-dev/HaptixKit.git",
        from: "1.0.0"
    )
]
```

## Usage

Add one line to your app's `init()`. HaptixKit runs entirely outside the
SwiftUI view hierarchy -- it manages its own server and overlays independently
and will not cause view re-renders or interfere with your app.

```swift
#if DEBUG
import HaptixKit
#endif

@main
struct MyApp: App {
    init() {
        #if DEBUG
        Haptix.start(license: "HPTX-XXXX-XXXX-XXXX")
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

### SDK parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `license` | `String` | Required | Your Haptix license key |
| `passcode` | `Bool` | `true` | Require 6-digit pairing code for security |
| `haptics` | `Bool` | `true` | Haptic feedback on device when agent performs actions |

### Required Info.plist Keys

HaptixKit validates these at startup and prints warnings if missing:

```xml
<key>NSLocalNetworkUsageDescription</key>
<string>Haptix uses the local network to connect your AI agent to this app during development.</string>

<key>NSBonjourServices</key>
<array>
    <string>_haptix._tcp</string>
</array>
```

You also need the **Multicast Networking** entitlement:
Xcode > Target > Signing & Capabilities > + Capability > Multicast Networking

When an agent is connected, the device shows a **blue activity border** and plays
**haptic feedback** on each action -- security indicators so you always know when
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
