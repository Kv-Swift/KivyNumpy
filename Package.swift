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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.8/libnumpy.zip",
            checksum: "ec158cf1910268253336e5cf55db3a5b5054fb6eef06ae88da33a09c8417af13"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.8/libnpymath.zip",
            checksum: "6b42cce28c525e1fcadecd4e43e13b61df23e8f97c6fde8d5aca3ef18e6920db"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.8/libnpyrandom.zip",
            checksum: "67fea49c81646eb2ca670f932b506ebc3277923edea5c92499d93ae59f23594f"
        )
    ]
)

