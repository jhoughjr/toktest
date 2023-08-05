// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "test",
    platforms: [.macOS(.v11), .iOS(.v13)],
  products: [
    .executable(name: "test", targets: ["test"])
  ],
  dependencies: [
    .package(url: "https://github.com/Wabi-Studios/SwiftWebUI.git", from: "0.11.3")
  ],
  targets: [
    .executableTarget(
      name: "test",
      dependencies: [
        "testLibrary",
        .product(name: "TokamakShim", package: "SwiftWebUI")
      ]),
    .target(
      name: "testLibrary",
      dependencies: []),
    .testTarget(
      name: "testLibraryTests",
      dependencies: ["testLibrary"]),
  ]
)