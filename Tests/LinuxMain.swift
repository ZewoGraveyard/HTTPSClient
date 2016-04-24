#if os(Linux)

import XCTest
@testable import HTTPSClientTestSuite

XCTMain([
    testCase(HTTPSClientTests.allTests)
])

#endif
