import UIKit

func checkIfPalindrome(_ string: String) -> Bool {
    var left = string.startIndex
    var right = string.index(string.endIndex, offsetBy: -1)

    while left < right {
        if string[left] != string[right] { return false }
        left = string.index(after: left)
        right = string.index(before: right)
    }

    return true
}

func checkIfPalindromeCount(_ string: String) -> Bool {
    var left = 0
    var right = string.count

    while left < right {
        let leftIndex = string.index(string.startIndex, offsetBy: left)
        let rightIndex = string.index(string.startIndex, offsetBy: right - 1)

        if string[leftIndex] != string[rightIndex] { return false }
        left += 1
        right -= 1
    }

    return true
}

print(checkIfPalindrome("abcdcba"))
print(checkIfPalindromeCount("abcdcba"))

func checkForTarget(_ array: [Int], target: Int) -> Bool {
    var left = 0
    var right = array.count - 1

    while left < right {
        if array[left] + array[right] == target {
            return true
        } else if array[left] + array[right] > target {
            right -= 1
        } else {
            left += 1
        }
    }

    return false
}

let nums = [1, 2, 4, 6, 8, 9, 14, 15]
let target = 13
print(checkForTarget(nums, target: target))

func mergeSortedArrays(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var result: [Int] = []

    while i < firstArray.count && j < secondArray.count {
        if firstArray[i] < secondArray[j] {
            result.append(firstArray[i])
            i += 1
        } else if firstArray[i] == secondArray[j] {
            result.append(firstArray[i])
            i += 1
        } else {
            result.append(secondArray[j])
            j += 1
        }
    }

    while i < firstArray.count {
        result.append(firstArray[i])
        i += 1
    }

    while j < secondArray.count {
        result.append(secondArray[j])
        j += 1
    }

    return result
}

let nums1 = [1, 3, 5, 7, 9, 11]
let nums2 = [12, 14, 16, 18, 20]
print(mergeSortedArrays(nums1, nums2))

func isSubsequence(_ string1: String, _ string2: String) -> Bool {
    var i = 0
    var j = 0

    while i < string1.count && j < string2.count {
        let iIndex = string1.index(string1.startIndex, offsetBy: i)
        let jIndex = string2.index(string2.startIndex, offsetBy: j)

        if string1[iIndex] == string2[jIndex] {
            i += 1
        }

        j += 1
    }

    return i == string1.count
}

print(isSubsequence("ace", "abcdef"))

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1

    while left < right {
        let first = s[left]
        let last = s[right]

        s[left] = last
        s[right] = first

        left += 1
        right -= 1
    }
}

var s: [Character] = ["h","e","l","l","o"]
print(reverseString(&s))

func sortedSquares(_ nums: [Int]) -> [Int] {
    var left = 0
    var right = nums.count - 1
    var index = nums.count - 1
    var result: [Int] = Array(repeating: 0, count: nums.count)

    while left <= right {
        let first = nums[left] * nums[left]
        let last = nums[right] * nums[right]

        if first > last {
            result[index] = first
            left += 1
        } else {
            result[index] = last
            right -= 1
        }
        
        index -= 1
        print(result)
    }

    return result
}

let sortedSquaresNums = [-4,-1,0,3,10]
print(sortedSquares(sortedSquaresNums))

let reverseWordsString = "Let's take LeetCode contest"
print(reverseWords(reverseWordsString))

let reverseOnlyLettersString = "ab-cd"
print(reverseOnlyLetters(reverseOnlyLettersString))
