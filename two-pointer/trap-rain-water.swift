import Foundation

func trappinRainWater(_ height: [Int]) -> Int {

    var maxL = height[0]
    var maxR = height[height.count - 1]
    var count = 0

    var l = 0
    var r = height.count - 1

    while l < r {
        if maxL <= maxR {
            l += 1
            count += max(0, maxL - height[l])
            maxL = max(maxL, height[l])
        } else {
            r -= 1
            count += max(0, maxR - height[r])
            maxR = max(maxR, height[r])
        }
    }

    return count
}

print(trappinRainWater([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]))  // 6
print(trappinRainWater([4, 2, 0, 3, 2, 5]))  // 9
