import Foundation

func longestPalindorme(_ s: String) -> String {
    if s.count == 1 { return s }
    let chars = Array(s)
    var maxLen = 1
    var index = 0

    for i in 0..<chars.count {
        // odd
        expand(i, i)
        // even
        expand(i, i + 1)
    }

    return String(chars[index..<index + maxLen])

    func expand(_ left: Int, _ right: Int) {
        var l = left
        var r = right
        while l >= 0 && r < s.count && chars[l] == chars[r] {
            if r - l + 1 > maxLen {
                index = l
                maxLen = r - l + 1
            }
            l -= 1
            r += 1
        }
    }
}

print(longestPalindorme("ababd"))  //"bab"
print(longestPalindorme("cbbd"))  //"bb
