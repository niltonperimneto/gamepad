// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "gamepad",
    platforms: [
        .macOS("26.0")
    ],
    products: [
        .executable(
            name: "gamepad",
            targets: ["gamepad"]
        )
    ],
    targets: [
        .executableTarget(
            name: "gamepad",
            path: "Sources"
        )
    ]
)
