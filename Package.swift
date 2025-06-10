// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/kv-swift/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "KivyNumpy",
            dependencies: [
        		.target(name: "libnumpy"),
        		.target(name: "libnpymath"),
        		.target(name: "libnpyrandom")
        	],
            resources: [
        	],
            linkerSettings: [
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libnumpy",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.19/libnumpy.zip",
            checksum: "d172862b66dc445c3487ce782cee172e25bbd3bbb4c434a10da518ae07183f36"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.19/libnpymath.zip",
            checksum: "313acb8024a7ad0129f2f4256c873ee824e0c64dedef9b3e7795b84067cd5ce9"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.19/libnpyrandom.zip",
            checksum: "8848f6fd261a83f4fc57fa743e470ef725c48b90f1dc3219db826c796b3e20e1"
        )
    ]
)

