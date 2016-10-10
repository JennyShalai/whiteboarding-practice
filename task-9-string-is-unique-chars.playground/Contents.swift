// Implement an aalgorithm to determine if a string has all unique characters.


func isUniqueCharsString(str: String) -> Bool {
    
    var result: Bool = true
    var dict: [String: Int] = [:]
    
    for i in 0..<str.characters.count {
    
        let currentChar = String(str[str.index(str.startIndex, offsetBy: i)])
        
        // add char in dictionary and if char already there - return false
        if dict[currentChar] == nil {
            dict[currentChar] = 1
        } else {
            result = false
        }
    
    }
    
    return result

}


let strFalse = "qwertyuiop[]asdfghjkl;'zxcvbnNmMQq"
print(isUniqueCharsString(str: strFalse))
// false


let strTrue = "qwertyuiop[]asdfghjkl;'zxcvbnNmMQR"
print(isUniqueCharsString(str: strTrue))
// true