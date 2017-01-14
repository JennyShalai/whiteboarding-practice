// return string of consecuative elements


let input = [1, 2, 10, 15, 16, 17, 20, 21, 22, 24]

func consecuative(array: [Int]) -> String {
    
    if array.count == 0 {
        return ""
    }
    
    if array.count == 1 {
        return "\(array.first!)"
    }
    
    var begin: Int = 0
    var end: Int = 0
    var next: Int = 0
    var result: String = ""
    
    for ind in 0..<array.count {
        // for all elements but last one
        if ind + 1 < array.count {
            next = ind + 1
            // if consecuative
            if array[next] - array[end] == 1 {
                end = next
            // if not consecuative
            } else {
                if begin == end {
                    result += "\(array[begin]), "
                } else {
                    result += "\(array[begin])-\(array[end]), "
                }
                begin = next
                end = next
            }
        // case for the last element in array
        } else {
            if begin == end {
                result += "\(array[begin])"
            } else {
                result += "\(array[begin])-\(array[end])"
            }
        }
    }
    return result
}

print(consecuative(array: input))   // 1-2, 10, 15-17, 20-22, 24
print(consecuative(array: [5]))     // 5