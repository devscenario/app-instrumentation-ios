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
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/0.2.10/DevtoolAppInstrumentation.xcframework.zip",
            checksum: "1e6c597ea832c292b06a405855c6bc40b13ff41e7b1007a0828ed8a04226813e"
        )
    ]
)
