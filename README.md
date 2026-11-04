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

and add the `DevScenarioAppInstrumentation` library to your app target. Or in `Package.swift`:

```swift
.package(url: "https://github.com/devscenario/app-instrumentation-ios.git", from: "1.2.0")
```

Requirements: iOS 13+, Xcode 16.4 or newer.

## Use

Linking the library is enough: the SDK starts itself when the app finishes launching. Then pick **In-app
SDK** as the iOS automation backend in Dev Scenario's driver settings.

It only starts in debuggable builds: on the simulator, or on a device when the app is development-signed.
App Store, TestFlight and ad-hoc builds stay closed unless the app's Info.plist opts in:

| Info.plist key | Type | Effect |
|---|---|---|
| `DevScenarioInstrumentationEnabledInRelease` | Boolean | Start in non-debuggable builds too. |
| `DevScenarioInstrumentationAutoStart` | Boolean | `NO`: don't start at launch; call `start()` yourself. Default `YES`. |
| `DevScenarioInstrumentationPort` | Number | Listening port (1024–65535) when Dev Scenario passes none and the app calls no `setPort(_:)`; default 7756. |

Calling `start()` yourself is optional and still supported; it starts the SDK before launch finishes:

```swift
import DevScenarioAppInstrumentation

@main
struct MyApp: App {
    init() {
        DevScenarioAppInstrumentation.start()   // optional; the launch start is then a no-op
    }
    var body: some Scene { /* ... */ }
}
```

`start(allowInRelease: true)` opens a non-debuggable build from code, like the Info.plist key.

## Keep it out of App Store builds

Link the SDK only into the builds you test with, for example a dedicated E2E target or scheme, never into
the build you submit to the App Store. To show SwiftUI content to automation and to perform gestures as
real touches, the SDK looks up Apple accessibility and touch-event functions that are not public API. It
calls them only in debuggable builds, but their names are in the binary, and App Store review can reject
an app that contains them.

## Version

`1.2.0`. Debug symbols (dSYMs) ship inside the XCFramework.
