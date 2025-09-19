import Foundation

func evalRPN(_ tokens: [String]) -> Int {

    var stack = [Int]()

    for token in tokens {
        switch token {
        case "+":
            let val1 = stack.removeLast()
            let val2 = stack.removeLast()
            stack.append(val2 + val1)
        case "-":
            let val1 = stack.removeLast()
            let val2 = stack.removeLast()
            stack.append(val2 - val1)
        case "*":
            let val1 = stack.removeLast()
            let val2 = stack.removeLast()
            stack.append(val2 * val1)
        case "/":
            let val1 = stack.removeLast()
            let val2 = stack.removeLast()
            stack.append(val2 / val1)
        default:
            guard let val = Int(token) else { continue }
            stack.append(val)
        }
    }

    guard let res = stack.last else { return -1 }
    return res
}

print(evalRPN(["2", "1", "+", "3", "*"]))  // 9
print(evalRPN(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]))  // 22
