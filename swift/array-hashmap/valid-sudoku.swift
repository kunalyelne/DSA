import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {

    var rows = Array(repeating: Set<Character>(), count: 9)
    var cols = Array(repeating: Set<Character>(), count: 9)
    var squares = Array(repeating: Set<Character>(), count: 9)

    for i in 0..<9 {
        for j in 0..<9 {
            let val = board[i][j]
            if val == "." { continue }

            if rows[i].contains(val) { return false }

            rows[i].insert(val)

            if cols[j].contains(val) { return false }

            cols[j].insert(val)

            let squareIndex = (i / 3) * 3 + (j / 3)
            if squares[squareIndex].contains(val) { return false }

            squares[squareIndex].insert(val)
        }
    }

    return true
}

let board: [[Character]] = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
]

print(isValidSudoku(board))  // true
