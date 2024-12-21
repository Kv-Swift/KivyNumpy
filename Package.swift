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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnumpy.zip",
            checksum: "b4eb4b9b134e166a23d78e833ea9fd66798f4b307542cc8c77d44d4514681623"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnpymath.zip",
            checksum: "9b37aedbcf8c7f95e0ac87fa4526e011af565f9e506430eb45c8331123a7cae6"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnpyrandom.zip",
            checksum: "40db841484bff7cb218e8cf31e31a7d4fafdff7897d38a9b09de784e02298925"
        )
    ]
)

