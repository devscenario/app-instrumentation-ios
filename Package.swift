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
            url: "https://github.com/devscenario/app-instrumentation-ios/releases/download/0.9.2/DevtoolAppInstrumentation.xcframework.zip",
            checksum: "b9c1b797252b3e319a71e4eebf76ce02dad61d383706f87a0f6e53d05ae71f5c"
        )
    ]
)
