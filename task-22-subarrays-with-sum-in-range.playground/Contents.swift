// [1,2,3,4,2,1,4,2,1,2,2,2,1,5,4]
// (5,7)
// [1,2,3], [2,3], [3,4], [4,2], [4,2,1]


func subArrays(array: [Int], range: [Int]) -> [[Int]] {
    
    var result: [[Int]] = []
    let min = range.first!
    let max = range.last!
    
    for j in 0..<array.count {
        
        var sum: Int = 0
        var resultElement: [Int] = []
        
        for i in j..<array.count {
            
            sum += array[i]
            
            if sum <= max {
                resultElement.append(array[i])
            } else {
                break
            }
            
            if sum>=min && sum<=max {
                result.append(resultElement)
            }
        }
    }
    return result
}

let a = [1,2,3,4,2,1,4,2,1,2,2,2,1,5,4]
let range = [5,7]
print(subArrays(array: a, range: range))



let ar = [2,5,4,1]
let arr = ar.sorted(by: {$0 < $1})
print(arr)
