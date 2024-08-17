
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.1/libnumpy.zip", checksum: "092751d9330d570752b93446031bba5a57f971c39dc77c0be376890105182ad7"), 
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.1/libnpyrandom.zip", checksum: "a71bfc063407268f79150b2251ea52cb1270939897c5358c6a59ea3a60d68320"), 
    	.binaryTarget(name: "libnpymath", url: "https://github.com/PythonSwiftLink/KivyNumpy/releases/download/311.0.1/libnpymath.zip", checksum: "80c6d8ee1f65ac68dfe0b371050096feb3f94e40b44a47c1e1b2845c215e6757"), 
    ]
)