// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Main",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .singleTargetLibrary("AppFeature")
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint", exact: "0.52.3"),
        .package(url: "https://github.com/krzysztofzablocki/Difference.git", exact: "1.0.2")
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                "SharedViews",
                "SharedModels"
            ]
        ),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: [
                "AppFeature",
                "TestExtensions",
            ]
        ),
        .testTarget(
            name: "SharedModelsTests",
            dependencies: [
                "SharedModels",
                "TestExtensions"
            ]),
        .target(
            name: "TestExtensions",
            dependencies: [
                .product(name: "Difference", package: "Difference")
            ]
        ),
        .target(
            name: "SharedViews",
            dependencies: [
                .product(name: "Difference", package: "Difference")
            ]
        ),
        .target(
            name: "SharedModels",
            dependencies: [
                .product(name: "Difference", package: "Difference")
            ],
            resources: [.process("Resources")]
        ),
    ]
)

// Inject base plugins into each target
package.targets = package.targets.map { target in
    var plugins = target.plugins ?? []
    plugins.append(.plugin(name: "SwiftLintPlugin", package: "SwiftLint"))
    target.plugins = plugins
    return target
}

extension Product {
    static func singleTargetLibrary(_ name: String) -> Product {
        .library(name: name, targets: [name])
    }
}
