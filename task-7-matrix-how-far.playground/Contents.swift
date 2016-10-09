//: Playground - noun: a place where people can play

import UIKit

var matrix: [[Int]] = [[0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0]]

var linear: [[Int]] = [[0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0],
                       [0,0,0,0,0]]


////////////////////////   recursion    ////////////////////////

func howFarWithRecursion(coordinats: [Int]) {

    let counter: Int = 0
    let x: Int = coordinats.last!
    let y: Int = coordinats.first!
    
    matrix[y][x] = -1
    check(coordinats: [y, x], delta: counter)
    matrix[y][x] = 0
}


func check(coordinats: [Int], delta: Int) {
    
    let x: Int = coordinats.last!
    let y: Int = coordinats.first!
    let N: Int = matrix[0].count
    
    if x+1 < N {
        if matrix[y][x+1] == 0 || matrix[y][x+1] > delta + 1 {
            matrix[y][x+1] = delta + 1
            check(coordinats: [y, x+1], delta: delta+1)
        }
    }
    
    if x-1 >= 0 {
        if matrix[y][x-1] == 0 || matrix[y][x-1] > delta + 1 {
            matrix[y][x-1] = delta + 1
            check(coordinats: [y, x-1], delta: delta+1)
        }
    }
    
    if y+1 < N {
        if matrix[y+1][x] == 0 || matrix[y+1][x] > delta + 1 {
            matrix[y+1][x] = delta + 1
            check(coordinats: [y+1, x], delta: delta+1)
        }
    }
    
    if y-1 >= 0 {
        if matrix[y-1][x] == 0 || matrix[y-1][x] > delta + 1 {
            matrix[y-1][x] = delta + 1
            check(coordinats: [y-1, x], delta: delta+1)
        }
        
    }
}

////////////////////////   linear    ////////////////////////

func howFarLinear(coordinats: [Int]) {
    let N: Int = linear.first!.count
    let x: Int = coordinats.last!
    let y: Int = coordinats.first!

    for i in 0..<N {
        for j in 0..<N {
            linear[i][j] = abs(x-j) + abs(y-i)
        }
    }
}


///////////////////////   call functions   ///////////////////

howFarWithRecursion(coordinats: [2,2])
for i in 0..<matrix.first!.count {
    print(matrix[i])
}


// [4, 3, 2, 3, 4]
// [3, 2, 1, 2, 3]
// [2, 1, 0, 1, 2]
// [3, 2, 1, 2, 3]
// [4, 3, 2, 3, 4]


print("")



howFarLinear(coordinats: [2,2])
for i in 0..<matrix.first!.count {
    print(linear[i])
}

// [4, 3, 2, 3, 4]
// [3, 2, 1, 2, 3]
// [2, 1, 0, 1, 2]
// [3, 2, 1, 2, 3]
// [4, 3, 2, 3, 4]
