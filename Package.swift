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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.5/libnumpy.zip",
            checksum: "d6894a965bebc6a9ab42b32f9a42ee1c5526b3e7c87c125cb94f9bacf4cc7a9d"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.5/libnpymath.zip",
            checksum: "6f1057a6fc05ed6ce445797234dec342d036ccfbfc0ef9743f799fbc4229b16c"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.5/libnpyrandom.zip",
            checksum: "cce60d797bccbff4cce27b50e420753efaf6cd5e5e448679e88c35e18cb72a3d"
        )
    ]
)

