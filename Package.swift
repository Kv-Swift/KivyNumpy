
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnumpy.zip", checksum: "a321f0eb36510ad7ef3b7e5bcd02ec7fd9fe9f3e7973ffe88dfd692693d8d56f"),
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpyrandom.zip", checksum: "db771a7259be19a9d8533f5e9da0682b68fe161de9e0597ea66995e438bc2baa"),
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.2/libnpymath.zip", checksum: "4064954503c1792712f6a1bce59dc0a302caf6899f91233c1c0522ba3fc8f5c6"),
    ]

)