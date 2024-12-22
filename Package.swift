// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "KivyNumpy",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "KivyNumpy", targets: ["KivyNumpy"])
    ],
    dependencies: [
        .package(url: "https://github.com/KivySwiftLink/PythonCore", .upToNextMajor(from: "311.0.0"))
    ],
    targets: [
        .target(
            name: "KivyNumpy",
            dependencies: [
        		"libnumpy",
        		"libnpymath",
        		"libnpyrandom"
        	],
            resources: [
        	],
            linkerSettings: [
        	],
            plugins: []
        ),
        .binaryTarget(
            name: "libnumpy",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnumpy.zip",
            checksum: "581feece2bc788e7e10f29244bcd6d8b10df86b50c0dc4e2ce60ce9029a7d7b9"
        ),
        .binaryTarget(
            name: "libnpymath",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnpymath.zip",
            checksum: "ca061d3996726d20a829f97280fabd5dca8f6a1df09c39f6701f41cf7439bc63"
        ),
        .binaryTarget(
            name: "libnpyrandom",
            url: "https://github.com/kivyswiftlink/KivyNumpy/releases/download/311.0.7/libnpyrandom.zip",
            checksum: "39f228492c171d83ea4dedaf356512ad66a625a126f8e77ab85e520757a2f066"
        )
    ]
)

