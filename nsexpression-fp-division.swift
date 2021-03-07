
func fixDivision(text: String) -> String {
    let pattern = "\\d+\\/\\d+"
    let regex = try! NSRegularExpression(pattern: pattern)
    let range = NSRange(location: 0, length: text.utf16.count)
    _ = regex.matches(in: text, options: [], range: range).map {
        String(text[Range($0.range, in: text)!])
    }
    return regex.stringByReplacingMatches(in: text, options: [], range: range, withTemplate: "$0.0")
}
