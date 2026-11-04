// swift-tools-version: 5.9
//
// Dev Scenario in-app instrumentation SDK for iOS, distributed as a prebuilt binary.
// Generated at release time; do not edit by hand.
//
// The product links two frameworks: the SDK, and a tiny Obj-C one whose `+load` registers for the app's
// did-finish-launching notification, so linking the product is enough for the SDK to start at launch.
import PackageDescription

let package = Package(
    name: "DevScenarioAppInstrumentation",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DevScenarioAppInstrumentation",
            targets: ["DevScenarioAppInstrumentation", "DevScenarioAppInstrumentationAutoStart"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DevScenarioAppInstrumentation",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.2.0/DevScenarioAppInstrumentation.xcframework.zip",
            checksum: "0870f70e29fb34e0786099153f61219b908a567586e7da46ed0eff95ba509d89"
        ),
        .binaryTarget(
            name: "DevScenarioAppInstrumentationAutoStart",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.2.0/DevScenarioAppInstrumentationAutoStart.xcframework.zip",
            checksum: "a8b8ef7966bbc33ffc333ec4e0ee200334833c63d2fe30b24e1507000d673219"
        )
    ]
)
