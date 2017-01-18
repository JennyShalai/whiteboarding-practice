// print out matrix by spiral

enum Mode {
    case toRight
    case toBottom
    case toLeft
    case toTop
    
}

func printSpiral(matrix: [[Int]], mode: Mode) {

    if matrix.count <= 0 {
        return
    }
    
    let m = matrix.count
    let n = matrix.first!.count
    
    if mode == .toRight {
        for i in 0..<n {
            print(matrix[0][i])
        }
        printSpiral(matrix: getSubmatrix(matrix, i0: 1, i1: m-1, j0: 0, j1: n-1), mode: .toBottom)
    }
    
    if mode == .toBottom {
        for i in 0..<m {
            print(matrix[i][n-1])
        }
        printSpiral(matrix: getSubmatrix(matrix, i0: 0, i1: m-1, j0: 0, j1: n-2), mode: .toLeft)
    }
    
    if mode == .toLeft {
        var count = n-1
        for _ in 0..<n {
            print(matrix[m-1][count])
            count -= 1
        }
        printSpiral(matrix: getSubmatrix(matrix, i0: 0, i1: m-2, j0: 0, j1: n-1), mode: .toTop)
    }
    
    if mode == .toTop {
        var count = m-1
        for _ in 0..<m {
            print(matrix[count][0])
            count -= 1
        }
        printSpiral(matrix: getSubmatrix(matrix, i0: 0, i1: m-1, j0: 1, j1: n-1), mode: .toRight)
    }
    
    
}

// get sub-matrix from givem matrix:
// i0 - start row, i1- end row
// j0 - start column, j1 - end column
func getSubmatrix(_ matrix: [[Int]], i0: Int, i1: Int, j0: Int, j1: Int) -> [[Int]] {
    
    if matrix.count <= 0 {
        return []
    }
    
    if i0 < 0 || i1 < 0 || j0 < 0 || j1 < 0{
        return []
    }
    
    var result = [[Int]]()
    for row in Array(matrix[i0...i1]) {
        result.append(Array(row[j0...j1]))
    }
    return result
}


let matrix = [
    [ 1,  2,  3,  4],
    [ 5,  6,  7,  8],
    [ 9, 10, 11, 12],
    [13, 14, 15, 16]
]
printSpiral(matrix: matrix, mode: .toRight)
// 1
// 2
// 3
// 4
// 8
// 12
// 16
// 15
// 14
// 13
// 9
// 5
// 6
// 7
// 11
// 10
