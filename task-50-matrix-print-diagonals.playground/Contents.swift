// print matrix diagonals from bottom-left to top-right

func printDiagonals(matrix: [[Int]]) {

    if matrix.count == 0 {
        return
    }
    
    let m = matrix.count
    let n = matrix.first!.count
    
    for i in 0..<(m+n-1) {
        var x = 0
        var y = m - 1 - i
        var result = ""
        
        while (x < n && y < m) {
            if x < 0 || y < 0 {
                x += 1
                y += 1
                continue
            }
            result += " \(matrix[y][x])"
            x += 1
            y += 1
        }
        print(result)
    }
}



let matrix = [
[ 1,  2,  3,  4,  5,  6],
[ 7,  8,  9, 10, 11, 12],
[13, 14, 15, 16, 17, 18]]

printDiagonals(matrix: matrix)

// 13
// 7 14
// 1 8 15
// 2 9 16
// 3 10 17
// 4 11 18
// 5 12
// 6