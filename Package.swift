// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "KivyNumpy",
            dependencies: [
        		"libnumpy",
        		"libnpymath",
        		"libnpyrandom"
        	],
            resources: [
        	],
            linkerSettings: [
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libnumpy",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.18/libnumpy.zip",
            checksum: "8e399a866eb4e6b1c651ff3f8d849e6e8c85590b010c4f6f5d469b70572af9bf"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.18/libnpymath.zip",
            checksum: "0ec9ca0a80b5d47a325a0bfea8bdc4975f1a3e61a4fecce4075699807d7ca6a8"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.18/libnpyrandom.zip",
            checksum: "ead18b556d64d0d1dad902e8af153638086f653edc3e2acadde497f12eb32975"
        )
    ]
)

