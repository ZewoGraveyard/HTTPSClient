import PackageDescription

let package = Package(
    name: "HTTPSClient",
    dependencies: [
        .Package(url: "https://github.com/tomohisa/TCPSSL.git", majorVersion: 0, minor: 7),
        .Package(url: "https://github.com/tomohisa/HTTPParser.git", majorVersion: 0, minor: 7),
        .Package(url: "https://github.com/tomohisa/HTTPSerializer.git", majorVersion: 0, minor: 7),
    ]
)
