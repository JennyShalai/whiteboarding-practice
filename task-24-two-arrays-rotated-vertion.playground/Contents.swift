// Given 2 integer arrays, determine of the 2nd array is a rotated version of the 1st array. Ex. Original Array A=[1,2,3,5,6,7,8] Rotated Array B=[5,6,7,8,1,2,3]

func rotatedVertion(array1: [Int], array2: [Int]) -> Bool {

    var result = true
    
    if array1.count != array2.count {
        result = false
    }
    
    let first1 = array1.first
    
    if first1 != nil {
    
        if !array2.contains(first1!) {
            result = false
        } else {
            var temp: [Int] = []
            
        }
    }
    
    
    return result
}
