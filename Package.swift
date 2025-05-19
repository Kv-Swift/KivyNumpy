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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.10/libnumpy.zip",
            checksum: "42739b13d1360c82da1f36c179ef307c779e89b6e16c9162be33452560b2fd88"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.10/libnpymath.zip",
            checksum: "4908e5720f2b22fc7190d8ac20f7dac051c8f0a72fb31f4313b3bf584c1db024"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.10/libnpyrandom.zip",
            checksum: "f46f1ff9c9bc982d1442719ab9f7d60738ba5a99473f62aec37b78cfb7072693"
        )
    ]
)

