import Foundation

struct Pair {
    let val: Int
    let min: Int
}

class MinStack {
    var stack: [Pair]

    init() {
        stack = [Pair]()
    }

    func push(_ num: Int) {
        if let p = stack.last {
            let min = min(num, p.min)
            stack.append(Pair(val: num, min: min))
        } else {
            stack.append(Pair(val: num, min: num))
        }
    }

    func pop() {
        guard !stack.isEmpty else { return }
        stack.removeLast()
    }

    func top() -> Int {
        guard let p = stack.last else { return -1 }
        return p.val
    }

    func getMin() -> Int {
        guard let p = stack.last else { return -1 }
        return p.min
    }
}
