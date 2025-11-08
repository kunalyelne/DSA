import Foundation

func minEatingBananaSpeed(_ piles: [Int], _ h: Int) -> Int {
    var l = 1
    var r = piles.max()!
    var res = r

    while l <= r {
        let k = (l + r) / 2

        var totalTime = 0
        for p in piles {
            totalTime += Int(ceil(Double(p) / Double(k)))
        }

        if totalTime <= h {
            res = k
            r = k - 1
        } else {
            l = k + 1
        }
    }
    return res
}

print(minEatingBananaSpeed([3, 6, 7, 11], 8))  // 4
print(minEatingBananaSpeed([30, 11, 23, 4, 20], 5))  // 30
print(minEatingBananaSpeed([30, 11, 23, 4, 20], 6))  // 23
