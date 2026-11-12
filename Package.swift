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
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.2.1/DevScenarioAppInstrumentation.xcframework.zip",
            checksum: "c1679c97477459e529611f43cdc2938a88d38d2e1c16a7f4958531fc2eb9effc"
        ),
        .binaryTarget(
            name: "DevScenarioAppInstrumentationAutoStart",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.2.1/DevScenarioAppInstrumentationAutoStart.xcframework.zip",
            checksum: "3fe3025824bad2224f21c3bc1aebcb92f96f34cc61dc03b4918215608653c28f"
        )
    ]
)
