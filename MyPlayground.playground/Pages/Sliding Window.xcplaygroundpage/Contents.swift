//: [Previous](@previous)

import Foundation

func findLengthOfTheLongestSubarray(_ nums: [Int], _ k: Int) -> Int {
    var left = 0
    var curr = 0
    var ans = 0

    for right in 0..<nums.count {
        curr += nums[right]

        while curr > k {
            curr -= nums[left]
            left += 1
        }

        ans = max(ans, right - left + 1)
    }

    return ans
}

let nums = [3, 1, 2, 7, 4, 2, 1, 1, 5]
let k = 8
print(findLengthOfTheLongestSubarray(nums, k))

func findLengthOfTheLongestSubstring(_ s: String) -> Int {
    var left = 0
    var curr = 0
    var ans = 0

    for right in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: right)
        if s[index] == "0" {
            curr += 1
        }

        while curr > 1 {
            let index = s.index(s.startIndex, offsetBy: left)
            if s[index] == "0" {
                curr -= 1
            }
            left += 1
        }
        
        ans = max(ans, right - left + 1)
    }

    return ans
}

let s = "1101100111"
print(findLengthOfTheLongestSubstring(s))

func numberOfSubarraysProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
    var left = 0
    var ans = 0
    var curr = 1

    if k <= 1 { return 0 }

    for right in 0..<nums.count {
        curr *= nums[right]

        while curr >= k {
            curr /= nums[left]
            left += 1
        }

        ans += right - left + 1
    }

    return ans
}

let subArraysNums = [10, 5, 2, 6]
let subArraysK = 100
print(numberOfSubarraysProductLessThanK(subArraysNums, subArraysK))

func bestSubArraysFixedWindowSize(_ nums: [Int], _ k: Int) -> Int {
    var ans = 0
    var curr = 0

    for i in 0..<k {
        curr += nums[i]
    }
    ans = curr

    for i in k..<nums.count {
        curr += nums[i] - nums[i - k]
        ans = max(ans, curr)
    }

    return ans
}

let fixedNums = [3, -1, 4, 12, -8, 5, 6]
let fixedK = 4
print(bestSubArraysFixedWindowSize(fixedNums, fixedK))

func findMaxAverageSubArray(_ nums: [Int], _ k: Int) -> Double {
    var ans: Double = 0
    var curr: Double = 0

    if k <= 1 {
        for i in 0..<nums.count {
            ans = max(ans, Double(nums[i]))
        }
    }

    for i in 0..<k {
        curr += Double(nums[i]) / Double(k)
    }
    ans = curr

    for i in k..<nums.count {
        curr += Double(nums[i] - nums[i - k]) / Double(k)
        ans = max(ans, curr)
    }

    return ans
}

let maxAverageNums = [0, 4, 0, 3, 2]
let maxAverageK = 1
print(findMaxAverageSubArray(maxAverageNums, maxAverageK))

func maxConsecutive(_ nums: [Int], _ k: Int) -> Int {
    var ans = 0
    var curr = 0
    var left = 0

    for right in 0..<nums.count {
        if nums[right] == 0 {
            curr += 1
        }

        while curr > k {
            if nums[left] == 0 {
                curr -= 1
            }
            left += 1
        }

        ans = max(ans, right - left + 1)
    }

    return ans
}

let maxConsecutiveNums = [1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0]
let maxConsecutiveK = 2
print(maxConsecutive(maxConsecutiveNums, maxConsecutiveK))

print(minSubArrayLenght([2,3,1,2,4,3], target: 7))
//: [Next](@next)
