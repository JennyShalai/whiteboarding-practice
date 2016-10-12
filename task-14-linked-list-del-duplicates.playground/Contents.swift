// remove duplicates from an unsorted linked list
// * how would you solvethis if a temp buffer is not allowed?



class Node : CustomStringConvertible {
    
    var value: Int
    var nextNode: Node?
    var description: String {
        if nextNode != nil {
            return "(\(value)) -> \(nextNode!)"
        } else {
            return "(\(value)) -> \(nextNode)"
        }
    }
    
    init(value: Int) {
        self.value = value;
    }
}


func removeDups(head: Node?) -> Node? {
    
}
