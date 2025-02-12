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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.14/libnumpy.zip",
            checksum: "669ee8a0da5686fd6f854bd65c453c179eb3c3381dd9cbc309dcef2beb801049"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.14/libnpymath.zip",
            checksum: "91a0e3aa32b478ca72beac9be1b57647d469224d0d0d6d3a1bd1e86b63ab52d4"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.14/libnpyrandom.zip",
            checksum: "2853415866d0b42e7c945ad9fa8a44f1adf9772261afab2aa7fbbad35e7a8cb5"
        )
    ]
)

