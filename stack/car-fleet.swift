import Foundation

func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {

    var cars = [(Int, Int)]()
    for i in 0..<position.count {
        cars.append((position[i], speed[i]))
    }

    cars.sort { $0.0 < $1.0 }

    var time = [Double]()

    for (p, s) in cars {
        while !time.isEmpty && Double(target - p) / Double(s) >= time.last! {

            time.removeLast()
        }
        time.append(Double(target - p) / Double(s))
    }

    return time.count
}

print(carFleet(12, [10, 8, 0, 5, 3], [2, 4, 1, 1, 3]))  // 3
print(carFleet(10, [6, 8], [3, 2]))  // 2
print(carFleet(10, [0, 4, 2], [2, 1, 3]))  // 1
