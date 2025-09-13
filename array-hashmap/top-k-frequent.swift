import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var freq = [Int: Int]()

    for num in nums {
        freq[num, default: 0] += 1
    }

    var arr = Array(repeating: [Int](), count: nums.count + 1)

    for (num, count) in freq {
        arr[count].append(num)
    }

    var result = [Int]()

    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        if !arr[i].isEmpty {
            for num in arr[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
    }

    return result
}
