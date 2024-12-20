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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnumpy.zip",
            checksum: "734bf6792e64968d00026e8357ea739b9a69be300539dd88836b8fb466cfcc1c"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpymath.zip",
            checksum: "2c3a47908a64ea3f66d5beb64bf2b65cac6df339d7ed48b56342cc39310c8fb5"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.5/libnpyrandom.zip",
            checksum: "71064b8d32173e84e48fbb591b68a65f59ae3cc7acf46285dd581ec4b09f5cf5"
        )
    ]
)

