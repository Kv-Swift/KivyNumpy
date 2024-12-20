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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.9/libnumpy.zip",
            checksum: "0ce910cb1494aa2c3052c0af64c056a52a700b295446c852367bf8ebde1a61f8"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.9/libnpymath.zip",
            checksum: "fe546d6bdf90944b46af22d6dc4b2ffd1b9f7b2a303ce057de853e7cf7f6854f"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.9/libnpyrandom.zip",
            checksum: "8d172de799df897a1f808aca8c17ff2bc483c76d9b68072a105253ad5f6aa0cd"
        )
    ]
)

