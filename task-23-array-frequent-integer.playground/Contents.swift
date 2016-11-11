// Find the most frequent integer in an array

func mostFrequentIntIn(Array: [Int]) -> [Int] {
    var result: [Int] = []
    var dict: [Int: Int] = [:]
    
    for i in Array {
    
        if dict[i] == nil {
            dict[i] = 1
        } else {
            dict[i] = dict[i]! + 1
        }
    }
    
    let howManyTimes = dict.values.sorted()
    let frequentInt = howManyTimes.last
    
    if frequentInt != nil {
        for (key, value) in dict {
            if value == frequentInt {
                result.append(key)
            }
        }
    }
    return result
}


print(mostFrequentIntIn(Array: [3,5,1,2,1,7,3,5]))  // [5, 3, 1]
print(mostFrequentIntIn(Array: [3]))                // [3]
print(mostFrequentIntIn(Array: []))                 // []