// swift-tools-version:5.10
import PackageDescription

let package = Package(
  name: "HSTestingBackchannel",
  platforms: [
    .iOS(.v12),
    .tvOS(.v12)
  ],
  products: [
    .library(name: "HSTestingBackchannel", targets: ["HSTestingBackchannel"])
  ],
  dependencies: [
    .package(url: "https://github.com/berlinphilmedia/GCDWebServer/", exact: "3.5.4-fork")
  ],
  targets: [
    .target(
      name: "HSTestingBackchannel",
      dependencies: [
        .product(name: "GCDWebServer", package: "GCDWebServer")
      ],
      path: "Classes",
      publicHeadersPath: "."
    )
  ]
)
