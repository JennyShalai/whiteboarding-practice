
// working with linked list
// 1. count elements (nodes) in list
// 2. K-th element in list
// 3. value at index
// 4. K-th element from the end (single linked list)
// 5. partition list around value X
// 6. sum two numbers which are lists 
// 7. palindrom list    (2N)

import Foundation

/////////////////////////////////////////////////////////////////////
//////////////      list class       ////////////////////////////////
/////////////////////////////////////////////////////////////////////

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

/////////////////////////////////////////////////////////////////////
//////////////      generate list       /////////////////////////////
/////////////////////////////////////////////////////////////////////

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

/////////////////////////////////////////////////////////////////////
print("//////////      1. count elements       ////////////////////")
/////////////////////////////////////////////////////////////////////

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

/////////////////////////////////////////////////////////////////////
print("///////////     2. return Kth element       ////////////////")
/////////////////////////////////////////////////////////////////////

func node(atIndex: Int, forList: Node?) -> Node? {

    var current = forList
    
    if atIndex >= 0 {
    
        for _ in 0..<atIndex {
            if current == nil {
                return nil
            }
            current = current?.next
        }
    } else {
        return nil
    }
    
    return current
}

let h2 = generateList()
print(h2) //(1) -> (8) -> (9) -> (5) -> (9) -> (3) -> (0) -> (6) -> (4) -> (7) -> (4) -> (3) -> (1) -> (4) -> (2) -> (9) -> (7) -> (3) -> (1) -> (8) -> (0) -> (9) -> (7) -> (4) -> (4) -> (9) -> (1) -> (5) -> (9) -> (0) -> (8) -> nil
print(node(atIndex: 25, forList: h2))                           // (9) -> (1) -> (5) -> (9) -> (0) -> (8) -> nil
print(node(atIndex: 25, forList: nil))                          // nil



/////////////////////////////////////////////////////////////////////
print("///////////     3. value at index       ////////////////////")
/////////////////////////////////////////////////////////////////////

func value(atIndex: Int, forList: Node?) -> Int {
    
    var current = forList
    
    if atIndex >= 0 {
        for _ in 0..<atIndex {
            if current == nil {
                return -1
            }
            current = current?.next
        }
    } else {
        return -1
    }
    
    return current!.value
}

let h3 = generateList()
print(h3) // (1) -> (8) -> (7) -> (2) -> (5) -> (9) -> (7) -> (4) -> (7) -> (8) -> (7) -> (0) -> (5) -> (3) -> (3) -> (5) -> (2) -> (9) -> (8) -> (7) -> (0) -> (5) -> (6) -> (6) -> (7) -> (4) -> (9) -> (8) -> (0) -> (3) -> (4) -> nil
print(value(atIndex: 10, forList: h3))  // 7
print(value(atIndex: 10, forList: nil)) // -1
print(value(atIndex: 40, forList: h3))  // -1
print(value(atIndex: -2, forList: h3))  // -1

/////////////////////////////////////////////////////////////////////
print("///////////      4. K-th element from end      /////////////")
/////////////////////////////////////////////////////////////////////

func fromEnd(offset: Int, forList: Node?) -> Node? {
    
    var current = forList
    var result = forList
    
    if offset < 0 {
        return nil
    }
    
    for _ in 0..<offset {
        if current == nil {
            return nil
        }
        current = current!.next
    }
    
    
    while current?.next != nil {
        current = current!.next
        result = result!.next
    }
    
    
    return result
}

let h4 = generateList() // (1) -> (3) -> (8) -> (3) -> (3) -> (6) -> (5) -> (9) -> (6) -> (9) -> (1) -> (8) -> (0) -> (7) -> (4) -> (6) -> (9) -> (7) -> (4) -> (3) -> (2) -> (5) -> (1) -> (1) -> (1) -> (7) -> (5) -> (4) -> (5) -> (1) -> (7) -> nil
print(h4)
print(fromEnd(offset: 0, forList: h4))  // (7) -> nil


/////////////////////////////////////////////////////////////////////
print("////////      5. partition list around value X      ////////")
/////////////////////////////////////////////////////////////////////

func partitionFor(value: Int, forList: Node?) -> Node? {
    
    if forList == nil {
        return nil
    }
    
    var current = forList
    
    var lessHead = Node.init(value: 0)
    var lessCurrent = lessHead
    
    let moreHead = Node.init(value: 0)
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

let h5 = generateList()
print(h5)
print(partitionFor(value: 15, forList: h5))


/////////////////////////////////////////////////////////////////////
print("////////      6. sum two numbers which are lists      //////")
/////////////////////////////////////////////////////////////////////


func sumLists(list1: Node?, list2: Node?) -> Node? {

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

print(list1)                                // (1) -> nil
print(list2)                                // (9) -> (9) -> (9) -> (9) -> (9) -> nil
print(sumLists(list1: list1, list2: list2)) // (0) -> (0) -> (0) -> (0) -> (0) -> (1) -> nil


/////////////////////////////////////////////////////////////////////
print("///////////      7. palindrom list    (2N)    //////////////")
/////////////////////////////////////////////////////////////////////

func palindrom(listHead: Node?) -> Bool {

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

let h6 = Node.init(value: 1)
h6.next = Node.init(value: 3)
h6.next!.next = Node.init(value: 1)
print(h6)                       // (1) -> (3) -> (1) -> nil
print(palindrom(listHead: h6))  // true




