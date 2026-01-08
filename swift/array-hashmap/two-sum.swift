import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var compliment = [Int: Int]()

    for i in 0..<nums.count {
        if let comp = compliment[nums[i]] {
            return [comp, i]
        }

        compliment[target - nums[i]] = i
    }

    return []
}

print(twoSum([2, 7, 11, 15], 9))  // [0, 1]
print(twoSum([3, 2, 4], 6))  // [1, 2]
