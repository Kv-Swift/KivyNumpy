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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnumpy.zip",
            checksum: "375a1fe84276e7b4cfaa7753777433d7960cbfc09eacc20a47d97f8caf0d7309"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnpymath.zip",
            checksum: "de279354bd26d9b5273d43c80e590ad88380be8900300f1cb5a3980927a5056f"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.12/libnpyrandom.zip",
            checksum: "5b78e18cf09be9f511e55b8978c5b3c58f5465c1db5f06a1e9c642b50a7644b7"
        )
    ]
)

