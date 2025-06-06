// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.0.14/libnumpy.zip",
            checksum: "2d3a31fc085738d9147369ca7cdf8e3813bbd84f429d08980f5856e60283a8a9"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.0.14/libnpymath.zip",
            checksum: "0a69aac3088595dafaa918cad174ef40a69451e987a312936b9008cd32d87894"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.0.14/libnpyrandom.zip",
            checksum: "901471e005dcaf8bdd96fb92b9c15255c78fd67a3ad8b5ab1f348f305338e740"
        )
    ]
)

