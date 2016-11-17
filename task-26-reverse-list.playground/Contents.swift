

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

// generate linked list
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
    
    var resultHead = Node.init(val: head!.value)
    var resultCurrent = resultHead
    
    var current = head
    while current != nil {
        
        let newNode = Node.init(val: current!.value)
        
        resultHead = newNode
        resultHead.next = resultCurrent
        resultCurrent = resultHead
        
        current = current!.next
    }
    
    return resultHead
    
    
}

print(reverseList(head: head))
