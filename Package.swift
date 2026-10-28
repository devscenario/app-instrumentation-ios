// swift-tools-version: 5.9
//
// Dev Scenario in-app instrumentation SDK for iOS, distributed as a prebuilt binary.
// Generated at release time; do not edit by hand.
import PackageDescription

let package = Package(
    name: "DevScenarioAppInstrumentation",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DevScenarioAppInstrumentation",
            targets: ["DevScenarioAppInstrumentation"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DevScenarioAppInstrumentation",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/1.0.1/DevScenarioAppInstrumentation.xcframework.zip",
            checksum: "6310e35841e3a9e090dc859e6ada529450aab6f98156242cd646566b8ae3f7ea"
        )
    ]
)
