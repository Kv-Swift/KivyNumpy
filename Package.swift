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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.0/libnumpy.zip",
            checksum: "8a6fa9eefc2e1e6fe0195aa8e09f845fccaf92a96f95cad0905a88516d9f7c86"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.0/libnpymath.zip",
            checksum: "ea3311176a67f18e2545bd16fe473bc73fd82b587e734f0e709ce58af0f8cbe4"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.0/libnpyrandom.zip",
            checksum: "6f910c136b73951aa8da3b28c440918521bc181263965113c9f3eb5dfe8b6e2c"
        )
    ]
)

