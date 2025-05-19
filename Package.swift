// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.9/libnumpy.zip",
            checksum: "3433041fbc51c721eb005b0b2222a6544a0b79e0bb23c737706a616d994b82fb"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.9/libnpymath.zip",
            checksum: "c8a08ba9db3c5ef3f582cdbbbc36b462af135711c9fc7b9081a9b261a0b37cbc"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.9/libnpyrandom.zip",
            checksum: "b5aef6717dbf1694315a5ad9b2332f0285a6402d48974644613542bc89d19b96"
        )
    ]
)

