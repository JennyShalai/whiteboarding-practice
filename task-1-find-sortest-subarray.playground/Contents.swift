// find the shortest sub array starts with 5 and ends with 7

import UIKit

let myArray = [7,5,6,6,7,5,5,4,7,5]

func find(input: [Int]) -> [Int] {
    var startIndex: Int = 0
    var endIndex: Int = Int.max
    var tempIndex: Int = 0
    var isFive: Bool = false
    var result: [Int] = []
    
    for (index, element) in input.enumerated() {
        // if 5 found - mark the index
        if element == 5 {
            isFive = true
            tempIndex = index
        }
        // if 7 found and 5 was found
        if element == 7 && isFive {
            isFive = false
            if endIndex - startIndex > index - tempIndex {
                startIndex = tempIndex
                endIndex = index
            }
        }
    }
    
    // form result sub array
    for i in startIndex...endIndex {
        result.append(input[i])
    }
    
    return result
}

print(find(input: myArray))
