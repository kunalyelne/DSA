import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var seen = Set<Int>()
    for num in nums {
        if seen.contains(num) {
            return true
        }
        seen.insert(num)
    }
    return false
}

print(containsDuplicate([1, 2, 3, 4]))  // false
print(containsDuplicate([1, 2, 3, 4, 1]))  // true
