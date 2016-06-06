import XCTest
@testable import HTTPSClient

class HTTPSClientTests: XCTestCase {
    func testSchemeOtherThanHTTPSFails() {
        XCTAssertThrowsError(try Client(uri: "http://zewo.io"), "Scheme other than https should fail")
    }

    func testConfiguration() {
        do {
            let configuration = ClientConfiguration(
                connectionTimeout: 2.minutes
            )

            _ = try Client(uri: "https://zewo.io", configuration: configuration)
        } catch {
            XCTFail()
        }
    }

    func testConfigurationBuilder() {
        do {
            let configuration = ClientConfiguration { configuration in
                configuration.connectionTimeout = 2.minutes
            }

            _ = try Client(uri: "https://zewo.io", configuration: configuration)
        } catch {
            XCTFail()
        }
    }
}

extension HTTPSClientTests {
    static var allTests : [(String, (HTTPSClientTests) -> () throws -> Void)] {
        return [
           ("testSchemeOtherThanHTTPSFails", testSchemeOtherThanHTTPSFails),
        ]
    }
}
