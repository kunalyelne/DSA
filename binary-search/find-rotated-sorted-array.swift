import Foundation

func find(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1

    while l <= r {
        let mid = (l + r) / 2
        if target == nums[mid] {
            return mid
        }

        if nums[mid] > nums[r] {
            if target > nums[mid] || target < nums[l] {
                l = mid + 1
            } else {
                r = mid - 1
            }
        } else {
            if target < nums[mid] || target > nums[r] {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
    }
    return -1
}

print(find([4, 5, 6, 7, 0, 1, 2], 0))  // 4
print(find([4, 5, 6, 7, 0, 1, 2], 3))  // -1
print(find([1], 0))  // -1
print(find([1], 1))  // 0
