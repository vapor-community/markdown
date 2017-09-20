# Markdown

[![Language](https://img.shields.io/badge/Swift-4-brightgreen.svg)](http://swift.org)
[![Build Status](https://travis-ci.org/vapor-community/markdown.svg?branch=master)](https://travis-ci.org/vapor-community/markdown)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/vapor-community/markdown/master/LICENSE)

Very simple Swift wrapper of GitHub's fork of [cmark](https://github.com/github/cmark). Uses a [fork](https://github.com/brokenhandsio/cmark-gfm) of cmark which has been adapted for building with SwiftPM.

# Usage

## markdown -> HTML

```swift
let markdown = "# Hello"
let html = try markdownToHTML(markdown)
print(html) // This will return "<h1>Hello</h1>\n"
```

## Options

You can pass different options to the underlying `cmark` library. By default `safe` is passed, but this can be explicitly done with:

```swift
let html = try markdownToHTML(markdown, options: [.safe])
```

The available options are:

* sourcePosition
* hardBreaks
* safe
* noBreaks
* normalize
* validateUTF8
* smartQuotes

For more information on the available options, see [`cmark`](https://github.com/github/cmark).

# Installation

## Swift Package Manager

```swift
.package(url: "https://github.com/vapor-community/markdown.git", .upToNextMajor(from: "0.4.0"))
```
