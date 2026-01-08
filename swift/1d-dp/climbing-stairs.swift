import Foundation

// func climbStairs(_ n: Int) -> Int {
//     var one = 1
//     var two = 1

//     for _ in 0..<(n - 1) {
//         let temp = one
//         one = one + two
//         two = temp
//     }

//     return one
// }

func climbStairs(_ n: Int) -> Int {
    if n <= 2 {
        return n
    }
    var dp = Array(repeating: 0, count: n + 1)

    dp[n] = 1
    dp[n - 1] = 1

    for i in stride(from: n - 2, through: 0, by: -1) {
        dp[i] = dp[i + 1] + dp[i + 2]
    }

    return dp[0]
}
