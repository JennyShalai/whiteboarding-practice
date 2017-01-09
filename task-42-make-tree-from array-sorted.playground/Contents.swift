// make BST from sorted array


class Node {
    var value: Int
    var left: Node?
    var right: Node?
    init(value: Int) {
        self.value = value
    }
}




func treeFromArray(array: [Int]) -> Node? {
    
    if array.count == 0 {
        return nil
    }

    let tree = Node.init(value: array[array.count/2])
    tree.left = treeFromArray(array: Array(array[0..<array.count/2]))
    tree.right = treeFromArray(array: Array(array[array.count/2+1..<array.count]))
    
    return tree
}

