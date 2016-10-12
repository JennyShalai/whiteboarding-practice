// aabcccccaaa -> a2b1c5a3 if "compressed" string >= original string, return original string

func compressString(str: String) -> String {
    
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


let str1 = "eeeeerrreeeeeewwwqqwd"
print(compressString(str: str1))
// e5r3e6w3q2w1


let str2 = "ert"
print(compressString(str: str2))
// ert
