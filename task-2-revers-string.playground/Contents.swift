// reverse string without using extra memory

func revers(string: String) -> String {
    
    if string.characters.count < 2 {
        return string
    }
    
    // convert string into array of characters
    var array = Array(string.characters)
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    // swope chars
    while leftIndex < rightIndex {
        
        let leftElem = array[leftIndex]
        let rightElem = array[rightIndex]
                                                // ["a", "b", "c", "d", "e"]
        array.remove(at: leftIndex)             //      ["b", "c", "d", "e"]
        array.insert(rightElem, at: leftIndex)  // ["e", "b", "c", "d", "e"]
        array.remove(at: rightIndex)            // ["e", "b", "c", "d"]
        array.insert(leftElem, at: rightIndex)  // ["e", "b", "c", "d", "a"]
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    return String(array)
}




print(revers(string: "abcde"))   // "edcba"
