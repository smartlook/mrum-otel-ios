// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "opentelemetry-swift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v5)
    ],
    products: [
        .library(name: "OpenTelemetryApi", targets: ["OpenTelemetryApi"]),
        .library(name: "OpenTelemetrySdk", targets: ["OpenTelemetrySdk"]),
        .library(name: "ResourceExtension", targets: ["ResourceExtension"]),
        .library(name: "URLSessionInstrumentation", targets: ["URLSessionInstrumentation"]),
        .library(name: "SignPostIntegration", targets: ["SignPostIntegration"]),
        .library(name: "StdoutExporter", targets: ["StdoutExporter"]),
        .library(name: "OpenTelemetryProtocolExporterHTTP", targets: ["OpenTelemetryProtocolExporterHttp"]),
        .library(name: "PersistenceExporter", targets: ["PersistenceExporter"]),
        .library(name: "NetworkStatus", targets: ["NetworkStatus"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.20.2"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.4.4"),
        .package(url: "https://github.com/ashleymills/Reachability.swift", from: "5.1.0")
    ],
    targets: [
        .target(name: "OpenTelemetryApi",
                dependencies: []),
        .target(name: "OpenTelemetrySdk",
                dependencies: ["OpenTelemetryApi"]),
        .target(name: "ResourceExtension",
                dependencies: ["OpenTelemetrySdk"],
                path: "Sources/Instrumentation/SDKResourceExtension",
                exclude: ["README.md"]),
        .target(name: "URLSessionInstrumentation",
                dependencies: ["OpenTelemetrySdk", "NetworkStatus"],
                path: "Sources/Instrumentation/URLSession",
                exclude: ["README.md"]),
        .target(name: "NetworkStatus",
                dependencies: [
                    "OpenTelemetryApi",
                ],
                path: "Sources/Instrumentation/NetworkStatus",
                linkerSettings: [.linkedFramework("CoreTelephony", .when(platforms: [.iOS], configuration: nil))]),
        .target(name: "SignPostIntegration",
                dependencies: ["OpenTelemetrySdk"],
                path: "Sources/Instrumentation/SignPostIntegration",
                exclude: ["README.md"]),
        .target(name: "OpenTelemetryProtocolExporterCommon",
                dependencies: ["OpenTelemetrySdk",
                               .product(name: "Logging", package: "swift-log"),
                               .product(name: "SwiftProtobuf", package: "swift-protobuf")],
                path: "Sources/Exporters/OpenTelemetryProtocolCommon"),
        .target(name: "OpenTelemetryProtocolExporterHttp",
                dependencies: ["OpenTelemetrySdk",
                               "OpenTelemetryProtocolExporterCommon"],
                path: "Sources/Exporters/OpenTelemetryProtocolHttp"),
        .target(name: "StdoutExporter",
                dependencies: ["OpenTelemetrySdk"],
                path: "Sources/Exporters/Stdout"),
        .target(name: "PersistenceExporter",
                dependencies: ["OpenTelemetrySdk"],
                path: "Sources/Exporters/Persistence"),
        .testTarget(name: "NetworkStatusTests",
                    dependencies: [
                        "NetworkStatus",
                    ],
                    path: "Tests/InstrumentationTests/NetworkStatusTests"),
        .testTarget(name: "OpenTelemetryApiTests",
                    dependencies: ["OpenTelemetryApi"],
                    path: "Tests/OpenTelemetryApiTests"),
        .testTarget(name: "OpenTelemetrySdkTests",
                    dependencies: ["OpenTelemetryApi",
                                   "OpenTelemetrySdk"],
                    path: "Tests/OpenTelemetrySdkTests"),
        .testTarget(name: "ResourceExtensionTests",
                    dependencies: ["ResourceExtension", "OpenTelemetrySdk"],
                    path: "Tests/InstrumentationTests/SDKResourceExtensionTests"),
        .testTarget(name: "PersistenceExporterTests",
                    dependencies: ["PersistenceExporter"],
                    path: "Tests/ExportersTests/PersistenceExporter")
    ]
)
