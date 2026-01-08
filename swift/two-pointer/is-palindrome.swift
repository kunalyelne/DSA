import Foundation

func isPalindrome(_ s: String) -> Bool {
    let chars = Array(s)
    var i = 0
    var j = s.count - 1

    while i < j {
        while i < j && !validChar(chars[i]) {
            i += 1
        }
        while i < j && !validChar(chars[j]) {
            j -= 1
        }

        if !charSame(chars[i], chars[j]) {
            return false
        }
        i += 1
        j -= 1
    }

    return true

    func validChar(_ c: Character) -> Bool {
        return c.isLetter || c.isNumber
    }

    func charSame(_ c1: Character, _ c2: Character) -> Bool {
        return c1.lowercased() == c2.lowercased()
    }
}

print(isPalindrome("A man, a plan, a canal: Panama"))  // true
print(isPalindrome("race a car"))  // false
print(isPalindrome(" "))  // true
