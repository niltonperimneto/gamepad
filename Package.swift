// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "gamepad",
    platforms: [
        .macOS(.v14)
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
