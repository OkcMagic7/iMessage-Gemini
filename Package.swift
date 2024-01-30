//
//  Package.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//
// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "JaredGeminiChatbot",
    platforms: [
        .iOS(.v14)  // Specify your minimum supported iOS version
    ],
    products: [
        .library(
            name: "JaredFramework",
            targets: ["JaredFramework"]),
        .executable(
            name: "Jared",
            targets: ["Jared"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.0")),
        // Hypothetical SwiftNLP library
        .package(url: "https://github.com/Hypothetical/SwiftNLP.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "JaredFramework",
            dependencies: ["Alamofire", "SwiftyJSON", "SwiftNLP"]),
        .target(
            name: "Jared",
            dependencies: ["JaredFramework"]),
        .testTarget(
            name: "JaredFrameworkTests",
            dependencies: ["JaredFramework"]),
        .testTarget(
            name: "JaredTests",
            dependencies: ["Jared"])
    ]
)
