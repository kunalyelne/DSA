import Foundation

func encode(_ strs: [String]) -> String {
    var encoded = ""

    for str in strs {
        encoded += "\(str.count)#\(str)"
    }

    return encoded
}

func decode(_ s: String) -> [String] {
    let chars = Array(s)
    var i = 0
    var result: [String] = []
    var lenStr = ""
    while i < chars.count {
        if chars[i] != "#" {
            lenStr.append(chars[i])
            i += 1
        } else {
            i += 1  //Skip #
            let length = Int(lenStr)!
            let word = String(chars[i..<i + length])
            result.append(word)
            i += length
            lenStr = ""
        }
    }

    return result
}

let input = ["iam4#kjlm", "neet", "🔥"]

let encoded = encode(input)
print(encoded)
// "10#iam4#kjlm4#neet1#🔥"

let decoded = decode(encoded)
print(decoded)
// ["iam4#kjlm", "neet", "🔥"]
