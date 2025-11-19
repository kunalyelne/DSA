import Foundation

/* Top Down - Memoization */
// func minCostClimbingStairs(_ cost: [Int]) -> Int {
//     var memo = Array(repeating: -1, count: cost.count)
//     func dfs(_ i: Int) -> Int {
//         if i >= cost.count {
//             return 0
//         }

//         if memo[i] != -1 {
//             return memo[i]
//         }

//         memo[i] = cost[i] + min(dfs(i + 1), dfs(i + 2))

//         return memo[i]
//     }

//     return min(dfs(0), dfs(1))
// }

func minCostClimbingStairs(_ cost: [Int]) -> Int {
    var dp = cost
    dp.append(0)
    let n = cost.count

    dp[n] = 0
    dp[n - 1] = cost[n - 1]

    for i in stride(from: n - 2, through: 0, by: -1) {
        dp[i] += min(dp[i + 1], dp[i + 2])
    }

    return min(dp[0], dp[1])
}

print(minCostClimbingStairs([10, 15, 20]))  // 15
