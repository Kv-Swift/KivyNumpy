
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
    	.package(url: "https://github.com/PythonSwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ], 
    targets: [
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnumpy.zip", checksum: "edff1836fb385f343cd6eef8302ba58b85463828deb868d3386ab60c185bf81b"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpyrandom.zip", checksum: "62ef2790982a8e0ad07ba3df72229768aaa16e7dc172cd63baaa6be5cdc63eac"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.0/libnpymath.zip", checksum: "eff35c5796b7bc7868bd384505ade69bad0169844b30aaaa4fccad0e49bcd2c4"), 
    ]
)