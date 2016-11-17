

class Node: CustomStringConvertible {

    var value: Int
    var next: Node?
    var description: String {
        if self.next != nil {
            return "(\(self.value)) -> \(self.next!)"
        } else {
            return "(\(self.value)) -> (nil)"
        }
        
    }
    
    init(val: Int) {
        self.value = val
    }
}

// generate linked list: (1) -> (2) -> (3) -> (4) -> (5) -> (6) -> (7) -> (8) -> (9) -> (nil)
let head = Node.init(val: 1)
var stable = head


for i in 2..<10 {
    let newNode = Node.init(val: i)
    stable.next = newNode
    stable = newNode
}

print(head)

// looping through list

func reverseList(head: Node?) -> Node? {

    if head == nil {
        return nil
    }
    
    if head!.next == nil {
        return head!
    }
    
    var resultHead = Node.init(val: head!.value)
    var resultCurrent = resultHead
    
    var current = head!.next
    while current != nil {
        
        let newNode = Node.init(val: current!.value)
        
        resultHead = newNode
        resultHead.next = resultCurrent
        resultCurrent = resultHead
        
        current = current!.next
    }
    
    return resultHead
    
    
}

print(reverseList(head: head))  // (9) -> (8) -> (7) -> (6) -> (5) -> (4) -> (3) -> (2) -> (1) -> (nil)
