import Foundation

class TimeMap {

    private var map: [String: [(Int, String)]]

    init() {
        self.map = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if map[key] == nil {
            map[key] = []
        }

        map[key]?.append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let timestamps = map[key] else {
            return ""
        }

        var l = 0
        var r = timestamps.count - 1
        var res = ""

        while l <= r {
            let mid = (l + r) / 2
            if timestamps[mid].0 <= timestamp {
                res = timestamps[mid].1
                l = mid + 1
            } else {
                r = mid - 1
            }
        }

        return res
    }
}
