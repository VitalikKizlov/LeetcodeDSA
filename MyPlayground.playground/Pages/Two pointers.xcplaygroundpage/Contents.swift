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

checkIfPalindrome("abcdcba")

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
checkForTarget(nums, target: target)

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

