// swift-tools-version: 5.9
//
// Dev Scenario in-app instrumentation SDK for iOS, distributed as a prebuilt binary.
// Generated at release time; do not edit by hand.
import PackageDescription

let package = Package(
    name: "DevtoolAppInstrumentation",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DevtoolAppInstrumentation",
            targets: ["DevtoolAppInstrumentation"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DevtoolAppInstrumentation",
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/0.2.11/DevtoolAppInstrumentation.xcframework.zip",
            checksum: "5f7fb8ec914e1e5f581587a6dc1b5759b4b9f9689146d3f52cc377930fe6f632"
        )
    ]
)
