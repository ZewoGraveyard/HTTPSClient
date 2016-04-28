import XCTest
@testable import HTTPSClient

class HTTPSClientTests: XCTestCase {
    func testCocoapods() {
        do {
            let client = try Client(uri: "https://cocoapods.org:443")
            let response = try client.get("/")
            XCTAssertEqual(response.status, Status.ok)
        } catch {
            XCTFail("\(error)")
        }
    }
}

extension HTTPSClientTests {
    static var allTests : [(String, HTTPSClientTests -> () throws -> Void)] {
        return [
           ("testCocoapods", testCocoapods),
        ]
    }
}
