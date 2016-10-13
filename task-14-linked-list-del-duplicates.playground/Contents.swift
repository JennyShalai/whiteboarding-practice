// remove duplicates from an unsorted linked list
// * how would you solvethis if a temp buffer is not allowed?

import Foundation

class Node : CustomStringConvertible {
    
    var value: Int
    var next: Node?
    var description: String {
        if next != nil {
            return "(\(value)) -> \(next!)"
        } else {
            return "(\(value)) -> \(next)"
        }
    }
    
    init(value: Int) {
        self.value = value;
    }
}


func removeDups(head: Node?) -> Node? {
    
    var current = head
    var stableNode = head
    // var dict: [Int: Int] = [:]
    var set: Set<Int> = []
    
//    while current != nil {
//        if dict[current!.value] == nil {
//            dict[current!.value] = 1
//            stableNode = current!
//        } else {
//            stableNode!.next = current!.next
//        }
//        current = current!.next
//    }
    
    while current != nil {
    
        if set.insert(current!.value).inserted {
            stableNode = current!
        } else {
            stableNode!.next = current!.next
        }
        
        current = current!.next
    }
    
    return head
}




// generate data
let h = Node.init(value: 1)
var current = h
for i in 0..<30 {
    let randomValue = Int(arc4random_uniform(10))
    current.next = Node.init(value: randomValue)
    current = current.next!
}

print(h)
// (1) -> (0) -> (3) -> (0) -> (7) -> (7) -> (5) -> (6) -> (6) -> (1) -> (7) -> (9) -> (6) -> (2) -> (9) -> (8) -> (0) -> (9) -> (6) -> (2) -> (6) -> (6) -> (3) -> (1) -> (8) -> (4) -> (8) -> (2) -> (1) -> (2) -> (9) -> nil
print(removeDups(head: h)!)
// (1) -> (0) -> (5) -> (7) -> (2) -> (4) -> (8) -> (3) -> (6) -> nil
