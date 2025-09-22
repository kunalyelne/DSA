import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0

    var i = 0
    var j = 1

    while j < prices.count {
        if prices[i] > prices[j] {
            i = j
            j += 1
        } else {
            maxProfit = max(maxProfit, prices[j] - prices[i])
            j += 1
        }
    }

    return maxProfit
}

print(maxProfit([7, 1, 5, 3, 6, 4]))  // 5
print(maxProfit([7, 6, 4, 3, 1]))  // 0
print(maxProfit([2, 1, 2, 1, 0, 1, 2]))  // 2
