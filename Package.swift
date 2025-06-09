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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.15/libnumpy.zip",
            checksum: "380595a286eee6a0ff328dc4dc182b89e85429f6813e0164ce8f8983a85fa078"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.15/libnpymath.zip",
            checksum: "8be6cac220a46cd38bf39ac552c4eb831124f1657c2874cb21b7b18f9e6e3141"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.15/libnpyrandom.zip",
            checksum: "ba40e212af284b8acb823e1e17de9a597357a1816f6b1b3c26cdee68855f6fcb"
        )
    ]
)

