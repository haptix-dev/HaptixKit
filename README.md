# HaptixKit

Connect any MCP-capable AI agent to a live iOS app running on a real device. See the screen, read the UI, and perform gestures -- exactly as a human user would.

## Installation

### Swift Package Manager

Add HaptixKit to your project in Xcode:

1. Go to **File > Add Package Dependencies**
2. Enter the repository URL:

```
https://github.com/haptix-dev/sdk
```

3. Select the version and add to your target.

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/haptix-dev/sdk.git", from: "1.0.0"),
]
```

Then add `HaptixKit` to your target's dependencies:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "HaptixKit", package: "haptix-swift"),
    ]
)
```

## Usage

Add the `.haptix()` modifier to your root view:

```swift
import HaptixKit

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .haptix(license: "HPTX-XXXX-XXXX-XXXX")
        }
    }
}
```

### Options

```swift
// Require pairing code (default)
.haptix(license: "HPTX-XXXX-XXXX-XXXX")

// Skip pairing code
.haptix(license: "HPTX-XXXX-XXXX-XXXX", passcode: false)
```

## Requirements

- iOS 26.0+
- Xcode 26+
- A Haptix license key (get one at [haptix.dev](https://haptix.dev))
- The [Haptix macOS app](https://haptix.dev/download) running on your Mac

## How It Works

1. Add HaptixKit to your iOS app
2. Run the Haptix macOS app and start the server
3. Connect your MCP agent (Cursor, Claude Code, Codex, etc.)
4. The agent can now see your app's screen, read the accessibility tree, and perform gestures

## Documentation

- [Getting Started Guide](https://haptix.dev/docs)
- [API Reference](https://haptix.dev/docs/api)

## License

Proprietary. See [haptix.dev/terms](https://haptix.dev/terms) for details.
