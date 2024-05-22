// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CSpeex",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "speex",
			targets: [
				"speex",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "speex",
			cSettings: [
				.define("HAVE_CONFIG_H"),
			]),
		.testTarget(
			name: "CSpeexTests",
			dependencies: [
				"speex",
			]),
	]
)
