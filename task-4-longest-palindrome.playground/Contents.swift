// make the longest polindrom from given string

import UIKit

func longest(input: String) -> String {
    var dictionary: [String: Int] = [:]
    var out: String = ""
    var oddLength: Int = 0
    var odd: String = ""
    
    // make dictionary how many times each char in string
    for char in input.characters {
        if dictionary[String(char)] != nil {
            dictionary[String(char)]! += 1
        } else {
            dictionary[String(char)] = 1
        }
    }
    
    // take all chars
    let chars: [String] = Array(dictionary.keys)
    
    var leftSide: String = ""
    var rightSide: String = ""
    for char in chars {
        // if char sees even times, add to result
        if dictionary[char]! % 2 == 0 {
            var foo = ""
            for _ in 0..<dictionary[char]! / 2 {
                foo += char
            }
            rightSide.append(foo)
            leftSide = foo.appending(leftSide)
        // if char sees odd time, remember the longest
        } else {
            if dictionary[char]! > oddLength {
                oddLength = dictionary[char]!
                odd = char
            }
            
        }
    }
    
    // make string form char seen odd times
    var middle: String = ""
    for _ in 1...oddLength {
        middle += odd
    }
    
    // longest polindrom from given string is:
    out = "\(leftSide)\(middle)\(rightSide)"
    
    return out
    
}

let input = "7a7fafaabdfcfff"
print(longest(input: input))
// fffaa7b7aafff
