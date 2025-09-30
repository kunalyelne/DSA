import Foundation

func isSubstringWithPermutation(_ s1: String, _ s2: String) -> Bool {
    if s1.count > s2.count {
        return false
    }

    var s1Count = [Int](repeating: 0, count: 26)
    var s2Count = [Int](repeating: 0, count: 26)
    let aAscii = Int(Character("a").asciiValue!)

    let s1Array = Array(s1)
    let s2Array = Array(s2)

    for i in 0..<s1.count {
        s1Count[Int(s1Array[i].asciiValue!) - aAscii] += 1
        s2Count[Int(s2Array[i].asciiValue!) - aAscii] += 1
    }

    var matches = 0
    for i in 0..<26 {
        if s1Count[i] == s2Count[i] {
            matches += 1
        }
    }

    var l = 0
    for r in s1.count..<s2.count {
        if matches == 26 {
            return true
        }

        var index = Int(s2Array[r].asciiValue!) - aAscii
        s2Count[index] += 1
        if s1Count[index] == s2Count[index] {
            matches += 1
        } else if s1Count[index] + 1 == s2Count[index] {
            matches -= 1
        }

        index = Int(s2Array[l].asciiValue!) - aAscii
        s2Count[index] -= 1
        if s1Count[index] == s2Count[index] {
            matches += 1
        } else if s1Count[index] - 1 == s2Count[index] {
            matches -= 1
        }
        l += 1
    }

    return matches == 26
}

print(isSubstringWithPermutation("ab", "eidbaooo"))  // true
print(isSubstringWithPermutation("ab", "eidboaoo"))  // false
