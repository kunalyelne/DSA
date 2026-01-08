import Foundation

func countSubstrings(_ s: String) -> Int {
    if s.count == 1 { return 1 }
    let chars = Array(s)
    var count = 0

    for i in 0..<chars.count {
        // odd
        expand(i, i)
        // even
        expand(i, i + 1)
    }

    return count

    func expand(_ left: Int, _ right: Int) {
        var l = left
        var r = right
        while l >= 0 && r < s.count && chars[l] == chars[r] {
            count += 1
            l -= 1
            r += 1
        }
    }
}

print(countSubstrings("ababd"))  //"bab"
print(countSubstrings("cbbd"))  //"bb
