// sum two numbers presented as lists


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


func sumLists(list1: Node?, list2: Node?) -> Node? {
    
    if list1 == nil {
        return list2
    }
    
    if list2 == nil {
        return list1
    }
    
    var digitUp: Bool = false
    var current1 = list1
    var current2 = list2
    
    let resultHead = Node.init(value: 0)
    var resultCurrent = resultHead
    
    while current1 != nil || current2 != nil {
        // sum for current two digits
        var sum = 0
        
        // check first number exist
        if current1 != nil {
            sum += current1!.value
            current1 = current1!.next
        }
        
        // check second number exist
        if current2 != nil {
            sum += current2!.value
            current2 = current2!.next
        }
        
        // add overflow digit
        if digitUp {
            sum += 1
        }
        
        // check overflow sum
        digitUp = sum > 9
        
        resultCurrent.next = Node.init(value: sum % 10)
        resultCurrent = resultCurrent.next!
    }
    
    // add overflow digit
    if digitUp {
        resultCurrent.next = Node.init(value: 1)
        digitUp = false
    }
    
    return resultHead.next
    
    
}

let list1 = Node.init(value: 1)
let list2 = Node.init(value: 9)
var current = list2
for _ in 0..<4 {
    current.next = Node.init(value: 9)
    current = current.next!
}

print(list1)        // (1) -> nil
print(list2)        // (9) -> (9) -> (9) -> (9) -> (9) -> nil
print(sumLists(list1: list1, list2: list2))
                    // (0) -> (0) -> (0) -> (0) -> (0) -> (1) -> nil





