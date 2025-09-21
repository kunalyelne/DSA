import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    let nums = nums.sorted()
    for i in 0..<nums.count {
        let num = nums[i]
        if num > 0 {
            break
        }
        if i > 0 && num == nums[i - 1] {
            continue
        }

        var l = i + 1
        var r = nums.count - 1
        while l < r {
            let threeSum = num + nums[l] + nums[r]
            if threeSum > 0 {
                r -= 1
            } else if threeSum < 0 {
                l += 1
            } else {
                res.append([num, nums[l], nums[r]])
                l += 1
                r -= 1
                while l < r && nums[l] == nums[l - 1] {
                    l += 1
                }
            }
        }
    }
    return res
}

print(threeSum([-1, 0, 1, 2, -1, -4]))  // [[-1,-1,2],[-1,0,1]]
print(threeSum([0, 1, 1]))  // []
