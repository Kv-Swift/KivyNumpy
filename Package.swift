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
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.12/libnumpy.zip",
            checksum: "8132687599ce6caf0212f42aa1ccc4091112d33d79d2c40842f78491f8b79640"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.12/libnpymath.zip",
            checksum: "ba951780ab215d45aefca22b12433e33e54c40ff8599f881c1dfc6fce9baaa8c"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.1.12/libnpyrandom.zip",
            checksum: "f04ab195bcfbaa56939bcd2717f7c4ab91f10ffd8c614ed892a330fe0283b1c7"
        )
    ]
)

