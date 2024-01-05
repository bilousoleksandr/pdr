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
        .package(url: "https://github.com/krzysztofzablocki/Difference.git", exact: "1.0.2"),
        .package(name: "Realm", url: "https://github.com/realm/realm-swift", from: "10.45.2")
    ],
    targets: [
        .target(
            name: "AppFeature",
            dependencies: [
                "SharedViews",
                "SharedModels",
                "Signs"
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
            name: "Signs",
            resources: [.process("Resources")]
        ),
        .target(
            name: "Database",
            dependencies: [
                .product(name: "Realm", package: "Realm"),
                .product(name: "RealmSwift", package: "Realm")
            ]
        ),
        .testTarget(
            name: "DatabaseTests",
            dependencies: [
                "Database"
            ],
            resources: [.process("Resources")]
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
//package.targets = package.targets.map { target in
//    var plugins = target.plugins ?? []
//    plugins.append(.plugin(name: "SwiftLintPlugin", package: "SwiftLint"))
//    target.plugins = plugins
//    return target
//}

extension Product {
    static func singleTargetLibrary(_ name: String) -> Product {
        .library(name: name, targets: [name])
    }
}
