import Foundation

func search2DMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let cols = matrix[0].count
    let rows = matrix.count

    var top = 0
    var bot = rows - 1
    var row: Int = 0
    while top <= bot {
        row = top + (bot - top) / 2
        if target == matrix[row][0] {
            return true
        }

        if target == matrix[row][cols - 1] {
            return true
        }
        if target < matrix[row][0] {
            bot = row - 1
        } else if target > matrix[row][cols - 1] {
            top = row + 1
        } else {
            break
        }
    }

    if !(top <= bot) {
        return false
    }

    var l = 0
    var r = cols - 1

    while l <= r {
        let mid = l + (r - l) / 2
        if target == matrix[row][mid] {
            return true
        }
        if target > matrix[row][mid] {
            l = mid + 1
        } else if target < matrix[row][mid] {
            r = mid - 1
        }
    }

    return false
}

print(search2DMatrix([[1, 2, 4, 8], [10, 11, 12, 13], [14, 20, 30, 40]], 10))  // true
print(search2DMatrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13))  // false
