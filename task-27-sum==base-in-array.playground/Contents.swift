//are there 2 elements in array of ints, sum of which == base?

///////////////////////////////////////////////////
////////////////////   O(n2)   ////////////////////
///////////////////////////////////////////////////

func isElementsSumAsBase_N2(array: [Int], base: Int) -> Bool {

    if array.count < 2 {
        return false
    }
    
    for (index, value) in array.enumerated() {
        if index+1 < array.count {
            for i in index+1..<array.count {
                if value + array[i] == base {
                    return true
                }
            }
        }
        
    }
    
    return false
}


///////////////////////////////////////////////////
////////////////////   O(n)   /////////////////////
///////////////////////////////////////////////////

func isElementsSumAsBase_N(array: [Int], base: Int) -> Bool {
    
    if array.count < 2 {
        return false
    }
    
    var dict: [Int: Int] = [:]
    
    for element in array {
        if element < base {
            let delta = base - element
            if dict[delta] == nil {
                dict[element] = element
            } else {
                return true
            }
        }
        
    }
    return false
}

//////////////////////////////////////////////////////////////////////

print(isElementsSumAsBase_N2(array: [2,4,5,3,9], base: 8))  // true
print(isElementsSumAsBase_N2(array: [2,4,5,3,9], base: 10)) // false

print(isElementsSumAsBase_N(array: [2,4,5,3,9], base: 8))  // true
print(isElementsSumAsBase_N(array: [2,4,5,3,9], base: 10)) // false

//////////////////////////////////////////////////////////////////////


// given array of positive ints, are there 2 elements sum = 100?

func isTowElemsHandred(array: [Int]) -> Bool {
    
    if array.count < 2 {
        return false
    }
    
    var dict: [Int: Int] = [:]
    
    for elem in array {
        if elem < 100 {
            if dict[elem] == nil {
                dict[100-elem] = 100-elem
            } else {
                return true
            }
        }
        
    }
    
    return false
}


print(isTowElemsHandred(array: [2,23,3,97]))
