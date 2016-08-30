import XCTest
@testable import cmark_swift

class cmark_swiftTests: XCTestCase {
    func testMDtoHTML() {
        XCTAssertEqual(try markdownToHTML("# Hello"), "<h1>Hello</h1>\n")
    }

    static var allTests : [(String, (cmark_swiftTests) -> () throws -> Void)] {
        return [
            ("testMDtoHTML", testMDtoHTML),
        ]
    }
}
