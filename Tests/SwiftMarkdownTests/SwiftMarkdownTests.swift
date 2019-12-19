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
        let expectedOutput = """
<table>
<thead>
<tr>
<th>foo</th>
<th>bar</th>
</tr>
</thead>
<tbody>
<tr>
<td>baz</td>
<td>bim</td>
</tr>
</tbody>
</table>

"""
        
        let output = try markdownToHTML(input, options: .safe)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
