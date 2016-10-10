// Given two strings, write a method to decide if one is a permutation of the other.



func isPermutation(str1: String, str2: String) -> Bool {
    
    var result: Bool = true
    var dict1: [String: Int] = [:]
    var dict2: [String: Int] = [:]
    
    // both strings have to be same length
    if str1.characters.count != str2.characters.count {
        return false
    }
    
    // make dictionary - for each char : how many times it is in the string
    for i in 0..<str1.characters.count {
        let currentChar1 = String(str1[str1.index(str1.startIndex, offsetBy: i)])
        let currentChar2 = String(str2[str2.index(str2.startIndex, offsetBy: i)])
        
        if dict1[currentChar1] == nil {
            dict1[currentChar1] = 1
        } else {
            dict1[currentChar1] = dict1[currentChar1]! + 1
        }
        
        if dict2[currentChar2] == nil {
            dict2[currentChar2] = 1
        } else {
            dict2[currentChar2] = dict2[currentChar2]! + 1
        }
    }
    
    // check that both strings have the make chars and the same amount of them
    if (dict1 != dict2) {
        for (key, val) in dict1 {
            if dict2[key] == nil || dict2[key] != val {
                result = false
                print("Extra in first string: \(key) \(val) time(s)")
            }
        }
        
        for (key, val) in dict2 {
            if dict1[key] == nil || dict1[key] != val {
                result = false
                print("Extra in second string: \(key) \(val) time(s)")
            }
        }
    }
    
    return result

}


let str1 = "Hello, playground"
let str2 = "playground, Hello"
print(isPermutation(str1: str1, str2: str2))
// true


let str3 = "Hello, playground"
let str4 = "bbayground, Hebbo"
print(isPermutation(str1: str3, str2: str4))
// Extra in first string: p 1 time(s)
// Extra in first string: l 3 time(s)
// Extra in second string: b 4 time(s)
// false
