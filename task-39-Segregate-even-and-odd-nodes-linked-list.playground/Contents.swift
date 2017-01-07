// Given a Linked List of integers, write a function to modify the linked list such that all even numbers appear before all the odd numbers in the modified linked list. Also, keep the order of even and odd numbers same.



class Node {
    var value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}




func segregateEvenOddNodes(head: Node?) -> Node? {
    
    if head == nil {
        return head
    }
    
    var currentNode = head
    let headOdd = Node.init(value: 1)
    var currentOdd = headOdd
    var headEven = Node.init(value: 2)
    var currentEven = headEven
    
    // O(n), memory (2n), build two sub-lists
    while currentNode != nil {
        if currentNode!.value % 2 == 0 {
            let newEvenNode = Node.init(value: currentNode!.value)
            currentEven.next = newEvenNode
            currentEven = currentEven.next!
        } else {
            let newOddNode = Node.init(value: currentNode!.value)
            currentOdd.next = newOddNode
            currentOdd = currentOdd.next!
            
        }
        currentNode = currentNode!.next
    }
    
    // join even sub-list with odd sub-list
    if headEven.next != nil {
        headEven = headEven.next!
        currentEven.next = headOdd.next
        return headEven
    } else {
        return headOdd.next
    }
    
}



// printing out list
func printNodes(head: Node?) -> String {
    
    if head == nil {
        return "nil"
    }
    
    var result = ""
    var node = head
    
    while node != nil {
        result += "\(String(node!.value)) "
        node = node?.next
    }
    
    return result
}






let seventeen = Node.init(value: 17)
let fifteen = Node.init(value: 15)
let eight = Node.init(value: 8)
let nine = Node.init(value: 9)
let two = Node.init(value: 2)
let four = Node.init(value: 4)
let six = Node.init(value: 6)
let head = seventeen
head.next = fifteen
fifteen.next = eight
eight.next = nine
nine.next = two
two.next = four
four.next = six


                                                            // input: 17 15 8 9 2 4 6
print(printNodes(head: segregateEvenOddNodes(head: head)))  // output: 8 2 4 6 17 15 9

print(printNodes(head: segregateEvenOddNodes(head: nil)))   // nil



let headOdd = Node.init(value: 3)
headOdd.next = Node.init(value: 1)
                                                                // 3 1
print(printNodes(head: segregateEvenOddNodes(head: headOdd)))   // 3 1


let headEven = Node.init(value: 4)
headEven.next = Node.init(value: 6)
                                                                 // 4 6
print(printNodes(head: segregateEvenOddNodes(head: headEven)))   // 4 6
