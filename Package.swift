
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnumpy.zip", checksum: "2ae9a711b9d90cf09990fa7f866ff2e9653d90dba72109adaa30e2ac37cf77d1"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpyrandom.zip", checksum: "44e59d3d0197670ae6cd52d3808302b9b070991b9f24662c9f0638593548c34e"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpymath.zip", checksum: "04eb962c41d6351b6e00f9dce6a6aba8d882e0a7baff3cc95807cfbb7f629d88"), 
    ]
)