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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnumpy.zip",
            checksum: "911e0b4e321d06bb63305bd9eb74afd81615bb49b0951ea782d8ff7a1793d9bc"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnpymath.zip",
            checksum: "08c5eaf44a164ceef697beb04a27d812389b60f1f34523b5f1af761ca32c8edd"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnpyrandom.zip",
            checksum: "20d43718c28ddeef6f4e601ce10e83860b45408ddac2bf9a72c5f9619ef35f76"
        )
    ]
)

