// takes in an array of integers
// outputs the numerical range (difference between the highest number and the lowest number)
// input: [ 5, 0, -1, 6, 3 ] => (6 - -1) => 7


func range(of input: [Int]) -> Int {
    
    var min: Int = Int.max
    var max: Int = Int.min
    
    if input.count <= 0 {
        return 0
    }
    
    for i in input {
        
        if i > max {
            max = i
        }
        
        if i < min {
            min = i
        } 
    }
    
    return max - min
    
}

print(range(of: [3, 60]))   // 57
print(range(of: [3, -60]))  // 63
print(range(of: []))        // 0
print(range(of: [3]))       // 0



