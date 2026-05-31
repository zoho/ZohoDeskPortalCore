// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("4.6.5")
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
        .package(url: "https://github.com/zoho/ZohoDeskPortalKB", exact: version),
        .package(url: "https://github.com/zoho/ZohoDeskPortalCommunity", exact: version),
        .package(url: "https://github.com/zoho/ZohoDeskPortalTicket", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZohoDeskPortalCore", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCore/\(version.description)/ZohoDeskPortalCore.zip", checksum: "eab94d5c181cc908095828e1a026e39c6a4a157d69be2a8a1c6dfd3437a25df3"),
        
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
