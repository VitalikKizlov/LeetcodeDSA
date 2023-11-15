import Foundation

// MARK: - 557. Reverse Words in a String III

/*
 Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

 Example 1:
 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"

 Example 2:
 Input: s = "God Ding"
 Output: "doG gniD"
 */

public func reverseWords(_ s: String) -> String {
    let words = s.components(separatedBy: CharacterSet.whitespacesAndNewlines)
    var result: [String] = []

    for word in words {
        var left = 0
        var right = word.count - 1
        var str = ""

        while left < word.count {
            let index = word.index(word.startIndex, offsetBy: right)
            let element = word[index]
            str += String(element)

            left += 1
            right -= 1

            if left == word.count {
                result.append(str)
            }
        }
    }

    return result.joined(separator: " ")
}
