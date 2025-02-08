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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnumpy.zip",
            checksum: "bb415502a719bdb804f1bacd783b8e15fd59db9689526d3955d7db62da9a82f8"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnpymath.zip",
            checksum: "454afcec74f050ce2db1753b454efe39044b2481831346730130eba11dacb9c3"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.11/libnpyrandom.zip",
            checksum: "fd17211197d129e315a9318acf8bbf77d1adc991c38b2cd7f0b5af51fe8401ae"
        )
    ]
)

