import cmark_swift

print("Converting")
let con = try markdownToHTML("# Hello World")
print(con)
