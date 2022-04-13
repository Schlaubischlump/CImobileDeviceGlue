// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "CImobileDeviceGlue",
    products: [
        .library(
            name: "CImobileDeviceGlue",
            targets: ["CImobileDeviceGlue"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Schlaubischlump/CPlist", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "CImobileDeviceGlue",
            dependencies: ["CPlist"],
            path: "Sources/libimobiledevice-glue",
            exclude: [
                "m4",
            ],
            publicHeadersPath: "include",
            cSettings: [
                .define("HAVE_GETIFADDRS"),
            ]
        )
    ]
)
