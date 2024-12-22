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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnumpy.zip",
            checksum: "bd9843aacddd309a9ee85c13c3d15ae2147a0d04d83a217862762e5b80bed9f2"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnpymath.zip",
            checksum: "9c4e75579a29c3c6805a54de04357e304c90121f0a41876afe647c8e9e1ba503"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.8/libnpyrandom.zip",
            checksum: "6ad7a3751656a3699ca8b6c1aa28004a531c73a68b0a6331c33ebc43ad8fe363"
        )
    ]
)

