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
            checksum: "d133b3f56ec08e27e527eb2b1a55d16e1e820879d436b7b5c582771062b003d4"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpymath.zip",
            checksum: "2d3acfa9d497f815a43f0a1a291ea5871b674632ec2750e3153d4656e8452bd3"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpyrandom.zip",
            checksum: "2f508f02e536495bf97977c9a6bdac05bf29f08896d7802739cba1ca13a41877"
        )
    ]
)

