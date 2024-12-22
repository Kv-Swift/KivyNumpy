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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.15/libnumpy.zip",
            checksum: "fde20fdfb99ea7c80f39626e54d4883e26635e1b4c1fa0e3d93dad4e176545b5"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.15/libnpymath.zip",
            checksum: "c635270b5a6ceb149e661808ef37b87983a671d044fd096ab24fadb6a4869735"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.15/libnpyrandom.zip",
            checksum: "184aee838a0b244a7caf799eaccbb996507e550d01b75709112bdc8dde9f5b14"
        )
    ]
)

