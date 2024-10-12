
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.10/libnumpy.zip", checksum: "8137c633d68b164d4a35407daa133cc709b49cd33f3471bc96cc4c38a90ab7d7"),
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.10/libnpyrandom.zip", checksum: "69755993cd17d4df549ab270c8fd6e187744f7596aeb26684dfd35c8eda46ddb"),
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/0.0.10/libnpymath.zip", checksum: "3630149b51bb110d31bd672cf45152c78ae7d033173cbf4a165a7b8a9923815c"),
    ]

)