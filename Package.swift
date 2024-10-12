
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.11/libnumpy.zip", checksum: "74f32d590a0761a00a2377deeacbc5f985b661aa1caf4746ff11fc10cf2fa522"),
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.11/libnpyrandom.zip", checksum: "114f0b44b934818a94e76376202eafaebc2a00cb80ac80eeed2781c1b4c82313"),
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.11/libnpymath.zip", checksum: "42d22be7281a6d489b5ebf3af03a6e4e774e1680c2ec733e5c1be4c6badb2207"),
    ]

)