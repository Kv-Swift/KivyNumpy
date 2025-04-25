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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.1/libnumpy.zip",
            checksum: "67010ad7ff52f7e165eefcc2da7f05e838a82aee4de3f72db19a4c28d9ba2596"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.1/libnpymath.zip",
            checksum: "65892cdc248b9d2da9d3d073a3dd74975a822845bcac59ad8b16485505a1c544"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.1/libnpyrandom.zip",
            checksum: "37bf277115c9450ecb4a2752c663d1465ad0dab3ac8a363618329573e50d7511"
        )
    ]
)

