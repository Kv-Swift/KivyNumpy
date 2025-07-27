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
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.21/libnumpy.zip",
            checksum: "7c1ffbfdb9606933a56f06eb4c1a674e62a8b35602fe798ff8e8b0ab5ba43d9c"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.21/libnpymath.zip",
            checksum: "1dce3f0c559c6a35a3e063bab077a26f3d3ea516d7c72aab4ed4ba1cfda8ed55"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kv-swift/KivyNumpy/releases/download/311.1.21/libnpyrandom.zip",
            checksum: "1d290c6a9a71e95583a5f696f64055817369640d0155173d3d6b5180a57aedb2"
        )
    ]
)

