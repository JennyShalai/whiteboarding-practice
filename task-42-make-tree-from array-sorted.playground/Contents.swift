// make BST from sorted array


class Node {
    var value: Int
    var left: Node?
    var right: Node?
    init(value: Int) {
        self.value = value
    }
}



// make BST from sorted array
func treeFromArray(array: [Int]) -> Node? {
    
    if array.count == 0 {
        return nil
    }

    let tree = Node.init(value: array[array.count/2])
    tree.left = treeFromArray(array: Array(array[0..<array.count/2]))
    tree.right = treeFromArray(array: Array(array[array.count/2+1..<array.count]))
    
    return tree
}



// print out tree
func printTree(node: Node?, offset: Int = 0) {
    if let nodeValue = node?.value {
        if offset == 0 {
            print("\(nodeValue)")
        } else {
            print(String.init(repeating: "│ ", count: offset - 1) + "└ " + "\(nodeValue)")
        }
        printTree(node: node?.left, offset: offset+1)
        printTree(node: node?.right, offset: offset+1)
    }
}

let tree = treeFromArray(array: [1,2,3,4,5,6,7,8,9])
printTree(node: tree)

//    5
//    └ 3
//    │ └ 2
//    │ │ └ 1
//    │ └ 4
//    └ 8
//      └ 7
//      │ └ 6
//      └ 9
