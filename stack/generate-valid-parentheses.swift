import Foundation

func generateParentheses(_ n: Int) -> [String] {
    var stack = [Character]()
    var result = [String]()

    func backtrack(_ open: Int, _ close: Int) {
        if open == n && close == n {
            result.append(String(stack))
        }

        if open < n {
            stack.append("(")
            backtrack(open + 1, close)
            stack.removeLast()
        }

        if close < open {
            stack.append(")")
            backtrack(open, close + 1)
            stack.removeLast()
        }
    }

    backtrack(0, 0)
    return result
}

print(generateParentheses(3))  // ["((()))","(()())","(())()","()(())","()()()"]
print(generateParentheses(1))  // ["()"]
