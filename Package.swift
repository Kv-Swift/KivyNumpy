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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.6/libnumpy.zip",
            checksum: "19d5202ae0625185e6d4479bb6742e1230cf3e2c0fc81fee73b1f43729bc250b"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.6/libnpymath.zip",
            checksum: "d05e10c9612b1f5f035d79827b725ca01758f8bbcc9d512b97ccee9d2c64c2ed"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.6/libnpyrandom.zip",
            checksum: "dfb4fb252a629d9b54181f97c05ae464a243a94d1563af275b40592222154d97"
        )
    ]
)

