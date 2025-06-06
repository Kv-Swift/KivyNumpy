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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.14/libnumpy.zip",
            checksum: "354fa55437f4ecc0ee38239c96399497e42cb42dbaedfb1668182a3bfb9c8fc5"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.14/libnpymath.zip",
            checksum: "6dacfced7141ca9078f2ab0c7dde427a76d01af0a40cf25c514f16f2503c259f"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.14/libnpyrandom.zip",
            checksum: "b0d020e5f0b9fc788cc215c5fb99db5b04d869a255e18e714fa01d77c96d6092"
        )
    ]
)

