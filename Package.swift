// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.0.7"
let package = Package(
    name: "ZohoDeskPortalCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCore",
            targets: ["ZohoDeskPortalCore", "ZohoDeskPortalCorePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZohoDeskPortalKB", exact: "4.0.7"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalCommunity", exact: "4.0.7"),
        .package(url: "https://github.com/zoho/ZohoDeskPortalTicket", exact: "4.0.7")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/\(version)/ZohoDeskPortalCore.zip", checksum: "1495411625d145abe187734d1b7d4ee9cef55662befdc34b7e84f29b75fa6b93"),
        
        .target(
            name: "ZohoDeskPortalCorePackage",
            dependencies: [
                .product(name: "ZohoDeskPortalKB", package: "ZohoDeskPortalKB"),
                .product(name: "ZohoDeskPortalCommunity", package: "ZohoDeskPortalCommunity"),
                .product(name: "ZohoDeskPortalTicket", package: "ZohoDeskPortalTicket")
            ]
        )
    ]
)
