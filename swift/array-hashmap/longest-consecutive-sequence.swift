import Foundation

func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var longest = 0
    let elements = Set(nums)

    for num in elements {
        if !elements.contains(num - 1) {
            var len = 1
            var temp = num

            while elements.contains(temp + 1) {
                len += 1
                temp += 1
            }

            longest = max(len, longest)
        }
    }

    return longest
}

print(longestConsecutive([100, 4, 200, 1, 3, 2]))  // 4
print(longestConsecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1]))  // 9
print(longestConsecutive([1, 0, 1, 2]))  // 3
