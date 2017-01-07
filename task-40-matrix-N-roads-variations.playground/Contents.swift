// 2D MxN matrix, can move only left and down
// how many different non-repeat paths from left-top to right-bottom
// idea: number of different variations to reach current position (coordinate) is a sum of variations it's left and top neighbor
// 0  1  1  1  1   1
// 1  2  3  4  5   6
// 1  3  6  10 15  21
// 1  4  10 20 35  56
// 1  5  15 35 70  126
// 1  6  21 56 126 252

func numberOfRoads(Y: Int, X: Int) -> Int {
    
    // init 2D matrix
    var matrix = Array(repeating: Array(repeating: 1, count: X), count: Y)
    
    // number of different variations to reach each position
    for x in 1..<X {
        for y in 1..<Y {
            matrix[y][x] = matrix[y-1][x] + matrix[y][x-1]
        }
    }
    
    return matrix[Y-1][X-1]
}

print(numberOfRoads(Y: 6, X: 6))    // 252
print(numberOfRoads(Y: 6, X: 4))    // 56
print(numberOfRoads(Y: 2, X: 2))    // 2