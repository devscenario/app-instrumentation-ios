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
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.1.1/DevScenarioAppInstrumentation.xcframework.zip",
            checksum: "c156e3e47c4fe7fff25e16aa0bddbf21913d5be4410994cf40ed7ef37c8a9805"
        ),
        .binaryTarget(
            name: "DevScenarioAppInstrumentationAutoStart",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.1.1/DevScenarioAppInstrumentationAutoStart.xcframework.zip",
            checksum: "62ac83583f7ac43b87562690a37d42d211912de496b6a5ec3b8f8bae8aec7c74"
        )
    ]
)
