// find the shortest sub-array starts with 5 and ends with 7

func find(input: [Int]) -> [Int] {
    
    if input.count < 2 {
        return []
    }
    
    var startIndex = -1
    var endIndex = input.count
    var tempIndex = 0
    var isFive = false
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
    
    
    if startIndex >= 0 && endIndex < input.count {
        // form result sub array
        for i in startIndex...endIndex {
            result.append(input[i])
        }
    }
    
    return result
}

let myArray = [7,5,6,6,7,5,5,4,7,5]

print(find(input: [6,7,8]))     // []
print(find(input: myArray))     // [5, 4, 7]
