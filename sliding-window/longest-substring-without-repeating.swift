import Foundation

func lengthOfLongestSubstringWithoutRepeating(_ s: String) -> Int {
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

print(lengthOfLongestSubstringWithoutRepeating("abcabcbb"))  // 3
print(lengthOfLongestSubstringWithoutRepeating("pwwkew"))  // 3
