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
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.1.0/DevScenarioAppInstrumentation.xcframework.zip",
            checksum: "751e3463228971354f0b64ce0d3518b67ba6b0a00ccc8be8f5165b7f118d572b"
        ),
        .binaryTarget(
            name: "DevScenarioAppInstrumentationAutoStart",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.1.0/DevScenarioAppInstrumentationAutoStart.xcframework.zip",
            checksum: "f49385b154ad29184b6a47236e277c4a80698d32f8f07632be5fa0c7b55c60b2"
        )
    ]
)
