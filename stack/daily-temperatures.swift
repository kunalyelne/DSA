import Foundation

struct Pair {
    let val: Int
    let index: Int
}

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var stack = [Pair]()
    var res = Array(repeating: 0, count: temperatures.count)
    stack.append(Pair(val: temperatures[0], index: 0))
    for i in 1..<temperatures.count {
        while !stack.isEmpty && temperatures[i] > stack.last!.val {
            let p = stack.removeLast()
            res[p.index] = i - p.index
        }
        stack.append(Pair(val: temperatures[i], index: i))
    }

    return res
}
