# Dev Scenario in-app instrumentation SDK for iOS

Lets [Dev Scenario](https://github.com/devscenario) drive your app's UI from inside the app process: taps,
swipes, text input, view hierarchy and screenshots over a local HTTP endpoint, without XCUITest.

This repository only distributes the SDK: `Package.swift` points at a prebuilt XCFramework attached to
each [release](https://github.com/devscenario/app-instrumentation-ios/releases). The source is not published here.

## Install

Xcode: **File → Add Package Dependencies…**, enter

```
https://github.com/devscenario/app-instrumentation-ios.git
```

and add the `DevtoolAppInstrumentation` library to your app target. Or in `Package.swift`:

```swift
.package(url: "https://github.com/devscenario/app-instrumentation-ios.git", from: "0.2.10")
```

Requirements: iOS 13+, Xcode 16.4 or newer.

## Use

Start the SDK once, early in the app's launch:

```swift
import DevtoolAppInstrumentation

@main
struct MyApp: App {
    init() {
        DevtoolAppInstrumentation.start()
    }
    var body: some Scene { /* ... */ }
}
```

`start()` only runs in debuggable builds: on the simulator, or on a device when the app is
development-signed. App Store, TestFlight and ad-hoc builds stay closed unless you call
`start(allowInRelease: true)`. Then pick **In-app SDK** as the iOS automation backend in Dev Scenario's
driver settings.

## Version

`0.2.10`. Debug symbols (dSYMs) ship inside the XCFramework.
