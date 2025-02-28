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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.17/libnumpy.zip",
            checksum: "fbbdc5e009f0d5edf75bf5a7b189059171f49f8ab3f4e344460e1ead05f01b71"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.17/libnpymath.zip",
            checksum: "677cde98b765b4b741ea4af62693e9e0a39f7d0bb153d9423350dfc969a0225c"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.17/libnpyrandom.zip",
            checksum: "6000db99cad27011ea415e1c9604b3dd19b5521bdce27ef7bc416d2391eded69"
        )
    ]
)

