import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    var charSet = Set<Character>()
    var l = 0
    var res = 0
    let chars = Array(s)

    for r in 0..<chars.count {
        while charSet.contains(chars[r]) {
            charSet.remove(chars[l])
            l += 1
        }
        charSet.insert(chars[r])
        res = max(res, r - l + 1)
    }
    return res
}

print(lengthOfLongestSubstring("abcabcbb"))  // 3
print(lengthOfLongestSubstring("pwwkew"))  // 3
