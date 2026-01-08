import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var anagrams = [String: [String]]()

    for str in strs {
        let key = String(str.sorted())
        anagrams[key, default: []].append(str)
    }

    return Array(anagrams.values)
}

print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))  // [["bat"], ["tan", "nat"], ["eat", "tea", "ate"]]
print([""])  // [""]
print(["a"])  // ["a"]
