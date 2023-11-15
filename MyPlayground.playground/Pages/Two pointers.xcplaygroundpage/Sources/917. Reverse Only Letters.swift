import Foundation

/*
 Given a string s, reverse the string according to the following rules:

 All the characters that are not English letters remain in the same position.
 All the English letters (lowercase or uppercase) should be reversed.
 Return s after reversing it.

 Example 1:
 Input: s = "ab-cd"
 Output: "dc-ba"

 Example 2:
 Input: s = "a-bC-dEf-ghIj"
 Output: "j-Ih-gfE-dCba"

 Example 3:
 Input: s = "Test1ng-Leet=code-Q!"
 Output: "Qedo1ct-eeLg=ntse-T!"
 */

public func reverseOnlyLetters(_ s: String) -> String {
    let characters = Array(s)
    var left = 0
    var right = s.count - 1
    var array = Array(repeating: Character(" "), count: s.count)

    while left <= right {
        let leftCharacter = characters[left]
        let rightCharacter = characters[right]

        if leftCharacter.isLetter && rightCharacter.isLetter {
            array[left] = rightCharacter
            array[right] = leftCharacter

            left += 1
            right -= 1
        } else {
            if !leftCharacter.isLetter {
                array[left] = leftCharacter
                left += 1
            }
            if !rightCharacter.isLetter {
                array[right] = rightCharacter
                right -= 1
            }
        }
    }

    return String(array)
}
