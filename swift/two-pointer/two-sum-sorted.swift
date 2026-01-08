import Foundation

func twoSumSorted(_ nums: [Int], _ target: Int) -> [Int] {
    var i = 0
    var j = nums.count - 1
    var res = [Int]()

    while i < j {
        if nums[i] + nums[j] > target {
            j -= 1
        } else if nums[i] + nums[j] < target {
            i += 1
        } else {
            res.append(i + 1)
            res.append(j + 1)
            return res
        }
    }

    return res
}

print(twoSumSorted([2, 7, 11, 15], 9))  // [1,2]
print(twoSumSorted([-1, 0], -1))  // [1,2]
