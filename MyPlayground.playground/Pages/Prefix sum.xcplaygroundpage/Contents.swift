//: [Previous](@previous)

import Foundation

func answerQueries(_ nums: [Int], _ queries: [[Int]], _ limit: Int) -> [Bool] {
    var prefix = [nums[0]]
    var ans: [Bool] = []

    for i in 1..<nums.count {
        prefix.append(nums[i] + prefix[prefix.count - 1])
    }

    for array in queries {
        let (x, y) = (array[0], array[1])

        let sum = prefix[y] - prefix[x] + nums[x]
        ans.append(sum < limit)
    }

    return ans
}

let nums = [1, 6, 3, 2, 7, 2]
let queries = [[0, 3], [2, 5], [2, 4]]
let limit = 13
print(answerQueries(nums, queries, limit))

func numberOfWaysToSplitArray(_ nums: [Int]) -> Int {
    var ans = 0
    var prefix = [nums[0]]

    for i in 1..<nums.count {
        prefix.append(nums[i] + prefix[prefix.count - 1])
    }

    for i in 0..<nums.count - 1 {
        let leftSum = prefix[i]
        let rightSum = prefix[nums.count - 1] - prefix[i]

        if leftSum >= rightSum { ans += 1 }
    }

    return ans
}

let numberOfWaysToSplitArrayNums = [10, 4, -8, 7]
print(numberOfWaysToSplitArray(numberOfWaysToSplitArrayNums))

func anotherNumberOfWaysToSplitArray(_ nums: [Int]) -> Int {
    var ans = 0
    var leftSum = 0
    let total = nums.reduce(0, +)

    for i in 0..<nums.count - 1 {
        leftSum += nums[i]
        let rightSum = total - leftSum

        if leftSum >= rightSum { ans += 1 }
    }

    return ans
}

print(anotherNumberOfWaysToSplitArray(numberOfWaysToSplitArrayNums))

func runningSum(_ nums: [Int]) -> [Int] {
    var prefix = [nums[0]]

    for i in 1..<nums.count {
        prefix.append(nums[i] + prefix[prefix.count - 1])
    }

    return prefix
}

let runningSumNums = [1 ,2, 3, 4]
print(runningSum(runningSumNums))

//: [Next](@next)
