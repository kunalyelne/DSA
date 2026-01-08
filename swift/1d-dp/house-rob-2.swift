import Foundation

func rob(_ nums: [Int]) -> Int {
    let n = nums.count
    if n == 1 { return nums[0] }
    return max(helper(nums[0..<n - 1]), helper(nums[1..<n]))
}

func helper(_ nums: ArraySlice<Int>) -> Int {
    let arr = Array(nums)
    if arr.isEmpty { return 0 }
    if arr.count == 1 { return arr[0] }
    if arr.count == 2 { return max(arr[0], arr[1]) }

    var dp = arr
    dp[0] = arr[0]
    dp[1] = max(arr[0], arr[1])

    for i in 2..<arr.count {
        dp[i] = max(dp[i] + dp[i - 2], dp[i - 1])
    }

    return dp[arr.count - 1]
}

print(rob([2, 7, 9, 3, 1]))  // 11
