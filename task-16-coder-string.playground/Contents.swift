// given 3 strings, make func that takes three arguments: from, to, and str. Each of these is given as a string. The output is str, except with every character that appears in from translated to the corresponding character in str. Your challenge is to implement this as a function in the language of your choice, without using built-in string manipulation functions.
// tr("abc","123","dcba") => "d321"
// tr("abc","123","LOBSTER") => "LOBSTER"
// tr("123", "abc", "bad") => "bad"
// tr("1a","a1","aax11") => "11xaa"

func tr(str1: String, str2: String, str3: String) -> String {
    
    var dict: [Character: Character] = [:]
    var result: String = ""
    
    // check that each has it's replacement char
    if str1.characters.count != str2.characters.count {
        return "error: coder is not completed"
    }
    
    // build a coder dictionary: 
    // key is a char, value is replacement for it
    for i in 0..<str1.characters.count {
        let char1 = str1[str1.index(str1.startIndex, offsetBy: i)]
        let char2 = str2[str2.index(str2.startIndex, offsetBy: i)]

        if dict[char1] == nil {
            dict[char1] = char2
        } else {
            return "error: coder has wrong pattern"
        }
    }
    
    // loop through the string and if it has char from dictionary
    // replace that char
    for char in str3.characters {
        if dict[char] != nil {
            result.append(dict[char]!)
        } else {
            result.append(char)
        }
        
    }
    
    return result
}

print(tr(str1: "abc",str2: "123",str3: "dcba"))     // "d321"
print(tr(str1: "abc",str2: "123",str3: "LOBSTER"))  // "LOBSTER"
print(tr(str1: "123", str2: "abc", str3: "bad"))    // "bad"
print(tr(str1: "1a",str2: "a1",str3: "aax11"))      // "11xaa"
