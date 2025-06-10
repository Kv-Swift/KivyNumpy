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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.20/libnumpy.zip",
            checksum: "ed432adee3fab262a9cda0f8ec5c4bf6e4941d53333836f3261389655b2d81dd"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.20/libnpymath.zip",
            checksum: "2e01a909c361d08e1cfbf2d34c7890ebc45992928a7ba6580d8149a0d0adeae3"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.20/libnpyrandom.zip",
            checksum: "14fcac0a3107047ee48b8653b224d3f3baf097079de46f1610cc13efb4396f0a"
        )
    ]
)

