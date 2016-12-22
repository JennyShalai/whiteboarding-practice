// Reverse a string iteratively and recursively

var str = "Hello, playground"



// Reverse a string iteratively
func reverseIteratively(str: String) -> String {
    
    var result = ""
    
    for i in 0..<str.characters.count {
        let currentChar = str[str.index(str.startIndex, offsetBy: i)]
        result = "\(currentChar)\(result)"
    }
    
    return result
}




// Reverse a string recursively
func reverseRecursively(str: String) -> String {
    
    var result = ""
    
    if str.characters.count > 0 {
        let firstChar = str.characters.first!
        let strWithoutFirstChar = str[str.characters.index(after: str.characters.startIndex)..<str.characters.endIndex]
        result = "\(reverseRecursively(str: strWithoutFirstChar))\(firstChar)"
    }
    
    return result
}

print(reverseIteratively(str: str)) // dnuorgyalp ,olleH
print(reverseRecursively(str: str)) // dnuorgyalp ,olleH
