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

    func testDoesntCrashUnderStress() throws {
        let string = """
            Turing test, created computer scientist Alan Turing, commonly discussed theme computer world. paper 1950, wanted answer question: “Can machines think?”. get bottom this, created hypothetical test see machine capable mimicking human intelligence specific conditions.
            To conduct Turing test, researches set three separate terminals. One division operated computer, two operated humans. One human blindly question computer human specific subject. human discern answer came computer human. repeated multiple times, questioner could know answer came human half time, computer considered artificial intelligence.
            Read [Turing Test](https://en.wikipedia.org/wiki/Turing_test)
            """
        for i in 1...10000 {
            print("Iteration \(i)")
            _ = try markdownToHTML(string)
        }
    }
}
