import Foundation

func isValid(_ str: String) -> Bool {

    var brackets = [Character]()

    for char in str {
        switch char {
        case "(", "[", "{":
            brackets.append(char)
        case ")":
            if brackets.isEmpty || brackets.removeLast() != "(" { return false }
        case "]":
            if brackets.isEmpty || brackets.removeLast() != "[" { return false }
        case "}":
            if brackets.isEmpty || brackets.removeLast() != "{" { return false }
        default:
            return false
        }
    }

    return brackets.isEmpty

}

print(isValid("()[]{}"))  // true
print(isValid("([)]"))  // false
