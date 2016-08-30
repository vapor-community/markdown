import ccmark

public enum MarkdownError: Error {
    case conversionFailed
}

public func markdownToHTML(_ str: String) throws -> String {
	var buffer: String?
    try str.withCString {
        //TODO: add options, right now passing 0
        guard let buf = cmark_markdown_to_html($0, Int(strlen($0)), 0) else {
        	throw MarkdownError.conversionFailed
        }
        buffer = String(cString: buf)
        free(buf)
    }
    guard let output = buffer else { 
        throw MarkdownError.conversionFailed
    }
    return output
}

