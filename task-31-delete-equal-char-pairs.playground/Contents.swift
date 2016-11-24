// remove pair of the same chars:
// abbac => aac => c
// aabbbc => bbbc => bc
// bbcc => cc => Empty string


///////////////////////   with recursion   //////////////////////////

func deletePair(string: String) -> String {
    if string.characters.count == 0 {
        return ""
    }
    var result = string
    var currentChar = String(result.characters.first!)
    var currentIndex = 0
    for (index, char) in result.characters.enumerated() {
        if index > 0 && index < result.characters.count {
            if String(char) == currentChar {
                result.remove(at: result.index(result.startIndex, offsetBy: index))
                result.remove(at: result.index(result.startIndex, offsetBy: currentIndex))
                result = deletePair(string: result)
            } else {
                currentChar = String(char)
                currentIndex = index
            }
        }
    }
    return result
}

func answerWithRecursion(string: String) -> String {
    let result = deletePair(string: string);
    if result == "" {
        return "Empty String"
    } else {
        return result
    }
}

///////////////////////   no recursion   //////////////////////////

print(answerWithRecursion(string: "ccdddedcc"))


