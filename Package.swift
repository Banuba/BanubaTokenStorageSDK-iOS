// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BanubaTokenStorageSDK-iOS",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_12),
  ],
  products: [
    .library(
      name: "BanubaTokenStorageSDK-iOS",
      targets: ["BanubaTokenStorageSDK-iOS"]
    ),
  ],
  dependencies: [
    .package(
      name: "Firebase",
      url: "https://github.com/firebase/firebase-ios-sdk",
      from: "8.7.0"
    )
  ],
  targets: [
    .target(
      name: "BanubaTokenStorageSDK-iOS",
      dependencies: [
        "BanubaTokenStorageSDK",
        .product(name: "FirebaseDatabase", package: "Firebase", condition: .when(platforms: [.iOS])),
      ]
    ),
    .binaryTarget(
      name: "BanubaTokenStorageSDK",
      path: "BanubaTokenStorageSDK.xcframework"
    ),
    .testTarget(
      name: "BanubaTokenStorageSDK-iOSTests",
      dependencies: ["BanubaTokenStorageSDK-iOS"]
    ),
  ]
)
