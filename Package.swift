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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.10/libnumpy.zip",
            checksum: "43bbb39f7ff7c37aac2b822b2cda280de37413fc6983e8c9e8c2ffbcfab939d8"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.10/libnpymath.zip",
            checksum: "789f955eaadc7398a474b10d08ca959db692f98a11c3a1e3e5b659ec01c9221b"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.10/libnpyrandom.zip",
            checksum: "024566554ff45d39a6048e023dcf95e4162f4b751f41efbb96b5f6b3d9e930cb"
        )
    ]
)

