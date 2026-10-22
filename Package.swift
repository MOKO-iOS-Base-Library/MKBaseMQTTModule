// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "MKBaseMQTTModule",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MKBaseMQTTModule",
            targets: ["MKBaseMQTTModule"]
        )
    ],
    targets: [
        .target(
            name: "MKBaseMQTTModule",
            path: "MKBaseMQTTModule/Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("MQTT"),
                .headerSearchPath("MQTTClient"),
                .headerSearchPath("NetworkManager")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration")
            ]
        )
    ]
)
