import XCTest
import SwiftMarkdown

class SwiftMarkdownTests: XCTestCase {
    
    static var allTests = [
        ("testMDtoHTML", testMDtoHTML),
    ]
    
    func testMDtoHTML() {
        XCTAssertEqual(try markdownToHTML("# Hello"), "<h1>Hello</h1>\n")
    }
}
