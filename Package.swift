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
        	]
        ),
        .binaryTarget(
            name: "libnumpy",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnumpy.zip",
            checksum: "3878b0745b2f27e79d2910708c41f42ed92e9cda57a5549ca46a45b3f5c7a671"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnpymath.zip",
            checksum: "b3e30c29d1ff9b81342b31ba1e93c3a4fa4518a79e4e3dccd34d9f85cda3e6c2"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnpyrandom.zip",
            checksum: "09cfcda5fe320556cc5e4d459dc4777e2b42907830deb6dc9e8ac04b16fe1f2c"
        )
    ]
)

