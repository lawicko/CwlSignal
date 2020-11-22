// swift-tools-version:5.0
import PackageDescription

let package = Package(
   name: "CwlSignal",
	platforms: [
		.iOS(.v11),
		.macOS(.v10_12)
	],
   products: [
   	.library(name: "CwlSignal", targets: ["CwlSignal"])
	],
	dependencies: [
		.package(url: "https://github.com/oanapopescu-garmin/CwlUtils.git", .branch("master")),
		.package(url: "https://github.com/mattgallagher/CwlPreconditionTesting.git", .branch("master"))
	],
	targets: [
		.target(
			name: "CwlSignal",
			dependencies: [
				.product(name: "CwlUtils")
			]
		),
		.testTarget(
			name: "CwlSignalTests",
			dependencies: [
				.target(name: "CwlSignal"),
				.product(name: "CwlPreconditionTesting")
			]
		)
	]
)
