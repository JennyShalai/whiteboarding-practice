// check that given list is a palindrome

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
    for _ in 0..<30 {
        let randomValue = Int(arc4random_uniform(10))
        current.next = Node.init(value: randomValue)
        current = current.next!
    }
    return h
}


// O(2n) - memory 2n - make reverse list from given and compare them
func palindrome(listHead: Node?) -> Bool {
    
    var result = true
    var currentList = listHead
    
    var mirrorHead: Node? = nil
    
    // build "mirror" list
    while currentList != nil {
        
        let newNode = Node.init(value: currentList!.value)
        newNode.next = mirrorHead
        mirrorHead = newNode
        currentList = currentList!.next
    }
    
    // return pointer to the beginning of the list
    // and make a pointer for new list
    var currentMirror = mirrorHead
    currentList = listHead
    
    // compare two lists
    while currentList != nil{
        
        if currentMirror!.value != currentList!.value {
            result = false
        }
        
        currentList = currentList!.next
        currentMirror = currentMirror!.next
        
    }
    return result
}

let head = Node.init(value: 1)
head.next = Node.init(value: 3)
head.next!.next = Node.init(value: 1)

print(head)                       // (1) -> (3) -> (1) -> nil
print(palindrome(listHead: head))  // true




