public class ClientConfigurationBuilder {
    public var verifyBundle: String? = nil
    public var certificate: String? = nil
    public var privateKey: String? = nil
    public var certificateChain: String? = nil
    public var serializer: S4.RequestSerializer = RequestSerializer()
    public var parser: S4.ResponseParser = ResponseParser()
    public var keepAlive: Bool = false
    public var connectionTimeout: Double = 3.minutes
    public var requestTimeout: Double = 30.seconds
    public var bufferSize: Int = 1024
}

public struct ClientConfiguration {
    public let verifyBundle: String?
    public let certificate: String?
    public let privateKey: String?
    public let certificateChain: String?
    public let serializer: S4.RequestSerializer
    public let parser: S4.ResponseParser
    public let keepAlive: Bool
    public let connectionTimeout: Double
    public let requestTimeout: Double
    public let bufferSize: Int

    public init(
        verifyBundle: String? = nil,
        certificate: String? = nil,
        privateKey: String? = nil,
        certificateChain: String? = nil,
        serializer: S4.RequestSerializer = RequestSerializer(),
        parser: S4.ResponseParser = ResponseParser(),
        keepAlive: Bool = false,
        connectionTimeout: Double = 3.minutes,
        requestTimeout: Double = 30.seconds,
        bufferSize: Int = 1024
        ) {
        self.verifyBundle = verifyBundle
        self.certificate = certificate
        self.privateKey = privateKey
        self.certificateChain = certificateChain
        self.serializer = serializer
        self.parser = parser
        self.keepAlive = keepAlive
        self.connectionTimeout = connectionTimeout
        self.requestTimeout = requestTimeout
        self.bufferSize = bufferSize
    }

    public init(_ build: (ClientConfigurationBuilder) -> Void) {
        let configuration = ClientConfigurationBuilder()
        build(configuration)

        self.verifyBundle = configuration.verifyBundle
        self.certificate = configuration.certificate
        self.privateKey = configuration.privateKey
        self.certificateChain = configuration.certificateChain
        self.serializer = configuration.serializer
        self.parser = configuration.parser
        self.keepAlive = configuration.keepAlive
        self.connectionTimeout = configuration.connectionTimeout
        self.requestTimeout = configuration.requestTimeout
        self.bufferSize = configuration.bufferSize
    }
}
