// swift-tools-version:5.3
import PackageDescription
let package = Package(
  name: "BanubaTokenStorageSDK",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "BanubaTokenStorageSDK",
      targets: ["BanubaTokenStorageSDK"])
  ],
  targets: [
    .binaryTarget(
      name: "BanubaTokenStorageSDK",
      path: "BanubaTokenStorageSDK.xcframework")
  ])
