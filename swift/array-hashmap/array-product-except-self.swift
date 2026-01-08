import Foundation

func arrayProductExceptSelf(_ nums: [Int]) -> [Int] {
    let len = nums.count
    var pref: [Int] = Array(repeating: 1, count: len)
    var suf: [Int] = Array(repeating: 1, count: len)
    var result: [Int] = Array(repeating: 1, count: len)

    pref[0] = 1
    pref[1] = nums[0]

    suf[len - 1] = 1
    suf[len - 2] = nums[len - 1]

    for i in 2..<nums.count {
        pref[i] = pref[i - 1] * nums[i - 1]
    }

    for i in stride(from: len - 3, through: 0, by: -1) {
        suf[i] = suf[i + 1] * nums[i + 1]
    }

    for i in 0..<len {
        result[i] = pref[i] * suf[i]
    }
    return result
}

print(arrayProductExceptSelf([1, 2, 3, 4]))  // [24,12,8,6]
print(arrayProductExceptSelf([-1, 1, 0, -3, 3]))  // [0,0,9,0,0]
