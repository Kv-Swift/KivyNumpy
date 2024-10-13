
// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
    	.library(
        	name: "KivyNumpy",
        	targets: [
        		"KivyNumpy"
        	]
    	),
    ],
    dependencies: [
    	.package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], targets: [
    	.target(
        	name: "KivyNumpy",
        	dependencies: [
        		.product(name: "PythonCore", package: "PythonCore"),
        		"libnumpy",
        		"libnpyrandom",
        		"libnpymath",
        	],
        	resources: [
        	],
        	linkerSettings: [
        		.linkedFramework("Accelerate"),
        	]
    	),
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnumpy.zip", checksum: "8968177aa081ea474174c868afd6b61270043f4e6879d3a7187d514d176dff16"),
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpyrandom.zip", checksum: "2a0e0c69343051b4ff23be55ffb6ca64eb44eb2c7a7ad3e57dd4cbc9d5a93f2e"),
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpymath.zip", checksum: "90ad55fcdf765f153d6d7f98fcc94f4864ca53125e1998f413f078ab6d2fec0a"),
    ]

)