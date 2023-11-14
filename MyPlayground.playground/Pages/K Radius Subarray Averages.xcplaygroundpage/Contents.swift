import Foundation

func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
    guard k != 0 else {
        return nums
    }

    let n = nums.count
    var averages = Array(repeating: -1, count: n)

    guard (2 * k + 1) <= n else {
        return averages
    }

    var prefix = Array(repeating: 0, count: n + 1)
    for i in 0..<n {
        prefix[i + 1] = prefix[i] + nums[i]
    }

    for i in k..<(n-k) {
        let leftBound = i - k, rightBound = i + k
        let subArraySum = prefix[rightBound + 1] - prefix[leftBound]
        let average = subArraySum / (2 * k + 1)
        averages[i] = average
    }

    return averages
}

let nums = [7,4,3,9,1,8,5,2,6]
let k = 3
print(getAverages(nums, k))
