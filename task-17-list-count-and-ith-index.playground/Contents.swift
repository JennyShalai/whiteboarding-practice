
// working with linked list
// 1. how many elements (nodes) in list
// 2. what is Kth element in list

import Foundation


//////////////      list class       ////////////////

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


//////////////      generate list       ////////////////

func generateList() -> Node {
    let h = Node.init(value: 1)
    var current = h
    for _ in 0..<30 {
        let randomValue = Int(arc4random_uniform(10))
        current.next = Node.init(value: randomValue)
        current = current.next!
    }
    return h
}


///////////      1. count elements       /////////////

func countNodes(head: Node?) -> Int {
    
    var current = head
    var counter: Int = 0

    while current != nil {
    
        counter += 1
        current = current!.next
    }
    
    return counter
}

let h1 = generateList()
print(countNodes(head: h1))     // 31
print(countNodes(head: nil))    // 0


///////////      2. return Kth element       ////////////

func node(AtIndex: Int, forList: Node?) -> Node? {

    var current = forList
    
    if AtIndex >= 0 {
    
        for _ in 0..<AtIndex {
            if current == nil {
                return nil
            }
            current = current?.next
        }
    }
    
    return current
}

let h2 = generateList()
print(h2) //(1) -> (8) -> (9) -> (5) -> (9) -> (3) -> (0) -> (6) -> (4) -> (7) -> (4) -> (3) -> (1) -> (4) -> (2) -> (9) -> (7) -> (3) -> (1) -> (8) -> (0) -> (9) -> (7) -> (4) -> (4) -> (9) -> (1) -> (5) -> (9) -> (0) -> (8) -> nil
print(node(AtIndex: 25, forList: h2))                           // (9) -> (1) -> (5) -> (9) -> (0) -> (8) -> nil
print(node(AtIndex: 25, forList: nil))                          // nil




///////////             ////////////
