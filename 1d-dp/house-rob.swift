import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.count == 1 { return nums[0] }
    if nums.count == 2 { return max(nums[0], nums[1]) }

    var dp = nums
    dp[0] = nums[0]
    dp[1] = max(dp[0], nums[1])

    for i in 2..<nums.count {
        dp[i] = max(dp[i] + dp[i - 2], dp[i - 1])
    }

    return dp[nums.count - 1]
}

print(rob([2, 7, 9, 3, 1]))  // 12
