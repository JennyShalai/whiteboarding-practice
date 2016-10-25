

func revers(string: String) -> String {
    
    // convert string into array of characters
    var array = Array(string.characters)
    
    // init values
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    // swope chars
    while leftIndex < rightIndex {
        
        let left = array[leftIndex]
        print("left \(left)")
        let right = array[rightIndex]
        print("right \(right)")
        
        
        print(array)                        // ["a", "b", "c", "d", "e"]
        array.remove(at: leftIndex)         //      ["b", "c", "d", "e"]
        array.insert(right, at: leftIndex)  // ["e", "b", "c", "d", "e"]
        array.remove(at: rightIndex)        // ["e", "b", "c", "d"]
        array.insert(left, at: rightIndex)  // ["e", "b", "c", "d", "a"]
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    let result = String(array)
    return result
}



var str = "abcde"
let answer = revers(string: str)    // "edcba"
