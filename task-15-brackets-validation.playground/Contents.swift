// check the correct brackets position 
// {({[]})()} -> true
// {(})() -> false

func bracketsValidation(str: String) -> Bool {
    
    if str.characters.count % 2 != 0 {
        return false
    }

    var array: [String] = []

    for char in str.characters {
        // when find open bracket - add it to array
        if char == "{" || char == "[" || char == "(" {
            array.append(String(char))
        // when find close bracket and it had pair - delet it's pair from array
        } else if char == "}" && array.count > 0 && array.last! == "{" {
            array.removeLast()
        } else if char == "]" && array.count > 0 && array.last! == "[" {
            array.removeLast()
        } else if char == ")" && array.count > 0 && array.last! == "(" {
            array.removeLast()
        } else {
            return false
        }
    }
    
    if array.count == 0 {
        return true
    }
    
    return false
}

print(bracketsValidation(str: "()"))        // true
print(bracketsValidation(str: "()("))       // false
print(bracketsValidation(str: "[(){}]"))    // true
print(bracketsValidation(str: "([)]"))      // false
