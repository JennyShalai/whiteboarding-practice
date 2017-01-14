// partition list around given value X
// if value is 50, list: (1) -> (42) -> (50) -> (7) -> (67) -> (93) -> (6) -> (46) -> (63) -> (24) -> (85) -> nil
// partition output is : (1) -> (42) -> (7) -> (6) -> (46) -> (24) -> (50) -> (67) -> (93) -> (63) -> (85) -> nil

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

// generate list
func generateList() -> Node {
    let h = Node.init(value: 1)
    var current = h
    for _ in 0..<10 {
        let randomValue = Int(arc4random_uniform(100))
        current.next = Node.init(value: randomValue)
        current = current.next!
    }
    return h
}


func partitionFor(value: Int, forList: Node?) -> Node? {
    
    if forList == nil {
        return nil
    }
    
    var current = forList
    
    var lessHead = Node.init(value: -100)
    var lessCurrent = lessHead
    
    let moreHead = Node.init(value: -100)
    var moreCurrent = moreHead
    
    while current != nil {
        
        if current!.value < value {
            lessCurrent.next = Node.init(value: current!.value)
            lessCurrent = lessCurrent.next!
        } else {
            moreCurrent.next = Node.init(value: current!.value)
            moreCurrent = moreCurrent.next!
        }
        
        current = current!.next
    }
    
    if lessHead.next == nil {
        return moreHead.next
    }
    
    if moreHead.next == nil {
        return lessHead.next
    }
    
    // merger two sub-lists
    lessHead = lessHead.next!
    lessCurrent.next = moreHead.next!
    
    return lessHead
}

let head = generateList()
print(head)
print(partitionFor(value: 50, forList: head))