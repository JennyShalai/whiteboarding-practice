// Implement an algorithm to determine if a string has all unique characters. 
// Print non-unique chars.


func isUniqueCharsString(str: String) -> Bool {
    
    if str.characters.count <= 0 {
        return true
    }
    
    var result: Bool = true
    var dict: [String: Int] = [:]
    
    for i in 0..<str.characters.count {
    
        let currentChar = String(str[str.index(str.startIndex, offsetBy: i)])
        
        // add char in dictionary and if char already there - return false
        // dict[currentChar] == nil ? (dict[currentChar] = 1) : (result = false)
        if dict[currentChar] == nil {
            dict[currentChar] = 1
        } else {
            result = false
            dict[currentChar] = dict[currentChar]! + 1
        }
    
    }
    
    for (key, val) in dict {
        // if char seen more than 1 time - print it
        if Int(val) > 1 {
            print("\(key) \(val)")
        }
        
    }
    
    return result
}


let strFalse = "qwertyuiop[]asdfghjkl;'zzzzxcvbnNmMQq"
print(isUniqueCharsString(str: strFalse))
// q 2
// z 4
// false


let strTrue = "qwertyuiop[]asdfghjkl;'zxcvbnNmMQR"
print(isUniqueCharsString(str: strTrue))
// true
