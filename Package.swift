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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnumpy.zip",
            checksum: "3fdb15a859c133a13f5bdba99efd240136833b312aebacda67962a447edfbfe8"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnpymath.zip",
            checksum: "6bd42db94f1b7a2edd7926ecb0ba268c797c8fd69e4439f6dec5950422859084"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnpyrandom.zip",
            checksum: "df650988e6f61c08ed44be36458d46eaab0da6c89719581257d2da90b7f4e0d0"
        )
    ]
)

