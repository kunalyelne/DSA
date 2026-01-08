import Foundation

func binarySearch(_ nums: [Int], _ target: Int) -> Bool {
    var l = 0
    var r = nums.count - 1

    while l <= r {
        let mid: Int = l + (r - l) / 2
        if nums[mid] == target {
            return true
        }
        if nums[mid] < target {
            l = mid + 1
        } else {
            r = mid - 1
        }
    }

    return false
}

print(binarySearch([-1, 0, 3, 5, 9, 12], 9))  // 4
print([-1, 0, 3, 5, 9, 12], 2)  // -1
