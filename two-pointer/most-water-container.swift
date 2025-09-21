import Foundation

func containerWithMostWater(_ height: [Int]) -> Int {

    var i = 0
    var j = height.count - 1
    var most = 0

    while i < j {
        most = max(most, (j - i) * min(height[i], height[j]))
        if height[i] <= height[j] {
            i += 1
        } else if height[i] > height[j] {
            j -= 1
        }
    }

    return most
}

print(containerWithMostWater([1, 8, 6, 2, 5, 4, 8, 3, 7]))  // 49
print(containerWithMostWater([1, 1]))  // 1
