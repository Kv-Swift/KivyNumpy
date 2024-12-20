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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnumpy.zip",
            checksum: "2d05327593d049baf82d7ac04cd78e82b764b46e81ef6bfec0dd979ce272a0b9"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnpymath.zip",
            checksum: "df748477a64981ac9bb670c5c3462c412a778eb542d49bf37d3c4a66679a65ed"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnpyrandom.zip",
            checksum: "b0a0196ee12a38020229c337aaf118a85e970f6f3caff58a374b37a1e6b3a02c"
        )
    ]
)

