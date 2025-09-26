import Foundation

func characterReplacement(_ s: String, _ k: Int) -> Int {
    var res = 0
    var maxf = 0
    let chars = Array(s)
    var map = [Character: Int]()

    var i = 0
    var j = 0

    while j < chars.count {
        map[chars[j], default: 0] += 1
        maxf = max(maxf, map[chars[j]]!)
        while (j - i + 1) - maxf > k {
            map[chars[i], default: 0] -= 1
            i += 1
        }
        res = max(res, j - i + 1)
        j += 1
    }

    return res
}

print(characterReplacement("AABABBA", 1))  // 4
print(characterReplacement("XYYX", 2))  // 4
