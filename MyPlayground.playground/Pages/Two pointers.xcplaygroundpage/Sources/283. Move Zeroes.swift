import Foundation

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 Note that you must do this in-place without making a copy of the array.

 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]

 Example 2:
 Input: nums = [0]
 Output: [0]
 */

public func moveZeroes(_ nums: inout [Int]) {
    var lastNonZeroFoundAt = 0

    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums[lastNonZeroFoundAt] = nums[i]
            lastNonZeroFoundAt += 1
        }
    }

    for i in lastNonZeroFoundAt..<nums.count {
        nums[i] = 0
    }
}
