import Foundation

func findMin(_ nums: [Int]) -> Int {
    var l = 0
    var r = nums.count - 1

    while l < r {
        let mid = l + (r - l) / 2
        if nums[mid] > nums[r] {
            l = mid + 1
        } else {
            r = mid
        }
    }

    return nums[l]
}

print(findMin([3, 4, 5, 1, 2]))  // 1
print(findMin([4, 5, 6, 7, 0, 1, 2]))  // 0
print(findMin([11, 13, 15, 17]))  // 11
