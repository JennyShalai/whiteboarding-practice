// aabcccccaaa -> a2b1c5a3 if "compressed" string >= original string, return original string


// with access to a char index
func compressString(str: String) -> String {
    
    if str.characters.count < 2 {
        return str
    }
    
    var result: String = ""
    var char: String = String(str[str.startIndex])
    var counter: Int = 1
    
    for i in 0..<str.characters.count {
        
        let currentChar = String(str[str.index(str.startIndex, offsetBy: i)])
        
        if currentChar == char {
            counter += 1
        } else {
            result += "\(char)\(counter)"
            char = currentChar
            counter = 1
        }
    }
    
    return result.characters.count >= str.characters.count ? str : result
}


print(compressString(str: "eeeeerrreeeeeewwwqqwd")) // e5r3e6w3q2w1
print(compressString(str: "ert"))                   // ert




// with access char value with fast enumeration loop
func compressStr(str: String) -> String {
    
    if str.characters.count < 2 {
        return str
    }
    
    var result: String = ""
    var char = str.characters.first!
    var counter: Int = 1
    
    for currentChar in str.characters {
        
        if currentChar == char {
            counter += 1
        } else {
            result += "\(char)\(counter)"
            char = currentChar
            counter = 1
        }
    }
    
    return result.characters.count >= str.characters.count ? str : result
}


print(compressStr(str: "eeeeerrreeeeeewwwqqwd"))    // e5r3e6w3q2w1
print(compressStr(str: "ert"))                      // ert
