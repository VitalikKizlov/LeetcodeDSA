//: [Previous](@previous)

import Foundation

func minStartValue(_ nums: [Int]) -> Int {
    var ans = 0
    var minValue = 0
    var sum = 0

    for num in nums {
        sum += num
        minValue = min(minValue, sum)
    }

    ans = -minValue + 1

    return ans
}

let minStartValueNums = [-3, 2, -3, 4, 2]
print(minStartValue(minStartValueNums))

//: [Next](@next)
