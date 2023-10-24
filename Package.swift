// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "PizzaFirebaseFeatureToggleUI",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15), 
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "PizzaFirebaseFeatureToggleUI",
            targets: ["PizzaFirebaseFeatureToggleUI"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PizzaKit/pizzakit",
            from: "1.0.1"
        ),
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk",
            from: "10.16.0"
        )
    ],
    targets: [
        .target(
            name: "PizzaFirebaseFeatureToggleUI",
            dependencies: [
                .product(name: "PizzaKit", package: "pizzakit"),
                .product(name: "FirebaseInstallations", package: "firebase-ios-sdk")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
