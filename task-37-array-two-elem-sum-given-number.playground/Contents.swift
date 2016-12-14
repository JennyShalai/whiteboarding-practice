// Given an unsorted array of positive integers, 
// determine if any two numbers in the array add to 100
// [1, 2, 4, 50] // false
// [1, 4, 96, 65, 30] // ture

////////////////////////   O(N2)   //////////////////////////
func isTowElemsHundred_N2(array: [Int]) -> Bool {
    
    if array.count < 2 {
        return false
    }
    
    for k in 0..<array.count {
        for n in 0..<array.count {
            if k != n && array[k] + array[n] == 100 {
                return true
            }
        }
    }
    
    return false
}

////////////////////////   O(N)   //////////////////////////
func isTowElemsHundred_N(array: [Int]) -> Bool {
    
    if array.count < 2 {
        return false
    }
    
    let result = false
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

    return result
}
print(isTowElemsHundred_N2(array: [1, 2, 4, 50]))       // false
print(isTowElemsHundred_N2(array: [1, 4, 96, 65, 30]))  // true
print(isTowElemsHundred_N(array: [1, 2, 4, 50]))        // false
print(isTowElemsHundred_N(array: [1, 4, 96, 65, 30]))   // true
