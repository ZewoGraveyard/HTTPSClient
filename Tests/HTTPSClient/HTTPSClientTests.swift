import XCTest
@testable import HTTPSClient

class HTTPSClientTests: XCTestCase {
    func testSchemeOtherThanHTTPSFails() {
        XCTAssertThrowsError(try Client(uri: "http://zewo.io"), "Scheme other than https should fail")
    }
}

extension HTTPSClientTests {
    static var allTests : [(String, HTTPSClientTests -> () throws -> Void)] {
        return [
           ("testSchemeOtherThanHTTPSFails", testSchemeOtherThanHTTPSFails),
        ]
    }
}
