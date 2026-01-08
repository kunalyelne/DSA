import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }

    var freq: [Character: Int] = [:]

    for char in s {
        freq[char, default: 0] += 1
    }

    for char in t {
        freq[char, default: 0] -= 1

        if freq[char]! < 0 {
            return false
        }
    }

    return true
}

print(isAnagram("anagram", "nagaram"))  // true
print(isAnagram("rat", "car"))  // false
