import XCTest
import SwiftMarkdown

class SwiftMarkdownTests: XCTestCase {
    
    func testMDtoHTML() {
        XCTAssertEqual(try markdownToHTML("# Hello"), "<h1>Hello</h1>\n")
    }
    
    func testGFMtoHTML() throws {
        let input = """
| foo | bar |
| --- | --- |
| baz | bim |
"""
        let output = try markdownToHTML(input)
        
        XCTAssertEqual(output, "expectedOutput")
    }
}
