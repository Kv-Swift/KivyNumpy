
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
    	.binaryTarget(name: "libnumpy", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.4/libnumpy.zip", checksum: "dc27be0ed578cd0ba462f93caebee4a1c13f902bda44fd10337ed2e590e1307c"),
    	.binaryTarget(name: "libnpyrandom", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.4/libnpyrandom.zip", checksum: "85d4b41fd9105027e4ef02761194cabbca7e9d6439747f7fd5fb7fca3757c6d7"),
    	.binaryTarget(name: "libnpymath", url: "https://github.com/KivySwiftLink/KivyNumpy/releases/download/311.0.4/libnpymath.zip", checksum: "32128c0dffd5c720cad4e9531b2eaab9a064e303fc6d20d31619342ed48964e3"),
    ]

)