import XCTest
@testable import HTTPSClient

class HTTPSClientTests: XCTestCase {
    func testReality() {
        XCTAssert(2 + 2 == 4, "Something is severely wrong here.")
    }
}

extension HTTPSClientTests {
    static var allTests : [(String, HTTPSClientTests -> () throws -> Void)] {
        return [
           ("testReality", testReality),
        ]
    }
}
