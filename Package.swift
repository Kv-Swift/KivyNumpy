// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor("311.0.0"))
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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnumpy.zip",
            checksum: "233be8e9891f9c84abe36c4a0acaaba139b1e5d8d72cdaa1e4cbb0d42bb58720"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpymath.zip",
            checksum: "8bb3c40cab92fa8295bd0bce23ce78db8c392312f63b487db91ef6ff37df4b76"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpyrandom.zip",
            checksum: "101b5fc65d5ceb9dd80c350fa389b49f9b63b4ce9e01e1ead21dec820a96e2fd"
        )
    ]
)

