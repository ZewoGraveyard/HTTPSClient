import PackageDescription

let package = Package(
    name: "HTTPSClient",
    dependencies: [
        .Package(url: "https://github.com/Zewo/TCPSSL.git", majorVersion: 0, minor: 4),
        .Package(url: "https://github.com/Zewo/HTTP.git", majorVersion: 0, minor: 4),
    ]
)
