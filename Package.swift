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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnumpy.zip",
            checksum: "9db92dfba6c029ee40c15c45fbe20e3880ddeae1757e5e576293addcf608f6a2"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnpymath.zip",
            checksum: "581e0180ac7a45ac5b59fac8c2f5b93970ebf680ba8ba815d2278449adeb16a9"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.6/libnpyrandom.zip",
            checksum: "cee2afd6e188fe7ec5d2d84d877f4189735f25d1552bc7ff7d2d80364087446f"
        )
    ]
)

