// Check if a String is composed of all unique characters

func isStringUniqueChars(string: String) -> Bool {
    
    if string.characters.count <= 0 {
        return true
    }
    
    var dict: [Character: Character] = [:]
    
    for char in string.characters {
        if dict[char] == nil {
            dict[char] = char
        } else {
            return false
        }
    }
    
    return true
}



print(isStringUniqueChars(string: "Hello, playground")) // false
print(isStringUniqueChars(string: ""))                  // true
print(isStringUniqueChars(string: "  "))                // false
print(isStringUniqueChars(string: "123qweasdzxc"))      // true

