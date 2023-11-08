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

//: [Next](@next)
