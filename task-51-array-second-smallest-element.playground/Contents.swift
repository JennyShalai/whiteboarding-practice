// Return the second smallest element in that array.
// For example: an input of {42, 8, 13, 79, 5, 2, 18} should return 5.



func secondSmallest(inArray array: [Int]) -> Int? {
    
    // need at least 2 elements to return second smallest
    if array.count < 2 {
        return nil
    }
    
    if array.count == 2 {
        return min(array[0], array[1])
    }
    
    var s1 = array[0]
    var s2 = array[1]
    
    for element in array {
        if element < s1 || element < s2 {
            if s1 < s2 {
                s2 = element
            } else {
                s1 = element
            }
        }
    }
    return max(s1,s2)
}

let array1 = [42, 8, 13, 79, 5, 2, 18]
if let q1 = secondSmallest(inArray: array1) {
    print(q1)   // print 5
}

let array2 = [42]
if let q2 = secondSmallest(inArray: array2) {
    print(q2)   // won't execute
}