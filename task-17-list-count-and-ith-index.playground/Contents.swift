
// working with linked list
// 1. count elements (nodes) in list
// 2. K-th element in list
// 3. value at index
// 4. K-th element from the end (single linked list)

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
///////////      1. count elements       ////////////////////////////
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
///////////      2. return Kth element       ////////////////////////
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
///////////      3. value at index       ////////////////////////////
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
///////////      4. K-th element from end      //////////////////////
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
///////////      5.       //////////////////////
/////////////////////////////////////////////////////////////////////






