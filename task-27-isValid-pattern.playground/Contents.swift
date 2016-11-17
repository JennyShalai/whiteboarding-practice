import UIKit

func isValidToPattern(input: String, pattern: String) -> Bool {

    //var result = true
    var dictWords: [String: String] = [:]
    var dictChars: [String: String] = [:]
    
    let arrayOfWords = input.components(separatedBy: " ")
    
    if arrayOfWords.count != pattern.characters.count {
        return false
    }
    
    for (i, elem) in arrayOfWords.enumerated() {
    
        let char = String(pattern[pattern.index(pattern.startIndex, offsetBy: i)])
        print(char)
        
        if dictWords[elem] == nil && dictChars[char] == nil {
            dictWords[elem] = char
            dictChars[char] = elem
        } else if dictWords[elem] != char || dictChars[char] != elem {
            return false
        }
    }
    
    return true

}


print(isValidToPattern(input: "cat dog dog cat", pattern: "abba"))      // true
print(isValidToPattern(input: "cat dog dog cat", pattern: "abaa"))      // false
print(isValidToPattern(input: "cat dog frog cat", pattern: "abba"))     // false
print(isValidToPattern(input: "cat dog dog cat", pattern: "abb"))       // false
print(isValidToPattern(input: "cat dog dog", pattern: "abba"))          // false
print(isValidToPattern(input: "cat dog cat dog", pattern: "abba"))      // false