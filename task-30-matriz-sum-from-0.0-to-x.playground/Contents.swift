// given matrix and coordinats. sum all elements in square area from (0,0) to given (x,y) coordinat

var matrix: [[Int]] = [
    [2,3,1,0,0,0,0,0,0,0,0,0],
    [3,4,3,0,0,0,0,1,0,0,0,0],
    [1,2,5,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0]]


func sumElementsAreaFor(X: Int, Y:Int) -> Int {
    
    var result = 0
    
    
    for y in 0...Y {
        for x in 0...X {
            result += matrix[y][x]
        }
    }

    return result
}




func calculateCache() -> [[Int]] {
    
    var output: [[Int]] = matrix
    
    for y in 0..<matrix.count {

        for x in 0..<matrix.first!.count {
            
            var sum = matrix[y][x]
            
            if y > 0 {
                sum += output[y-1][x]
            }
            
            if x > 0 {
                sum += output[y][x-1]
            }
            
            if x > 0 && y > 0 {
                sum -= output[y-1][x-1]
            }
            
            output[y][x] = sum
        }
    }
    
    return output
}

let cache = calculateCache()
func getSumBaseOnCache(X: Int, Y: Int) -> Int {
    return cache[Y][X]
}

print(sumElementsAreaFor(X: 2, Y: 2))   // 24
print(getSumBaseOnCache(X: 2, Y: 2))    // 24

