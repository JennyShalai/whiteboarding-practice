// not done!
// in given matrix


var mtrValue: [[Int]] = [[0,0,0,0,0,5],
                         [0,0,0,0,5,4],
                         [0,0,3,4,0,0],
                         [0,0,3,3,0,0],
                         [0,4,2,0,0,0],
                         [4,0,0,0,0,0]]

var mtrStatus: [[Int]] = [[3,3,3,3,3,4],
                          [3,0,0,0,0,2],
                          [3,0,0,0,0,2],
                          [3,0,0,0,0,2],
                          [3,0,0,0,0,2],
                          [4,2,2,2,2,2]]

func findPicks() -> [[Int]] {
    let N:Int = mtrValue.first!.count
    
    
    
    for i in 0..<N {
        for j in 0..<N {
            let status = getStatus(x: j, y: i)
            
            if status == 4 {
                //do
            }
        }
    }

}

func getStatus(x:Int, y:Int) -> Int {
    
    let N:Int = mtrValue.first!.count
    var status:Int = 1
    
    
    
    if x+1 < N && mtrValue[y][x+1] <= mtrValue[y][x] {
        if mtrStatus[y][x+1] == 0 {
            getStatus(x: x+1, y: y)
        }
    }
    
    if x-1 > 0 && mtrValue[y][x-1] <= mtrValue[y][x] && mtrStatus[y][x-1] == 0 {
        getStatus(x: x-1, y: y)
    }
    
    
    if y+1 < N && mtrValue[y+1][x] <= mtrValue[y][x] && mtrStatus[y+1][x] == 0 {
        getStatus(x: x, y: y+1)
    }
    
    if y-1 > 0 && mtrValue[y-1][x] <= mtrValue[y][x] && mtrStatus[y-1][x] == 0 {
       getStatus(x: x, y: y-1)
    }
    
    return status
    
}
