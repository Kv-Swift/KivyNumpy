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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.16/libnumpy.zip",
            checksum: "e3d05e0e7e212169b8fe4c89e2fb3edbe0f2ca430e4c8db66814036ff2888c43"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.16/libnpymath.zip",
            checksum: "c82cb8c3fc9f01c2f261d3482e0b414c692dfe06a71f805e71b5eaccc6d0f356"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.16/libnpyrandom.zip",
            checksum: "059bcc7ade30942d8b79f6ac2229dd38cc33f1ecec64e01a82497985dc0f8105"
        )
    ]
)

